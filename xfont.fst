;; xfont.fst -- Fontset using only X fonts
;; Copyright (C) 2003, 2004, 2006, 2010  AIST (H15PRO112)
;; See the end for copying conditions.

;; The file format is this:
;;	(SCRIPT (LANGAUGE (FONT-SPEC-LIST [LAYOUTER]) ...) ...) ...
;;	(CHARSET (FONT-SPEC-LIST [LAYOUTER]) ...) ...
;;	(nil (FONT-SPEC-LIST [LAYOUTER]) ...) ...
;; See FORMAT/Fontset.txt for the detail.

;;; <li> xfont.fst
;;;
;;; Fontset using only X fonts.

(latin
 (vi
  ((viscii1.1-1)))
 (nil
  ((iso8859-1))
  ((iso8859-2))
  ((iso8859-15))
  ((iso10646-1))
  ((iso8859-3))
  ((iso8859-4))
  ((iso8859-5))
  ((iso8859-9))
  ((iso8859-10))
  ((iso8859-13))
  ((iso8859-14))))
(greek
 (nil
  ((iso8859-7))))
(cyrillic
 (nil
  ((iso8859-5))
  ((microsoft-cp1251))))
(hebrew
 (nil
  ((iso8859-8))))
(arabic
 (nil
  ((iso10646-1) arabic)))
(thai
 (nil
  ((tis620.2529-1) thai-tis620)
  ((tis620.2533-0) thai-tis620)
  ((iso8859-11))))
(han
 (zh
  ((gb2312.1980-0))
  ((big5.eten-0))
  ((big5-1))
  ((gbk-0)))
 (ja
  ((jisx0208.1983-0))
  ((jisx0212.1990-0)))
 (ko
  ((ksc5601.1987-0))))
(hiragana
 (nil
  ((jisx0208.1983-0))
  ((gb2312.1980-0))
  ((ksc5601.1987-0))))
(katakana
 (nil
  ((jisx0208.1983-0))
  ((jisx0201.1976-0))
  ((gb2312.1980-0))
  ((ksc5601.1987-0))))
(hangul
 (nil
  ((ksc5601.1987-0))))
(nil
 ((iso10646-1)))

;; Copyright (C) 2003, 2004, 2007, 2010
;;   National Institute of Advanced Industrial Science and Technology (AIST)
;;   Registration Number H15PRO112

;; This file is part of the m17n database; a sub-part of the m17n
;; library.

;; The m17n library is free software; you can redistribute it and/or
;; modify it under the terms of the GNU Lesser General Public License
;; as published by the Free Software Foundation; either version 2.1 of
;; the License, or (at your option) any later version.

;; The m17n library is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; Lesser General Public License for more details.

;; You should have received a copy of the GNU Lesser General Public
;; License along with the m17n library; if not, write to the Free
;; Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;; Local Variables:
;; mode: lisp
;; End:
