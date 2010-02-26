;; default.fst -- The default fontset				-*- lisp -*-
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

;; The file format is this:
;;	(SCRIPT (LANGAUGE (FONT-SPEC-LIST [LAYOUTER]) ...) ...) ...
;;	(CHARSET (FONT-SPEC-LIST [LAYOUTER]) ...) ...
;;	(nil (FONT-SPEC-LIST [LAYOUTER]) ...) ...
;; See FORMAT/Fontset.txt for the detail.

;;; <li> default.fst
;;;
;;; The default fontset.  It contains complehensive specifications
;;; about which font to use for which script.  In addition to X fonts,
;;; it contains these freely available TrueType fonts.

;;; <ul>
;;; <li> FreeSans.ttf (family: FreeSans), FreeSerif.ttf (family: FreeSerif), FreeMono.ttf (family: FreeMono)
;;; <ul>
;;; <li> infopage: http://www.gnu.org/directory/all/freefont.html
;;; <li> download: http://savannah.nongnu.org/download/freefont/freefont-ttf.tar.gz
;;; </ul>
;;; <li> Riwaj.ttf (family: Riwaj; for Arabic)
;;; <ul>
;;; <li> infopage: http://www.geocities.com/hifazatequran/font.htm
;;; <li> download: http://www.geocities.com/hifazatequran/Riwaj.zip
;;; </ul>
;;; <li> PakType Naqsh 2.2.ttf (family: PakType Naqsh; for Arabic)
;;; <li> PakType Tehreer 1.2.tty (family: PakType Tehreer; for Arabic)
;;; <ul>
;;; <li> debian package: ttf-paktype
;;; </ul>
;;; <li> Cyberbase.ttf (family: Bitstream CyberBase; for Arabic)
;;; <ul>
;;; <li> download: http://www.ffonts.net/Bitstream-CyberBase.font.download
;;; </ul>
;;; <li> SyrCOMEdessa.otf (family: Estrangelo Edessa; for Syriac),\n
;;;      SyrCOMJerusalem.otf (family: Serto Jerusalem; for Syriac),\n
;;;      SyrCOMAdiabene.otf (family: East Syriac Adiabene; for Syriac)
;;; <ul>
;;; <li> infopage: http://www.bethmardutho.org/meltho/
;;; <li> download: http://www.bethmardutho.org/support/meltho/download/
;;; </ul>
;;; <li> raghu.ttf (family: Raghindi; for Devanagari)
;;; <ul>
;;; <li> infopage: http://www.nepali.info/nepali/help.asp
;;; <li> download: http://www.nepali.info/nepali/fonts/raghu.ttf
;;; </ul>
;;; <li> gargi.ttf (family: gargi; for Devanagari)
;;; <ul>
;;; <li> debian package: ttf-devanagari-fonts
;;; </ul>
;;; <li> AksharYoginiNormal.ttf (family: Aksharyogini; for Devanagari)
;;; <ul>
;;; <li> infopage: http://aksharyogini.sudhanwa.com/aksharyogini.html
;;; <li> download: http://aksharyogini.sudhanwa.com/AksharYoginiNormal.ttf
;;; </ul>
;;; <li> MuktiNarrow.ttf (family: mukti narrow; for Bengali)
;;; <ul>
;;; <li> debian package: ttf-bengali-fonts
;;; </ul>
;;; <li> LikhanNormal.otf (family: likhan; for Bengali)
;;; <ul>
;;; <li> debian package: ttf-bengali-fonts
;;; </ul>
;;; <li> Sagar0.6_GPL.ttf (family: sagar; for Bengali)
;;; <ul>
;;; <li> infopage: http://ekushey.sourceforge.net/
;;; <li> download: http://prdownloads.sourceforge.net/ekushey/Sagar0.6_GPL.ttf?download
;;; </ul>
;;; <li> Saab.otf (family: Saab; for Gurmukhi)
;;; <ul>
;;; <li> infopage: http://guca.sourceforge.net/typography/fonts/saab/index.shtml
;;; <li> download: http://prdownloads.sourceforge.net/guca/saab.0.91.otf?download
;;; </ul>
;;; <li> padmaa-Medium-0.5.ttf (family: padmaa; for Gujarati)
;;; <ul>
;;; <li> debian package: ttf-gujarati-fonts
;;; </ul>
;;; <li> utkalm.ttf (family utkal; for Oriya)
;;; <ul>
;;; <li> infopage: http://oriya.sarovar.org/docs/getting_started/node13.html
;;; <li> download: http://oriya.sarovar.org/download/utkalm.ttf.gz
;;; </ul>
;;; <li> akruti1.ttf, akruti1b.ttf (family akrutitml1; for Tamil), \n
;;;      akruti2.ttf, akruti2b.ttf (family akrutitml2; for Tamil), \n
;;;      TSCu_Comic.ttf (family tscu_comic; for Tamil), \n
;;;      TSCu_Paranar.ttf, TSCu_paranarb.ttf, TSCu_paranari.ttf (family tscu_paranar; for Tamil), \n
;;;      TSCu_Times.ttf (family tscu_times; for Tamil), \n
;;;      TAMu_Kadampari.ttf (family tamu_kadambri; for Tamil), \n
;;;      TAMu_Kalyani.ttf (family tamu_kalyani; for Tamil), \n
;;;      TAMu_Maduram.ttf (family tamu_maduram; for Tamil)
;;; <ul>
;;; <li> infopage: http://tamillinux.sourceforge.net/
;;; <li> download: http://sourceforge.net/projects/tamillinux/
;;; </ul>
;;; <li> Pothana2000.ttf (family: Pothana2000; for Telugu)
;;; <ul>
;;; <li> infopage: http://www.kavya-nandanam.com/
;;; <li> download: http://www.kavya-nandanam.com/dload.htm
;;; </ul>
;;; <li> Kedage-[bint].ttf (family kedage; for Kannada), \n
;;;      Malige-[bint].ttf (family mallige; for Kannada)
;;; <ul>
;;; <li> download: http://brahmi.sourceforge.net/downloads.html
;;; </ul>
;;; <li> Sampige.ttf (family: Sampige; for Kannada)
;;; <ul>
;;; <li> infopage: http://kannada.sourceforge.net/
;;; <li> download: http://brahmi.sourceforge.net/dl/Sampige.ttf
;;; </ul>
;;; <li> Rachana_04.ttf (family: rachana; for Malayalam)
;;; <ul>
;;; <li> debian package: ttf-malayalam-fonts
;;; </ul>
;;; <li> THOOLIUC.TTF (family: thoolikaunicode; for Malayalam)
;;; <ul>
;;; <li> infopage: http://www.supersoftweb.com/ThoolikaUnicode.aspx
;;; <li> download: http://www.supersoftweb.com/FreeDownloades/ThooliUC.TTF
;;; </ul>
;;; <li> lklug.otf (family: LKLUG; for Sinhala)
;;; <ul>
;;; <li> debian package:: ttf-sinhala-lklug
;;; </ul>
;;; <li> TibetanMachineUniAlpha.ttf (family: tibetan machine uni; for Tibetan)
;;; <ul>
;;; <li> debian package: ttf-tmuni
;;; </ul>
;;; <li> Norasi_Bold.ttf, Norasi_BoldItalic.ttf, Norasi_Italic.ttf, Norasi.ttf (family Norasi; for Thai)
;;; <ul>
;;; <li> debian package: ttf-thai-tlwg
;;; </ul>
;;; <li> Phetsarath_OT.ttf (family: Phetsarath OT; for Lao)
;;; <ul>
;;; <li> infopage: http://sourceforge.net/projects/laofoss
;;; <li> download: http://prdownloads.sourceforge.net/laofoss/Phetsarath_OT.zip
;;; </ul>
;;; <li> KhmerOS.ttf (family: Khmer OS; for Khmer)
;;; <ul>
;;; <li> debian package: ttf-khmeros
;;; </ul>
;;; <li> Padauk.ttf (family: Padauk; for Myanmar)
;;; <ul>
;;; <li> infopage: http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=padauk
;;; <li> download: http://scripts.sil.org/cms/scripts/render_download.php?site_id=nrsi&format=file&media_id=MH_Padauk_tarball&filename=ttf-sil-padauk-2.6.1.tar.gz
;;; </ul>
;;; <li> MyaZedi_M17N.ttf (family: MyaZedi; for Myanmar)
;;; <ul>
;;; <li> download: http://www.myazedi.com/downloads/MyaZedi_M17N.ttf
;;; </ul>
;;; <li> BPG-Classic-99Um.ttf (family: BPG Classic 99U; for Georgian) 
;;; <ul>
;;; <li> infopage: http://bpg.sytes.net/bpgfonts/bpg_classic.htm
;;; <li> download: http://bpg.sytes.net/bpgfonts/files/BPG-Classic-U.zip
;;; </ul>
;;; <li> kochi-gothic.ttf, kochi-gothic-subst.ttf
;;;		(family: kochi gothic;for Japanese)
;;; <ul>
;;; <li> infopage: http://sourceforge.jp/projects/efont/files/
;;; <li> download: http://prdownloads.sourceforge.jp/efont/4845/kochi-substitute-20030628.tar.bz2
;;; </ul>
;;; <li> dotum.ttf (family: Baekmuk Dotum; for Hangul)
;;; <ul>
;;; <li> debian package: ttf-baekmuk
;;; </ul>
;;; <li> gbsn00lp.ttf (family: AR PL SungtiL GB; for Chinese)
;;; <ul>
;;; <li> debian package: ttf-arphic-gbsn00lp
;;; </ul>
;;; <li> bsmi00lp.ttf (family AR PL Mingti2L Big5; for Chinese)
;;; <ul>
;;; <li> debian package: ttf-arphic-bsmi00lp
;;; </ul>
;;; </ul>

