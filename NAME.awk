BEGIN {
  FS = ";";
  from = -1;
  name = "";
}

# For these lines:
#   3400;<CJK Ideograph Extension A, First>;Lo;0;L;;;;;N;;;;;
#   4DB5;<CJK Ideograph Extension A, Last>;Lo;0;L;;;;;N;;;;;
/, First>/ {
  from = $1; 
  split ($2, a, "[<,]");
  getline;
  print "0x"from"-0x"$1, a[2];
  from = -1;
  next;
}

# For succeeding same names.
/CJK COMPATIBILITY IDEOGRAPH|<control>/ {
  if (from < 0)
    {
      from = $1;
      if ($2 ~ "CJK")
	name = "CJK COMPATIBILITY IDEOGRAPH";
      else
	name = "control";
    }
  to = $1;
  next;
}

# For normal names.
{
  if (from >= 0)
    {
      print "0x"from"-0x"to, name;
      from = -1;
    }
  print "0x"$1, $2;
}

END {
  if (from >= 0)
    print "0x"from"-0x"to, name;
}
