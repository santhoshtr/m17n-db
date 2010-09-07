;; truetype.fst -- Fontset using only TrueType fonts
;; Copyright (C) 2003, 2004, 2005, 2006, 2010  AIST (H15PRO112)
;; See the end for copying conditions.

;;; <li> truetype.fst
;;;
;;; Fontset using only freely available TrueType fonts.
;;; <ul>

;;; <li> DejaVuSans.ttf (family: DejaVu Sans)
;;; <ul>
;;; <li> debian package: ttf-dejavu-core
;;; </ul>

;;; <li> SILEOT.ttf (family: ezra sil; for Hebrew)
;;; <ul>
;;; <li> debian package: ttf-sil-ezra
;;; </ul>

;;; <li> ScheherazadeRegOT.ttf (family: scheherazade; for Arabic)
;;; <ul>
;;; <li> debian package: ttf-sil-scheherazade
;;; </ul>

;;; <li> SyrCOMTalada.otf (family: estrangelo talada; for Syriac)
;;; <li> SyrCOMJerusalem.otf (family: serto jerusalem; for Syriac)
;;; <li> SyrCOMAdiabene.otf (family: east syriac adiabene; for Syriac)
;;; <ul>
;;; <li> debian package: ttf-xfree86-nonfree-syriac
;;; </ul>

;;; <li> mvboli.ttf (family: mv boli; for Thaana)
;;; <ul>
;;; <li> dowload: http://mvlinux.blogspot.com/2010/02/thaana-font-installer-for-linux-deb.html
;;; </ul>

;;; <li> gargi.ttf (family: gargi; for Devanagari)
;;; <li> lohit_hi.ttf (family: lohit hindi; for Devanagari)
;;; <ul>
;;; <li> debian package: ttf-devanagari-fonts
;;; </ul>

;;; <li> lohit_bn.ttf (family: lohit bengali; for Bengali)
;;; <li> MuktiNarrow.ttf (family: mukti narrow; for Bengali)
;;; <ul>
;;; <li> debian package: ttf-bengali-fonts
;;; </ul>

;;; <li> lohit_pa.ttf (family: lohit punjabi; for Gurmukhi)
;;; <li> Saab.ttf (family: saab; for Gurmukhi)
;;; <ul>
;;; <li> debian package: ttf-punjabi-fonts
;;; </ul>

;;; <li> lohit_gu.ttf (family: lohit gujarati; for Gujarati)
;;; <li> Rekha.ttf (family: rekha; for Gujarati)
;;; <ul>
;;; <li> debian package: ttf-gujarati-fonts
;;; </ul>

;;; <li> utkal.ttf (family: utkal; for Oriya)
;;; <ul>
;;; <li> debian package: ttf-oriya-fonts
;;; </ul>

;;; <li> lohit_ta.ttf (family: lohit tamil; for Tamil)
;;; <ul>
;;; <li> debian package: ttf-tamil-fonts
;;; </ul>

;;; <li> Pothana2000.ttf (family: pothana2000; for Telugu)
;;; <li> Vemana.ttf (family: vemana2000; for Telugu)
;;; <ul>
;;; <li> debian package: ttf-telugu-fonts
;;; </ul>

;;; <li> Kedage-n.ttf (family: kedage; for Kannada)
;;; <li> Malige-n.ttf (family: mallige; for Kannada)
;;; <ul>
;;; <li> debian package: ttf-kannada-fonts
;;; </ul>

;;; <li> Meera_04.ttf (family: meera; for Malayalam)
;;; <li> Rachana_04.ttf (family: rachana; for Malayalam)
;;; <ul>
;;; <li> debian package: ttf-malayalam-fonts
;;; </ul>

;;; <li> lklug.ttf (family: lklug; for Sinhala)
;;; <ul>
;;; <li> debian package: ttf-sinhala-lklug
;;; </ul>

;;; <li> TibetanMachineUniAlpha.ttf (family: tibetan machine uni; for Tibetan)
;;; <ul>
;;; <li> debian package: ttf-tmuni
;;; </ul>

;;; <li> Norasi.ttf (family: norasi; for Thai)
;;; <ul>
;;; <li> debian package: ttf-thai-tlwg
;;; </ul>

;;; <li> Phetsarath_OT.ttf (family: phetsarath ot; for Lao)
;;; <ul>
;;; <li> debian package: ttf-lao
;;; </ul>

;;; <li> Padauk.ttf (family: padauk; for Myanmar)
;;; <ul>
;;; <li> debian package: ttf-sil-padauk
;;; </ul>

;;; <li> KhmerOS.ttf (family: khmer os; for Khmer)
;;; <ul>
;;; <li> debian package: ttf-khmeros
;;; </ul>

;;; <li> wqy-zenhei.ttf (family: wenquanyi zen hei; for Chinese)
;;; <ul>
;;; <li> debian package: ttf-wqy-zenhei
;;; </ul>

