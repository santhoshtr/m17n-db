;; generic.fst -- Fontset using only TrueType fonts  -*- lisp -*-
;; Copyright (C) 2003, 2004
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
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
;; 02111-1307, USA.

;;; <li> truetype.fst
;;;
;;; Fontset using only freely available TrueType fonts.  See the
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
  ((nil nil unicode-bmp :otf=deva=rphf) deva-otf)
  ((nil dv-ttyogesh apple-roman) deva-cdac)))
(bengali
 (nil
  ((nil nil unicode-bmp :otf=beng=rphf) beng-otf)))
(gurmukhi
 (nil
  ((nil nil unicode-bmp :otf=guru=vatu) guru-otf)))
(gujarati
 (nil
  ((nil nil unicode-bmp :otf=gujr=rphf) gujr-otf)))
(oriya
 (nil
  ((nil nil unicode-bmp :otf=orya=rphf) orya-otf)))
(tamil
 (nil
  ((nil nil unicode-bmp :otf=taml=akhn) taml-otf)))
(telugu
 (nil
  ((nil nil unicode-bmp :otf=telu=haln) telu-otf)))
(kannada
 (nil
  ((nil nil unicode-bmp :otf=knda=rphf) knda-otf)))
(sinhala
 (nil
  ((nil nil unicode-bmp :otf=sinh=akhn) sinh-otf)))
(malayalam
 (nil
  ((nil nil unicode-bmp :otf=mlym=haln) mlym-otf)))
(thai
 (nil
  ((nil norasi unicode-bmp) thai-norasi)
  ((nil nil unicode-bmp :lang=th) thai-generic)))
(lao
 (nil
  ((nil alice0\ lao apple-roman) laoo-alice)
  ((nil nil unicode-bmp :lang=lo) laoo-generic)))
(tibetan
 (nil
  ((nil mtib unicode-bmp) tibt-mtib)))
(myanmar
 (nil
  ((nil myazedi_m17n unicode-bmp) mymr-myazedi)))
(khmer
 (nil
  ((nil nil unicode-bmp :lang=km) khmr-otf)
  ((nil anlongvill\ khek apple-roman) khmr-anlong)))
(han
 (ja
  ((nil nil unicode-bmp :lang=ja)))
 (zh
  ((nil nil unicode-bmp :lang=zh))))

(nil
 ((nil nil unicode-bmp)))