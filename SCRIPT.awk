# SCRIPT.awk -- awk script to generate SCRIPT.tab
# Copyright (C) 2007
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
  tohex["0"] = 1;
  tohex["1"] = 2;
  tohex["2"] = 3;
  tohex["3"] = 4;
  tohex["4"] = 5;
  tohex["5"] = 6;
  tohex["6"] = 7;
  tohex["7"] = 8;
  tohex["8"] = 9;
  tohex["9"] = 10;
  tohex["A"] = 11;
  tohex["B"] = 12;
  tohex["C"] = 13;
  tohex["D"] = 14;
  tohex["E"] = 15;
  tohex["F"] = 16;
  tohex["a"] = 11;
  tohex["b"] = 12;
  tohex["c"] = 13;
  tohex["d"] = 14;
  tohex["e"] = 15;
  tohex["f"] = 16;

  FS = "[ \t]*[;#][ \t]*";
  initialized = 0;
  charcount = 0;
  range_index = 0;
}

function decode_hex(str, idx) {
    n = 0;
    len = length(str);
    for (i = idx; i <= len; i++) {
	c = tohex[substr(str, i, 1)];
	if (c == 0)
	    break;
	n = n * 16 + c - 1;
    }
    return n;
}

function initialize() {
    first = -1;
    while (getline line < "UNIDATA/UnicodeData.txt" > 0) {
	if (line ~ /^[0-9A-F][0-9A-F]*/) {
	    last = decode_hex(line, 1);
	    if (first >= 0) {
		range[range_index++] = first;
		range[range_index++] = last;
		first = -1;
	    } else if (line ~ /First>/) {
		first = last;
	    } else {
		exists[last] = 1;
	    }
	}
    }
}

function char_exist_p(c) {
    if (exists[c] == 1)
	return 1;
    for (i = 0; i < range_index; i += 2)
	if (range[i] >= c && range[i + 1] <= c)
	    return 1;
    return 0;
}

function maybe_emit(ch1, ch2, this_script) {
    if (initialized == 0) {
	initialize();
	initialized = 1;
	print "# Ranges may contain non-existing character codes.";
	print "0x0-0x3FFFFF common";
	first = ch1;
	last = ch2;
	script = this_script;
    } else {
	if (script == this_script) {
	    for (j = last + 1; j < ch1; j++)
		if (char_exist_p(j))
		    break;
	    if (j == ch1) {
		last = ch2;
		return;
	    }
	}
	if (script != "Common") {
	    if (first == last)
		printf "0x%04X %s\n", first, tolower(script);
	    else
		printf "0x%04X-0x%04X %s\n", first, last, tolower(script);
	}
	first = ch1;
	last = ch2;
	script = this_script;
    }
}

/^[0-9A-F]+\.\./ {
    maybe_emit(decode_hex($0, 1), decode_hex($0, match($0, "\\.\\.") + 2), $2);
    next;
}

/^[0-9A-F]/ {
    ch = decode_hex($0, 1);
    maybe_emit(ch, ch, $2);
    next;
}

END {
    if (script != "Common") {
	if (first == last)
	    printf "0x%04X %s\n", first, tolower (script);
	else
	    printf "0x%04X-0x%04X %s\n", first, last, tolower (script);
    }
    while (getline < "SCRIPT.ext" > 0) {
	if ($0 ~ /^[0-9A-F][0-9A-F]*/) {
	    print;
	}
    }

}
