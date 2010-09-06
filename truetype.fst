;; truetype.fst -- Fontset using only TrueType fonts
;; Copyright (C) 2003, 2004, 2005, 2006, 2010  AIST (H15PRO112)

;;; <li> truetype.fst
;;;
;;; Fontset using only freely available TrueType fonts.  See the
;;; documentation of the fontset "default" for the information about
;;; each font.

(hebrew
 (nil
  ((nil ezra\ sil unicode-bmp) hebr-otf)
  ((nil nil unicode-bmp :otf=hebr+mark) hebr-otf)))
(arabic
 (nil
  ((nil scheherazade unicode-bmp) arab-otf)
  ((nil nil unicode-bmp :otf=arab) arab-otf)
  ((nil bitstream\ cyberbase unicode-bmp) arab)))
(syriac
 (nil
  ((nil estrangelo\ talada unicode-bmp) syrc-otf)
  ((nil serto\ jerusalem unicode-bmp) syrc-otf)
  ((nil east\ syriac adiabene unicode-bmp) syrc-otf)
  ((nil nil unicode-bmp :otf=syrc) syrc-otf)))
(thaana
 (nil
  ((nil thaana\ unicode\ akeh unicode-bmp) thaa-otf)
  ((nil nil unicode-bmp :otf=thaa) thaa-otf)))
(devanagari
 (nil
  ((nil gargi unicode-bmp) deva-otf)
  ((nil lohit\ hind unicode-bmp) deva-otf)
  ((nil nil unicode-bmp :otf=dev2) dev2-otf)
  ((nil nil unicode-bmp :otf=deva) deva-otf)
  ((nil dv-ttyogesh apple-roman) deva-cdac)))
(bengali
 (nil
  ((nil lohit\ bengali unicode-bmp) beng-otf)
  ((nil mukti\ narrow unicode-bmp) beng-otf)
  ((nil nil unicode-bmp :otf=bng2) bng2-otf)
  ((nil nil unicode-bmp :otf=beng) beng-otf)))
(gurmukhi
 (nil
  ((nil lohit\ punjabi unicode-bmp) guru-otf)
  ((nil saab unicode-bmp) guru-otf)
  ((nil nil unicode-bmp :otf=gur2) gur2-otf)
  ((nil nil unicode-bmp :otf=guru) guru-otf)))
(gujarati
 (nil
  ((nil lohit\ gujarati unicode-bmp) gujr-otf)
  ((nil rekha unicode-bmp) gujr-otf)
  ((nil nil unicode-bmp :otf=gjr2) gjr2-otf)
  ((nil nil unicode-bmp :otf=gujr) gujr-otf)))
(oriya
 (nil
  ((nil utkal unicode-bmp) orya-otf)
  ((nil nil unicode-bmp :otf=ory2) ory2-otf)
  ((nil nil unicode-bmp :otf=orya) orya-otf)))
(tamil
 (nil
  ((nil lohit\ tamil apple-roman) taml-cdac)
  ((nil nil unicode-bmp :otf=tml2) tml2-otf)
  ((nil nil unicode-bmp :otf=taml) taml-otf)))
(telugu
 (nil
  ((nil pothana2000 unicode-bmp) telu-otf)
  ((nil venama unicode-bmp) telu-otf)
  ((nil nil unicode-bmp :otf=tel2) tel2-otf)
  ((nil nil unicode-bmp :otf=telu) telu-otf)))
(kannada
 (nil
  ((nil kedage unicode-bmp) knda-otf)
  ((nil mallige unicode-bmp) knda-otf)
  ((nil nil unicode-bmp :otf=knd2) knd2-otf)
  ((nil nil unicode-bmp :otf=knda) knda-otf)))
(malayalam
 (nil
  ((nil meera unicode-bmp) mlym-otf)
  ((nil rachana unicode-bmp) mlym-otf)
  ((nil nil unicode-bmp :otf=mlm2) mlm2-otf)
  ((nil nil unicode-bmp :otf=mlym) mlym-otf)))
(sinhala
 (nil
  ((nil lklug unicode-bmp) sinh-otf)
  ((nil nil unicode-bmp :otf=sinh) sinh-otf)))
(tibetan
 (nil
  ((nil tibetan\ machine\ uni unicode-bmp) tibt-otf)
  ((nil nil unicode-bmp :otf=tibt) tibt-otf)
  ((nil mtib unicode-bmp) tibt-mtib)))
(thai
 (nil
  ((nil norasi unicode-bmp) thai-norasi)
  ((nil nil unicode-bmp :otf=thai) thai-otf)))
(lao
 (nil
  ((nil phetsarath\ ot unicode-bmp) laoo-otf)
  ((nil nil unicode-bmp :otf=laoo) laoo-otf)
  ((nil alice0\ lao apple-roman) laoo-alice)))
(myanmar
 (nil
  ((nil padauk unicode-bmp) mymr-sil)
  ((nil myazedi_m17n unicode-bmp) mymr-myazedi)))
(khmer
 (nil
  ((nil khmer\ os unicode-bmp) khmr-otf)
  ((nil nil unicode-bmp :otf=khmr) khmr-otf)
  ((nil anlongvill\ khek apple-roman) khmr-anlong)))
(han
 (ja
  ((nil kochi\ gothic unicode-bmp)))
 (zh
  ((nil ar\ pl\ sungtil\ gb unicode-bmp))
  ((nil ar\ pl\ mingti2l\ big5 unicode-bmp)))
 (ko
  ((nil baekmuk\ dotum unicode-bmp))))
(hiragana
 (nil
  ((nil kochi\ gothic unicode-bmp))
  ))
(katakana
 (nil
  ((nil kochi\ gothic unicode-bmp))
  ))
(hangul
 (nil
  ((nil baekmuk\ dotum unicode-bmp))))
(ethiopic
 (nil
  ((nil abyssinica\ sil unicode-bmp))))
(cham
 (nil
  ((nil nil unicode-bmp :script=cham) cham-generic)))
(nil
 ((nil dejavu\ sans unicode-bmp)))

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