(latin
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
  ((iso8859-14))
  ((nil freesans unicode-bmp)))
 (vi
  ((viscii1.1-1))
  ((iso10646-1))
  ((nil freeserif unicode-bmp))))
(greek
 (nil
  ((iso8859-7))
  ((iso10646-1))
  ((nil freesans unicode-bmp))
  ((nil freeserif unicode-bmp))))
(cyrillic
 (nil
  ((iso8859-5))
  ((microsoft-cp1251))
  ((iso10646-1))
  ((nil freesans unicode-bmp))
  ((nil freeserif unicode-bmp))))
(hebrew
 (nil
  ((nil freesans unicode-bmp) hebr)
  ((iso10646-1))))
(arabic
 (nil
  ((nil riwaj unicode-bmp) arab-otf)
  ((nil paktype\ tehreer unicode-bmp) arab-otf)
  ((nil paktype\ naqsh unicode-bmp) arab-otf)
  ((nil bitstream\ cyberbase unicode-bmp) arab)
  ((nil mule iso10646-1) arab)))
(syriac
 (nil
  ((nil estrangelo\ edessa unicode-bmp) syrc-otf)
  ((nil serto\ jerusalem unicode-bmp) syrc-otf)
  ((nil east\ syriac\ adiabene unicode-bmp) syrc-otf)))
