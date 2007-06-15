# LANGUAGE.awk -- awk script to generate LANGUAGE.tbl	-*- coding: utf-8; -*-
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
    print ";; LANGUAGE.tbl -- ISO639 Language Code		-*- mode:lisp; coding:utf-8; -*-";
    print ";; Copyright (C) 2007";
    print ";;   National Institute of Advanced Industrial Science and Technology (AIST)";
    print ";;   Registration Number H15PRO112";
    print "";
    print ";; This file is part of the m17n database; a sub-part of the m17n";
    print ";; library.";
    print "";
    print ";; The m17n library is free software; you can redistribute it and/or";
    print ";; modify it under the terms of the GNU Lesser General Public License";
    print ";; as published by the Free Software Foundation; either version 2.1 of";
    print ";; the License, or (at your option) any later version.";
    print "";
    print ";; The m17n library is distributed in the hope that it will be useful,";
    print ";; but WITHOUT ANY WARRANTY; without even the implied warranty of";
    print ";; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU";
    print ";; Lesser General Public License for more details.";
    print "";
    print ";; You should have received a copy of the GNU Lesser General Public";
    print ";; License along with the m17n library; if not, write to the Free";
    print ";; Software Foundation, Inc., 51 Franklin Street, Fifth Floor,";
    print ";; Boston, MA 02110-1301, USA.";
    print ";;";
    print ";; The file format is this:";
    print ";;    (ISO639-2 ISO639-1 \"ENGLISH-NAME\" [ \"NATIVE-NAME\" [ \"EXTRA-CHARS\" ]]) ...";
    print ";; ISO639-2: 3-letter language code of ISO639-2.";
    print ";; ISO639-1: 2-letter language code of ISO639-1, or nil if it doesn't exist.";
    print ";; ENGLISH-NAME: English name of the language.";
    print ";; NATIVE-NAME: Native name of the language.";
    print ";; EXTRA-CHARS: Extra characters that uniquifies the language.";
    print ";;";
    print ";; ISO639-2 and ISO639-1 are extracted from ISO-639-2.txt.";
    print ";; ENGLISH-NAME and NATIVE-NAME are mainly extracted from CLDR,";
    print ";;   but are also supplemented from these sites:";

    while (getline < "native.txt") {
	if ($0 ~ /^[a-z]/) {
	    NATIVE[$1] = $2;
	    if ($3 != "")
		CHARS[$1] = $3;
	} else if ($0 ~ /^;;/) {
	    print;
	}
    }
    while (getline < "native.ext") {
	if ($0 ~ /^[a-z]/) {
	    NATIVE[$1] = $2;
	}
    }
    while (getline < "en.lnm") {
	split($0, array, "[( ]");
	code = array[2];
	split($0, array, "\"");
	ENGLISH[code] = array[2];
    }
}

/^[a-z][a-z][a-z]\|/ {
    code3 = $1;
    code2 = $3;
    if (code2 == "" || code2 == "NULL")
	code2 = "nil";
    native = NATIVE[code2];
    if (! native)
	native = NATIVE[code3];
    chars = CHARS[code3];
    name = $4;
    name = ENGLISH[code2];
    if (! name)
	name = ENGLISH[code3];
#     if (name == "Greek, Modern (1453-)")
# 	name = "Greek";
#     else {
# 	gsub("; .*", "", name);
# 	gsub(" \\(Other\\)$", "", name);
# 	gsub(" languages$", "", name);
# 	gsub(" Languages$", "", name);
# 	if (name ~ /\(.*[0-9].*\)$/)
# 	    gsub(" \\([^)]*\\)$", "", name);
# 	if (name ~ ", ") {
# 	    split(name, array, ", ");
# 	    name = array[2] " " array[1];
# 	}
#     }
    printf "(%s %-3s \"%s\"", code3, code2, name;
    if (native != "")
	printf " \"%s\"", native;
    else if (chars != "")
	printf " nil";
    if (chars != "")
	printf " \"%s\"", chars;
    printf ")\n";
}