;;; <li> TakaoGothic.ttf (family: takaogothic)
;;; <ul>
;;; <li> debian package: ttf-takao-gothic
;;; </ul>

;;; <li> UnDotum.ttf (family: undotum; for Korean)
;;; <ul>
;;; <li> debian package: ttf-unfonts-core
;;; </ul>

;;; <li> Abyssinica_SIL.ttf (family: abyssinica sil; for Ethiopic)
;;; <ul>
;;; <li> debian package: ttf-sil-abyssinica
;;; </ul>

;;; </ul>

(latin
 (vi
  ((nil dejavu\ sans unicode-bmp))
  ((nil nil unicode-bmp :lang=vi)))
 (nil
  ((nil dejavu\ sans unicode-bmp))
  ((nil nil unicode-bmp :script=latin))))
(hebrew
 (nil
  ((nil ezra\ sil unicode-bmp) hebr-otf)
  ((nil nil unicode-bmp :otf=hebr) hebr-otf)
  ((nil nil unicode-bmp :script=hebrew))))
(arabic
 (nil
  ((nil scheherazade unicode-bmp) arab-otf)
  ((nil nil unicode-bmp :otf=arab) arab-otf)
  ((nil nil unicode-bmp :script=arabic) arab)))
(syriac
 (nil
  ((nil estrangelo\ talada unicode-bmp) syrc-otf)
  ((nil serto\ jerusalem unicode-bmp) syrc-otf)
  ((nil east\ syriac\ adiabene unicode-bmp) syrc-otf)
  ((nil nil unicode-bmp :otf=syrc) syrc-otf)))
(thaana
 (nil
  ((nil mv\ boli unicode-bmp) thaa-otf)
  ((nil nil unicode-bmp :otf=thaa) thaa-otf)))
(devanagari
 (nil
  ((nil gargi unicode-bmp) deva-otf)
  ((nil lohit\ hindi unicode-bmp) deva-otf)
  ((nil nil unicode-bmp :otf=dev2) dev2-otf)
  ((nil nil unicode-bmp :otf=deva) deva-otf)))
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
  ((nil lohit\ tamil unicode-bmp) taml-otf)
  ((nil nil unicode-bmp :otf=tml2) tml2-otf)
  ((nil nil unicode-bmp :otf=taml) taml-otf)))
(telugu
 (nil
  ((nil pothana2000 unicode-bmp) telu-otf)
  ((nil vemana2000 unicode-bmp) telu-otf)
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
  ((nil nil unicode-bmp :otf=tibt) tibt-otf)))
(thai
 (nil
  ((nil norasi unicode-bmp) thai-otf)
  ((nil nil unicode-bmp :otf=thai) thai-otf)))
(lao
 (nil
  ((nil phetsarath\ ot unicode-bmp) laoo-otf)
  ((nil nil unicode-bmp :otf=laoo) laoo-otf)))
(myanmar
 (nil
  ((nil padauk unicode-bmp) mymr-sil)))
(khmer
 (nil
  ((nil khmer\ os unicode-bmp) khmr-otf)
  ((nil nil unicode-bmp :otf=khmr) khmr-otf)))
(han
 (zh
  ((nil wenquanyi\ zen\ hei unicode-bmp))
  ((nil ar\ pl\ kaitim\ gb unicode-bmp))
  ((nil ar\ pl\ kaitim\ big5 unicode-bmp))
  ((nil ar\ pl\ sungtil\ gb unicode-bmp))
  ((nil ar\ pl\ mingti2l\ big5 unicode-bmp))
  ((nil nil unicode-bmp :lang=zh)))
 (ja
  ((nil takaogothic unicode-bmp))
  ((nil sazanami\ gothic unicode-bmp))
  ((nil kochi\ gothic unicode-bmp))
  ((nil nil unicode-bmp :lang=ja)))
 (ko
  ((nil undotum unicode-bmp))
  ((nil nil unicode-bmp :lang=ko))))
(hiragana
 (nil
  ((nil takaogothic unicode-bmp))
  ((nil sazanami\ gothic unicode-bmp))
  ((nil kochi\ gothic unicode-bmp))
  ((nil nil unicode-bmp :lang=ja))))
(katakana
 (nil
  ((nil takaogothic unicode-bmp))
  ((nil sazanami\ gothic unicode-bmp))
  ((nil kochi\ gothic unicode-bmp))
  ((nil nil unicode-bmp :lang=ja))))
(hangul
 (nil
  ((nil undotum unicode-bmp))
  ((nil nil unicode-bmp :lang=ko))))
(ethiopic
 (nil
  ((nil abyssinica\ sil unicode-bmp))
  ((nil nil unicode-bmp :lang=am))))
(cham
 (nil
  ((nil nil unicode-bmp :script=cham) cham-generic)))
(nil
 ((nil dejavu\ sans unicode-bmp))
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