(thaana
 (nil
  ((nil nil unicode-bmp otf:thaa) thaa-otf)
  ((nil thaana\ unicode\ akeh unicode-bmp) thaa-otf)))
(devanagari
 (nil
  ((nil gargi_1.7 unicode-bmp) deva-otf)
  ((nil gargi unicode-bmp) deva-otf)
  ((nil raghindi unicode-bmp) deva-otf)))
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
  ((nil tamu_maduram unicode-bmp) taml-otf)))
(telugu
 (nil
  ((nil pothana2000 unicode-bmp) telu-otf)))
(kannada
 (nil
  ((nil kedage unicode-bmp) knda-otf)
  ((nil mallige unicode-bmp) knda-otf)
  ((nil sampige unicode-bmp) knda-otf)))
(malayalam
 (nil
  ((nil rachana unicode-bmp) mlym-rachana)
  ((nil thoolikaunicode unicode-bmp) mlym-otf)))
(sinhala
 (nil
  ((nil lklug unicode-bmp) sinh-otf)))
(thai
 (nil
  ((tis620.2529-1) thai-tis620)
  ((tis620.2533-0) thai-tis620)
  ((nil norasi unicode-bmp) thai-norasi)))
(lao
 (nil
  ((mulelao-1) laoo-mule)
  ((nil alice0\ lao iso8859-1) laoo-alice)
  ((nil alice0\ lao apple-roman) laoo-alice)
  ((nil phetsarath\ ot unicode-bmp) laoo-otf)))
(tibetan
 (nil
  ((muletibetan-2) tibt-mule)
  ((nil mtib unicode-bmp) tibt-mtib)
  ((nil tibetan\ machine\ uni unicode-bmp) tibt-otf)))
(myanmar
 (nil
  ((nil padauk unicode-bmp) mymr-sil)
  ((nil myazedi_m17n unicode-bmp) mymr-myazedi)))
(georgian
 (nil
  ((nil \1col iso10646-1))
  ((nil bpg\ classic\ 99u unicode-bmp))))
(ethiopic
 (nil
  ((ethiopic-unicode))
  ((nil freeserif unicode-bmp))))
(khmer
 (nil
  ((nil khmer\ os unicode-bmp) khmr-otf)
  ((nil anlongvill\ khek apple-roman) khmr-anlong)))
(hiragana
 (ja
  ((jisx0208.1983-0))
  ((nil kochi\ gothic unicode-bmp)))
 (nil
  ((jisx0208.1983-0))
  ((gb2312.1980-0))
  ((ksc5601.1987-0))))
(katakana
 (ja
  ((jisx0208.1983-0))
  ((nil kochi\ gothic unicode-bmp)))
 (nil
  ((jisx0208.1983-0))
  ((jisx0201.1976-0))
  ((gb2312.1980-0))
  ((ksc5601.1987-0))))
(hangul
 (nil
  ((ksc5601.1987-0))
  ((nil baekmuk\ dotum unicode-bmp))))
(han
 (ja
  ((jisx0208.1983-0))
  ((jisx0212.1990-0))
  ((nil kochi\ gothic unicode-bmp)))
 (zh
  ((gb2312.1980-0))
  ((big5.eten-0))
  ((big5-1))
  ((gbk-0))
  ((nil ar\ pl\ sungtil\ gb unicode-bmp))
  ((nil ar\ pl\ mingti2l\ big5 unicode-bmp)))
 (ko
  ((ksc5601.1987-0))))

(nil
 ((nil \1col iso10646-1))
 ((gnu unifont iso10646-1))
 ((mutt clearlyu iso10646-1))
 ((iso10646-1))
 ((nil freesans unicode-bmp))
 ((nil freeserif unicode-bmp)))
