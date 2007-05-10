# LANGUAGE.awk -- awk script to generate LANGUAGE.tbl
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
    print ";; ENGLISH-NAME: English name of the language.  The first name listed";
    print ";;   in ISO639-2 with the following modifications:";
    print ";;	'Greek, Modern (1453-)' is changed to 'Greek'";
    print ";;	Tailing ' (Other)' is deleted.";
    print ";;	Tailing ' languages' is deleted.";
    print ";;	Tailing part specifying the date (e.g. ' (ca.450-1100)') is deleted.";
    print ";;	Reorder, for instance, 'English, Old' to 'Old English'.";
    while (getline < "LANGDATA/native.txt") {
	if ($0 ~ /^[a-z]/) {
	    NATIVE[$1] = $2;
	    if ($3 != "")
		CHARS[$1] = $3;
	} else if ($0 ~ /^;;/) {
	    print;
	}
    }
}

/^[a-z][a-z][a-z]\|/ {
    native = NATIVE[$1];
    chars = CHARS[$1];
    two_letter = $3;
    if (two_letter == "" || two_letter == "NULL")
	two_letter = "nil";
    name = $4;
    if (name == "Greek, Modern (1453-)")
	name = "Greek";
    else {
	gsub("; .*", "", name);
	gsub(" \(Other\)$", "", name);
	gsub(" languages$", "", name);
	if (name ~ /\(.*[0-9].*\)$/)
	    gsub(" \([^)]*\)$", "", name);
	if (name ~ ", ") {
	    split(name,array,", ");
	    name = array[2] " " array[1];
	}
    }
    printf "(%s %-3s \"%s\"", $1, two_letter, name;
    if (native != "")
	printf " \"%s\"", native;
    else if (chars != "")
	printf " nil";
    if (chars != "")
	printf " \"%s\"", chars;
    printf ")\n";
}
