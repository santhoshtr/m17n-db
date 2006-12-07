# Copyright (C) 2003, 2004
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

BEGIN {
  FS=";"
  from = to = -1;
}

{
  if (from < 0)
    {
      if (FIELD ~ "CATEGORY")
	COLUMN = 3;
      else if (FIELD ~ "COMBINE")
	COLUMN = 4;
      else
	COLUMN = 5;
      from = $1;
      val = $COLUMN;
    }
  else if ($COLUMN != val)
    {
      if (from"" == to"")
	print "0x"from, val;
      else
	print "0x"from"-0x"to, val;
      from = $1;
      val = $COLUMN;
    }
  to = $1;
}

END {
  if (from >= 0)
    {
      if (from"" == to"")
	print "0x"from, val;
      else
	print "0x"from"-0x"to, val;
    }
}
