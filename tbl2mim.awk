#!/usr/bin/gawk -f
# Copyright (C) 2006
#   National Institute of Advanced Industrial Science and Technology (AIST)
#   Registration Number H15PRO112

# This file is part of the m17n contrib; a sub-part of the m17n
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
    begin_table = 0;
}

/^ICON *=/ { ICON = " \""$3"\""; next; }
/^NAME *=/ { NAME = tolower($3); next; }
/^LANGUAGES *=/ {
    LANG = $3;
    if (LANG == "other")
	LANG = "t";
    next; }
/^STATUS_PROMPT *=/ { TITLE = $3; next; }
/^BEGIN_TABLE/ {
    printf "(input-method %s %s)\n", LANG, NAME;
    printf "(title \"%s\"%s)\n", TITLE, ICON;
    printf "(map\n (trans";
    begin_table = 1;
    next;
}
/^END_TABLE/ {
    begin_table = 0;
    printf "))\n(state (init (trans)))\n";
    next;
}

{
    if (begin_table) {
	gsub("[\\\\\"]", "\\\\&");
	printf "\n  (\"%s\" \"%s\")", $1, $2;
    }
}
