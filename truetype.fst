;; truetype.fst -- Fontset using only TrueType fonts  -*- lisp -*-
;; Copyright (C) 2003, 2004, 2005, 2006
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

;;; <li> truetype.fst
;;;
;;; Fontset using only freely available TrueType fonts.  See the
;;; documentation of the fontset "default" for the information about
;;; each font.

(latin
 (vi
  ((nil freeserif unicode-bmp))
  ((nil freesans unicode-bmp))
  ((nil freemono unicode-bmp)))
 (nil
  ((nil freesans unicode-bmp))
  ((nil freeserif unicode-bmp))
  ((nil freemono unicode-bmp))))
(hebrew
 (nil
  ((nil freesans unicode-bmp) hebr)))
(arabic
 (nil
  ((nil riwaj unicode-bmp) arab-otf)
  ((nil bitstream\ cyberbase unicode-bmp) arab)))
(syriac
 (nil
  ((nil estrangelo\ talada unicode-bmp) syrc-otf)
  ((nil serto\ jerusalem unicode-bmp) syrc-otf)
  ((nil east\ syriac adiabene unicode-bmp) syrc-otf)))
(thaana
 (nil
  ((nil thaana\ unicode\ akeh unicode-bmp) thaa-otf)))
(devanagari
 (nil
  ((nil gargi_1.7 unicode-bmp) deva-otf)
  ((nil gargi unicode-bmp) deva-otf)
  ((nil raghindi unicode-bmp) deva-otf)
  ((nil dv-ttyogesh apple-roman) deva-cdac)))
(bengali
 (nil
  ((nil mukti\ narrow unicode-bmp) beng-otf)
  ((nil likhan unicode-bmp) beng-otf)
  ((nil sagar unicode-bmp) beng-otf)))
(gurmukhi
 (nil
  ((nil lohit\ punjabi unicode-bmp) guru-otf)
  ((nil saab unicode-bmp) guru-otf)))
(gujarati
 (nil
  ((nil padmaa unicode-bmp) gujr-otf)))
(oriya
 (nil
  ((nil utkal unicode-bmp) orya-otf)))
(tamil
 (nil
  ((nil akrutitml1 unicode-bmp) taml-otf)
  ((nil akrutitml2 unicode-bmp) taml-otf)
  ((nil tscu_paranar unicode-bmp) taml-otf)
  ((nil tscu_comic unicode-bmp) taml-otf)
  ((nil tscu_times unicode-bmp) taml-otf)
  ((nil tamu_kadambri unicode-bmp) taml-otf)
  ((nil tamu_kalyani unicode-bmp) taml-otf)
  ((nil tamu_maduram unicode-bmp) taml-otf)
  ((nil tm-ttvalluvar apple-roman) taml-cdac)))
(telugu
 (nil
  ((nil pothana2000 unicode-bmp) telu-otf)))
(kannada
 (nil
  ((nil kedage unicode-bmp) knda-otf)
  ((nil mallige unicode-bmp) knda-otf)
  ((nil sampige unicode-bmp) knda-otf)))
(sinhala
 (nil
  ((nil lklug unicode-bmp) sinh-otf)))
(malayalam
 (nil
  ((nil rachana unicode-bmp) mlym-rachana)
  ((nil thoolikaunicode unicode-bmp) mlym-otf)
  ((nil ml-ttkarthika apple-roman) mlym-cdac)))
(thai
 (nil
  ((nil nil unicode-bmp :otf=thai+mark,mkmk) thai-otf)
  ((nil norasi unicode-bmp) thai-norasi)))
(lao
 (nil
  ((nil phetsarath\ ot unicode-bmp) laoo-otf)
  ((nil alice0\ lao apple-roman) laoo-alice)))
(tibetan
 (nil
  ((nil mtib unicode-bmp) tibt-mtib)
  ((nil tibetan\ machine\ uni unicode-bmp) tibt-otf)))
(myanmar
 (nil
  ((nil padauk unicode-bmp) mymr-sil)
  ((nil myazedi_m17n unicode-bmp) mymr-myazedi)))
(georgian
 (nil
  ((nil bpg\ classic\ 99u unicode-bmp))))
(ethiopic
 (nil
  ((nil freeserif unicode-bmp))))
(khmer
 (nil
  ((nil khmer\ os unicode-bmp) khmr-otf)
  ((nil anlongvill\ khek apple-roman) khmr-anlong)))
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
(han
 (ja
  ((nil kochi\ gothic unicode-bmp)))
 (zh
  ((nil ar\ pl\ sungtil\ gb unicode-bmp))
  ((nil ar\ pl\ mingti2l\ big5 unicode-bmp)))
 (ko
  ((nil baekmuk\ dotum unicode-bmp))))

(nil
 ((nil freesans unicode-bmp))
 ((nil freeserif unicode-bmp))
 ((nil freemono unicode-bmp)))
