;; default.fst -- The default fontset				-*- lisp -*-
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
;;; <li> Cyberbase.ttf (family: Bitstream CyberBase; for Arabic)
;;; <ul>
;;; <li> infopage: ftp://ftp.NetBSD.org/pub/NetBSD/packages/pkgsrc/fonts/cyberbase-ttf/README.html
;;; <li> download: ftp://ftp.netbsd.org/pub/NetBSD/packages/1.6.1/amiga/All/cyberbase-ttf-2.0.tgz
;;; </ul>
;;; <li> DVYG0ntt.ttf (family: DV-TTYogesh; for Devanagari),\n
;;;      MLKR0ntt.ttf (family: ML-TTKarthika; for Malayalam),\n
;;;      TMVL0ntt.ttf (family: TM-TTValluvar; for Tamil)
;;; <ul>
;;; <li> infopage: http://www.iiit.net/ltrc/iscii/FAQ.htm#SEC2.1
;;; <li> download: http://www.iiit.net/ltrc/iscii/iscii_plugin_linux.tar.gz
;;; </ul>
;;; <li> raghu.ttf
;;; <ul>
;;; <li> infopage: http://www.nepali.info/nepali/help.asp
;;; <li> download: http://www.nepali.info/nepali/fonts/raghu.ttf
;;; </ul>
;;; <li> MuktiNarrow.ttf (family: mukti narrow; for Bengali)
;;; <ul>
;;; <li> infopage: http://www.nongnu.org/freebangfont/downloads.html
;;; <li> download: http://savannah.nongnu.org/download/freebangfont/MukutiNarrow-0.94.tar.bz2
;;; </ul>
;;; <li> LikhanNormal.otf (family: likhan; for Bengali)
;;; <ul>
;;; <li> infopage: http://www.stat.wisc.edu/~deepayan/Bengali/WebPage/Font/fonts.html
;;; <li> download: http://www.stat.wisc.edu/~deepayan/Bengali/WebPage/Font/LinkhanNormal.otf
;;; </ul>
;;; <li> Saab.otf (family: Saab; for Gurmukhi)
;;; <ul>
;;; <li> infopage: http://guca.sourceforge.net/typography/fonts/saab/index.shtml
;;; <li> download: http://prdownloads.sourceforge.net/guca/saab.0.91.otf?download
;;; </ul>
;;; <li> Pothana2000.ttf (family: Pothana2000; for Telugu)
;;; <ul>
;;; <li> infopage: http://www.kavya-nandanam.com/
;;; <li> download: http://www.kavya-nandanam.com/dload.htm
;;; </ul>
;;; <li> Sampige.ttf (family: Sampige; for Kannada)
;;; <ul>
;;; <li> infopage: http://kannada.sourceforge.net/
;;; <li> download: http://brahmi.sourceforge.net/dl/Sampige.ttf
;;; </ul>
;;; <li> Gargi-1.3.ttf (family: Gargi-1.3; for Devanagari), \n
         padmaa-Medium-0.5.ttf (family: padmaa; for Gujarati)
