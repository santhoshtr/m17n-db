# LANGNAME.awk -- awk script to generate LANGNAME.en and LANGNAME.fr
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
    if (LANG == "en") {
	Language = "English";
	LANGUAGE = "ENGLISH";
    } else {
	Language = "French";
	LANGUAGE = "FRENCH";
    }
    printf ";; LANGNAME.%s -- %s language names	-*- mode:lisp; coding:utf-8; -*-\n", LANG, Language;
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
    print ";; Each line of this file has this form:";
    printf ";;    (ISO639-2 \"%s-NAME\" ...)\n", LANGUAGE;
    print ";; ISO639-2: 3-letter language code of ISO639-2.";
    printf ";; %s-NAME: %s name of the language\n", LANGUAGE, Language;
    print ";;    in ISO639-2 with the following modifications:";
    if (LANG == "en") {
	print ";;	'Greek, Modern (1453-)' is changed to 'Greek'";
	print ";;	Tailing ' (Other)' is deleted.";
	print ";;	Tailing ' languages' is deleted.";
	print ";;	Tailing part specifying the date (e.g. ' (ca.450-1100)') is deleted.";
	print ";;	Reorder, for instance, 'English, Old' to 'Old English'.";
    } else {
	print ";;	'grec moderne (après 1453)' is changed to 'grec'";
	print ";;	Tailing ', autres langues' is deleted.";
	print ";;	Tailing ', autres' is deleted.";
	print ";;	Tailing ', langues' is deleted.";
	print ";; 	Tailing ', langues (famille)' is deleted.";
	print ";;	Tailing part specifying the date (e.g. ' (ca.450-1100)') is deleted.";
	print ";;	Reorder, for instance, 'saxon, bas' to 'bas saxon'.";
    }
    print ";;	Delete duplicated names after the above modifications.";
    print "";
}

{
    iso = $1;
    for (idx in names) delete names[idx];
    if (LANG == "en") {
	split($4, array, "; ");
	for (idx in array) {
	    name = array[idx]
	    if (name == "Greek, Modern (1453-)")
		name = "Greek";
	    else {
		gsub(" \(Other\)$", "", name);
		gsub(" languages$", "", name);
		if (name ~ /\(.*[0-9].*\)$/)
		    gsub(" \([^)]*\)$", "", name);
		if (name ~ ", ") {
		    split(name,array2,", ");
		    name = array2[2] " " array2[1];
		}
	    }
	    names[name] = 1;
	}
    } else {
	split($5, array, "; ");
	for (idx in array) {
	    name = array[idx]
	    if (name == "grec ancien (jusqu'à 1453)")
		name = "grec";
	    else {
		gsub(", autres langues$", "", name);
		gsub(", autres$", "", name);
		gsub(", langues$", "", name);
		gsub(", langues (famille)$", "", name);
		if (name ~ /\(.*[0-9].*\)$/)
		    gsub(" \([^)]*\)$", "", name);
		if (name ~ ", ") {
		    split(name,array2,", ");
		    name = array2[2] " " array2[1];
		}
	    }
	    names[name] = 1;
	}
    }
    printf "(%s", $1;
    for (name in names) {
	printf " \"%s\"", name;
    }
    printf ")\n";
}

# Local Variables:
# coding: utf-8
# End:
