;; truetype.fst -- Fontset using only TrueType fonts  -*- lisp -*-
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
  ((nil freeserif unicode-bmp))
  ((nil freesans unicode-bmp))
  ((nil freemono unicode-bmp)))
 (nil
  ((nil freesans unicode-bmp))
  ((nil freeserif unicode-bmp))
  ((nil freemono unicode-bmp))))
(hebrew
 (nil
  ((nil freesans unicode-bmp) hebrew)))
(arabic
 (nil
  ((nil bitstream\ cyberbase unicode-bmp) arabic)))
(devanagari
 (nil
  ((nil raghindi t) dev-otf)
  ((nil dv-ttyogesh apple-roman) dev-cdac)))
(bengali
 (nil
  ((nil mukti\ narrow unicode-bmp) ben-otf)
  ((nil likhan unicode-bmp) ben-otf)))
(malayalam
 (nil
  ((nil thoolikaunicode unicode-bmp) mlm-otf)
  ((nil ml-ttkarthika apple-roman) mlm-cdac)))
(tamil
 (nil
  ((nil tm-ttvalluvar apple-roman) tml-cdac)))
(thai
 (nil
  ((nil norasi unicode-bmp) thai-norasi)))
(lao
 (nil
  ((nil alice0\ lao apple-roman) lao-alice)))
(khmer
 (nil
  ((nil anlongvill\ khek apple-roman) khmer-anlong)))
(tibetan
 (nil
  ((nil mtib unicode-bmp) tib-mtib)))
(georgian
 (nil
  ((nil bpg\ classic\ 99u unicode-bmp))))
(ethiopic
 (nil
  ((nil freeserif unicode-bmp))))
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
 )

(nil
 ((nil freesans unicode-bmp))
 ((nil freeserif unicode-bmp))
 ((nil freemono unicode-bmp)))