;;; <ul>
;;; <li> infopage: http://www.indictrans.org/
;;; <li> dowvload: http://www.indictrans.org/Fonts_files/English/f2.php#freefont
;;; </ul>
;;; <li> THOOLIUC.TTF (family: thoolikaunicode; for Malayalam)
;;; <ul>
;;; <li> infopage: http://www.supersoftweb.com/Unicode.htm
;;; <li> downpage: http://www.supersoftweb.com/THOOLIUC.TTF
;;; </ul>
;;; <li> mtib.ttf (family: mtib; for Tibetan)
;;; <ul>
;;; <li> infopage: http://www.m17n.org/emacs-ttf/
;;; <li> download: http://www.m17n.org/emacs-ttf/fonts/tibetan/mtib.ttf
;;; </ul>
;;; <li> norasi_b.ttf, norasi_bi.ttf, norasi_i.ttf, norasi_n.ttf (family Norasi; for Thai)
;;; <ul>
;;; <li> infopage: http://packages.debian.org/stable/x11/xfonts-thai-ttf.html
;;; </ul>
;;; <li> ALICE0.TTF (family: Alice0 Lao; for Lao)
;;; <ul>
;;; <li> infopage: http://seasrc.th.net/font/font.htm
;;; <li> download: http://seasrc.th.net/font/fontlao.dir/alice0.zip
;;; </ul>
;;; <li> ANLONG.TTF (family: Anlongvill Khek; for Khmer)
;;; <ul>
;;; <li> infopage: http://www.cambodia.org/fonts/index.html#dl
;;; <li> download: http://www.cambodia.org/fonts/khmerfnt.zip
;;; </ul>
;;; <li> BPG-Classic-99Um.ttf (family: BPG Classic 99U; for Georgian) 
;;; <ul>
;;; <li> infopage: http://beso.tripod.com/bpg_classic.htm
;;; <li> download: http://beso.tripod.com/files/BPG-Classic-U.zip
;;; </ul>
;;; <li> kochi-gothic.ttf, kochi-gothic-subst.ttf
;;;		(family: kochi gothic;for Japanese)
;;; <ul>
;;; <li> infopage: http://sourceforge.jp/projects/efont/files/
;;; <li> download: http://prdownloads.sourceforge.jp/efont/4845/kochi-substitute-20030628.tar.bz2
;;; </ul>
;;; <li> dotum.ttf (family: Baekmuk Dotum; for Hangul)
;;; <ul>
;;; <li> infopage: http://packages.debian.org/unstable/x11/ttf-baekmuk.html
;;; <li> download: http://ftp.debian.org/debian/pool/main/t/ttf-baekmuk/ttf-baekmuk_2.1.orig.tar.gz
;;; </ul>
;;; <li> gbsn00lp.ttf (family: AR PL SungtiL GB; for Chinese)
;;; <ul>
;;; <li> infopage: http://packages.debian.org/unstable/x11/ttf-arphic-gbsn00lp.html
;;; <li> download: http://ftp.debian.org/debian/pool/main/t/ttf-arphic-gbsn00lp/ttf-arphic-gbsn00lp_2.11.orig.tar.gz
;;; </ul>
;;; <li> bsmi00lp.ttf (family AR PL Mingti2L Big5; for Chinese)
;;; <ul>
;;; <li> infopage: http://packages.debian.org/unstable/x11/ttf-arphic-bsmi00lp.html
;;; <li> download: http://ftp.debian.org/debian/pool/main/t/ttf-arphic-bsmi00lp/ttf-arphic-bsmi00lp_2.10.orig.tar.gz
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
  ((iso10646-1))
  ((nil freesans unicode-bmp))
  ((nil freeserif unicode-bmp))))
(hebrew
 (nil
  ((iso10646-1))
  ((nil freesans unicode-bmp) hebrew)))
(arabic
 (nil
  ((nil mule iso10646-1) arabic)
  ((nil bitstream\ cyberbase unicode-bmp) arabic)))
(devanagari
 (nil
  ((devanagari-cdac) dev-cdac)
  ((nil gargi-1.3 unicode-bmp) dev-otf)
  ((nil raghindi unicode-bmp) dev-otf)
  ((nil dv-ttyogesh apple-roman) dev-cdac)))
(bengali
 (nil
  ((nil likhan unicode-bmp) ben-otf)
  ((nil mukti\ narrow unicode-bmp) ben-otf)))
(gurmukhi
 (nil
  ((nil saab unicode-bmp) gur-otf)))
(gujarati
 (nil
  ((nil padmaa unicode-bmp) guj-otf)))
(tamil
 (nil
  ((tamil-cdac) tml-cdac)
  ((nil tm-ttvalluvar apple-roman) tml-cdac)))
(telugu
 (nil
  ((nil pothana2000 unicode-bmp) tel-otf)))
(kannada
 (nil
  ((nil sampige unicode-bmp) kan-otf)))
(malayalam
 (nil
  ((malayalam-cdac) mlm-cdac)
  ((nil ml-ttkarthika apple-roman) mlm-cdac)
  ((nil thoolikaunicode unicode-bmp) mlm-otf)))
(thai
 (nil
  ((tis620.2529-1) thai-tis620)
  ((tis620.2533-0) thai-tis620)
  ((nil norasi unicode-bmp) thai-norasi)))
(lao
 (nil
  ((mulelao-1) lao-mule)
  ((nil alice0\ lao iso8859-1) lao-alice)
  ((nil alice0\ lao apple-roman) lao-alice)))
(tibetan
 (nil
  ((muletibetan-2) tib-mule)
  ((nil mtib unicode-bmp) tib-mtib)))
(myanmar
 (nil
  ((nil myazedi_m17n unicode-bmp) myanmar-zedi)))
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
  ((mulekhmer-1) khmer-mule)
  ((nil anlongvill\ khek apple-roman) khmer-anlong)))
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
