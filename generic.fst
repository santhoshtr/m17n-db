;; generic.fst -- Fontset mainly using generic font specs.
;; Copyright (C) 2005, 2006, 2007, 2010  AIST (H15PRO112)
;; See the end for copying conditions.

;;; <li> generic.fst
;;;
;;; Fontset mainly using generic font specifications.  See the
;;; documentation of the fontset "default" for the information about
;;; each font.

(latin
 (vi
  ((nil nil unicode-bmp :lang=vi)))
 (nil
  ((nil nil unicode-bmp :script=latin))))
(hebrew
 (nil
  ((nil nil unicode-bmp :otf=hebr) hebr-otf)
  ((nil nil unicode-bmp :script=hebrew))))
(arabic
 (nil
  ((nil nil unicode-bmp :otf=arab=init,medi,fina,liga+mark) arab-otf)
  ((nil nil unicode-bmp :otf=arab=init,medi,fina,liga+~mark) arab-otf-no-gpos)
  ((nil nil unicode-bmp :script=arabic) arab)))
(syriac
 (nil
  ((nil nil unicode-bmp :otf=syrc) syrc-otf)))
(thaana
 (nil
  ((nil nil unicode-bmp :otf=thaa) thaa-otf)
  ((nil nil unicode-bmp :script=thaana))))
(devanagari
 (nil
  ((nil nil unicode-bmp :otf=dev2) dev2-otf)
  ((nil nil unicode-bmp :otf=deva) deva-otf)))
(bengali
 (nil
  ((nil nil unicode-bmp :otf=bng2) bng2-otf)
  ((nil nil unicode-bmp :otf=beng) beng-otf)))
(gurmukhi
 (nil
  ((nil nil unicode-bmp :otf=gur2) gur2-otf)
  ((nil nil unicode-bmp :otf=guru) guru-otf)))
(gujarati
 (nil
  ((nil nil unicode-bmp :otf=gjr2) gjr2-otf)
  ((nil nil unicode-bmp :otf=gujr) gujr-otf)))
(oriya
 (nil
  ((nil nil unicode-bmp :otf=ory2) ory2-otf)
  ((nil nil unicode-bmp :otf=orya) orya-otf)))
(tamil
 (nil
  ((nil nil unicode-bmp :otf=tml2) tml2-otf)
  ((nil nil unicode-bmp :otf=taml) taml-otf)))
(telugu
 (nil
  ((nil nil unicode-bmp :otf=tel2) tel2-otf)
  ((nil nil unicode-bmp :otf=telu) telu-otf)))
(kannada
 (nil
  ((nil nil unicode-bmp :otf=knd2) knd2-otf)
  ((nil nil unicode-bmp :otf=knda) knda-otf)))
(malayalam
 (nil
  ((nil nil unicode-bmp :otf=mlm2) mlm2-otf)
  ((nil nil unicode-bmp :otf=mlym) mlym-otf)))
(sinhala
 (nil
  ((nil nil unicode-bmp :otf=sinh) sinh-otf)))
(tibetan
 (nil
  ((nil nil unicode-bmp :otf=tibt) tibt-otf)))
(thai
 (nil
  ((nil nil unicode-bmp :otf=thai) thai-otf)
  ((nil nil unicode-bmp :script=thai) thai-generic)))
(lao
 (nil
  ((nil nil unicode-bmp :otf=laoo) laoo-otf)
  ((nil nil unicode-bmp :script=lao) laoo-generic)))
(myanmar
 (nil
  ((nil padauk unicode-bmp) mymr-sil)))
(khmer
 (nil
  ((nil nil unicode-bmp :otf=khmr) khmr-otf)))
(han
 (zh
  ((nil nil unicode-bmp :lang=zh)))
 (ja
  ((nil nil unicode-bmp :lang=ja)))
 (ko
  ((nil nil unicode-bmp :lang=ko))))
(hiragana
 (nil
  ((nil nil unicode-bmp :lang=ja))))
(katakana
 (nil
  ((nil nil unicode-bmp :lang=ja))))
(hangul
 (nil
  ((nil nil unicode-bmp :lang=ko))))
(cham
 (nil
  ((nil nil unicode-bmp :script=cham) cham-generic)))
(nil
 ((nil nil unicode-bmp)))

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
