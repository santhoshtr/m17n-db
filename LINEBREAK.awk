# LINEBREAK.awk -- awk script to produce a compact linebreak property map
# Copyright (C) 2005
#   National Institute of Advanced Industrial Science and Technology (AIST)
#   Registration Number H15PRO112

# This file is part of the m17n database; a sub-part of the m17n
# library.

# The m17n library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public License
# as published by the Free Software Foundation; either version 2.1 of
# the License, or (at your option) any later version.

# The m17n library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public
# License along with the m17n library; if not, write to the Free
# Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301, USA.

function setLBC(name, code) {
  if (code % 10 == 0)
    printf "\n# %2d:%s", code, name;
  else
    printf "  %2d:%s", code, name;
  to_lbc[name] = code;
}

BEGIN {
  FS = "[; ]";
  from = "";
  to = "";
  prev_lbc = -1;
  i = 0;
  printf "# Code:LineBreakingClass";
  # Assign a uniq integer code to each line breaking class.
  # The codes must be the same as "enum LineBreakingClass" of
  # m17n-lib/src/linebreak.c
  setLBC("OP", i++);		# open
  setLBC("CL", i++);		# close
  setLBC("QU", i++);		# quotation
  setLBC("GL", i++);		# glue
  setLBC("NS", i++);		# no-start
  setLBC("EX", i++);		# exclamation/interrogation
  setLBC("SY", i++);		# Syntax (slash)
  setLBC("IS", i++);		# infix (numeric) separator
  setLBC("PR", i++);		# prefix
  setLBC("PO", i++);		# postfix
  setLBC("NU", i++);		# numeric
  setLBC("AL", i++);		# alphabetic
  setLBC("ID", i++);		# ideograph (atomic)
  setLBC("IN", i++);		# inseparable
  setLBC("HY", i++);		# hyphen
  setLBC("BA", i++);		# break after
  setLBC("BB", i++);		# break before
  setLBC("B2", i++);		# break both
  setLBC("ZW", i++);		# ZW space
  setLBC("CM", i++);		# combining mark
  setLBC("WJ", i++);		# word joiner

  # For UAX#14 7.6 Korean Syllable Block Pair Table.
  setLBC("H2", i++);		# Hamgul 2 Jamo Syllable
  setLBC("H3", i++);		# Hangul 3 Jamo Syllable
  setLBC("JL", i++);		# Jamo leading consonant
  setLBC("JV", i++);		# Jamo vowel
  setLBC("JT", i++);		# Jamo trailing consonant

  # Not handled in the pair table.
  setLBC("SA", i++);		# south (east) asian
  setLBC("SP", i++);		# space
  setLBC("PS", i++);		# paragraph and line separators
  setLBC("BK", i++);		# hard break (newline)
  setLBC("CR", i++);		# carriage return
  setLBC("LF", i++);		# line feed
  setLBC("NL", i++);		# next line
  setLBC("CB", i++);		# contingent break opportunity
  setLBC("SG", i++);		# surrogate
  setLBC("AI", i++);		# ambiguous
  setLBC("XX", i);		# unknown
  
  # The default is "XX".
  printf "\n0x0000-0x3FFFFF %d\n", i;
}

/^[0-9A-Za-z]*;/ {
  lbc = to_lbc[$2];
  if (prev_lbc != lbc)
    {
      if (prev_lbc != -1)
	{
	  if (from == to)
	    printf "%s %d\n", from, prev_lbc;
	  else
	    printf "%s-%s %d\n", from, to, prev_lbc;
	}
      from = "0x" $1;
      to = "0x" $1;
      prev_lbc = lbc;
    }
  else
    to = "0x" $1;
  next;
}

/^[0-9A-Za-z]*\.\.[0-9A-Za-z]*;/ {
  lbc = to_lbc[$2];
  if (prev_lbc != -1)
    {
      if (from == to)
	printf "%s %d\n", from, prev_lbc;
      else
	printf "%s-%s %d\n", from, to, prev_lbc;
    }
  gsub("\\.\\.", "-0x");
  printf "0x%s %d\n", $1, lbc;
  from = "";
  to = "";
  prev_lbc = -1;
  next;
}

END {
  if (prev_lbc != -1)
    {
      if (from == to)
	printf "0x%s %d\n", from, prev_lbc;
      else
	printf "0x%s-0x%s %d\n", from, to, prev_lbc;
    }
}
