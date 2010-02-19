;; generic.fst -- Fontset mainly using generic font specs.  -*- lisp -*-
;; Copyright (C) 2005, 2006, 2007
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

;;; <li> generic.fst
;;;
;;; Fontset mainly using generic font specifications.  See the
;;; documentation of the fontset "default" for the information about
;;; each font.

(latin
 (vi
  ((nil nil unicode-bmp :lang=vi)))
 (nil
  ((nil nil unicode-bmp :lang=en))))
(hebrew
 (nil
  ((nil freesans unicode-bmp) hebr)
  ((nil nil unicode-bmp :lang=he,yi))))
(arabic
 (nil
  ((nil nil unicode-bmp :otf=arab=init,medi,fina,liga+mark) arab-otf)
  ((nil nil unicode-bmp :otf=arab=init,medi,fina,liga+~mark) arab-otf-no-gpos)
  ((nil bitstream\ cyberbase unicode-bmp) arab)))
(syriac
 (nil
  ((nil nil unicode-bmp :otf=syrc) syrc-otf)))
(thaana
 (nil
  ((nil nil unicode-bmp :otf=thaa) thaa-otf)
  ((nil thaana\ unicode\ akeh unicode-bmp) thaa-otf)))
(devanagari
 (nil
  ((nil nil unicode-bmp :otf=dev2) dev2-otf)
  ((nil nil unicode-bmp :otf=deva=rphf) deva-otf)))
(bengali
 (nil
  ((nil nil unicode-bmp :otf=bng2) bng2-otf)
  ((nil nil unicode-bmp :otf=beng=rphf) beng-otf)))
(gurmukhi
 (nil
  ((nil nil unicode-bmp :otf=gur2) gur2-otf)
  ((nil nil unicode-bmp :otf=guru=blwf) guru-otf)))
(gujarati
 (nil
  ((nil nil unicode-bmp :otf=gjr2) gjr2-otf)
  ((nil nil unicode-bmp :otf=gujr=rphf) gujr-otf)))
(oriya
 (nil
  ((nil nil unicode-bmp :otf=ory2) ory2-otf)
  ((nil nil unicode-bmp :otf=orya=rphf) orya-otf)))
(tamil
 (nil
  ((nil nil unicode-bmp :otf=tml2) tml2-otf)
  ((nil nil unicode-bmp :otf=taml=akhn) taml-otf)))
(telugu
 (nil
  ((nil nil unicode-bmp :otf=tel2) tel2-otf)
  ((nil nil unicode-bmp :otf=telu=blwf) telu-otf)))
(kannada
 (nil
  ((nil nil unicode-bmp :otf=knd2) knd2-otf)
  ((nil nil unicode-bmp :otf=knda=rphf) knda-otf)))
(malayalam
 (nil
  ((nil nil unicode-bmp :otf=mlm2) mlm2-otf)
  ((nil nil unicode-bmp :otf=mlym=akhn) mlym-otf)))
(thai
 (nil
  ((nil nil unicode-bmp :otf=thai+mark,mkmk) thai-otf)
  ((nil norasi unicode-bmp) thai-norasi)
  ((nil nil unicode-bmp :lang=th) thai-generic)))
(lao
 (nil
  ((nil alice0\ lao apple-roman) laoo-alice)
  ((nil nil unicode-bmp :lang=lo) laoo-generic)))
(tibetan
 (nil
  ((nil nil unicode-bmp :otf=tibt=ccmp,blws,abvs) tibt-otf)
  ((nil mtib unicode-bmp) tibt-mtib)))
(myanmar
 (nil
  ((nil padauk unicode-bmp) mymr-sil)
  ((nil myazedi_m17n unicode-bmp) mymr-myazedi)))
(khmer
 (nil
  ((nil nil unicode-bmp :otf=khmr=pres) khmr-otf)
  ((nil anlongvill\ khek apple-roman) khmr-anlong)))
(hiragana
 (ja
  ((nil nil unicode-bmp :lang=ja))))
(katakana
 (ja
  ((nil nil unicode-bmp :lang=ja))))
(han
 (ja
  ((nil nil unicode-bmp :lang=ja)))
 (zh
  ((nil nil unicode-bmp :lang=zh))))
(cham
 (nil
  ((nil nil unicode-bmp :script=cham) cham-generic)))
(tai_viet
 (nil
  ((nil nil unicode-bmp :script=tai_viet))))
(nil
 ((nil nil unicode-bmp)))
