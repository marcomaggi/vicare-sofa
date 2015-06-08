;;; -*- coding: utf-8 -*-
;;;
;;;Part of: R6RS SOFA
;;;Contents: precomputed constants
;;;Date: Wed Jan 16, 2013
;;;
;;;Abstract
;;;
;;;	This  library  is  derived  from  the  C  language  header  file
;;;	"sofam.h".
;;;
;;;Copyright
;;;=========
;;;
;;;The  copyright of  the  SOFA  Software belongs  to  the Standards  Of
;;;Fundamental Astronomy Board of the International Astronomical Union.
;;;
;;;
;;;SOFA Software License
;;;=====================
;;;
;;;By  using  this software  you  accept  the  following six  terms  and
;;;conditions which apply to its use.
;;;
;;;1. The Software is owned by the IAU SOFA Board ("SOFA").
;;;
;;;2. Permission is  granted to anyone to use the  SOFA software for any
;;;   purpose,  including commercial  applications, free  of charge  and
;;;   without  payment  of  royalties,  subject to  the  conditions  and
;;;   restrictions listed below.
;;;
;;;3. You (the user) may copy and distribute SOFA source code to others,
;;;   and use and adapt its code and algorithms in your own software, on
;;;   a   world-wide,  royalty-free   basis.   That   portion  of   your
;;;   distribution that does not consist  of intact and unchanged copies
;;;   of SOFA  source code files  is a  "derived work" that  must comply
;;;   with the following requirements:
;;;
;;;   a. Your work shall be marked or carry a statement that it (i) uses
;;;      routines and computations derived by you from software provided
;;;      by  SOFA  under  license  to  you; and  (ii)  does  not  itself
;;;      constitute software provided by and/or endorsed by SOFA.
;;;
;;;   b. The source code of  your derived work must contain descriptions
;;;      of how the derived work  is based upon, contains and/or differs
;;;      from the original SOFA software.
;;;
;;;   c. The  names of  all  routines in  your derived  work shall  not
;;;      include  the prefix  "iau" or  "sofa" or  trivial modifications
;;;      thereof such as changes of case.
;;;
;;;   d. The origin of the SOFA components of your derived work must not
;;;      be  misrepresented;  you must  not  claim  that you  wrote  the
;;;      original  software,  nor file  a  patent  application for  SOFA
;;;      software or algorithms embedded in the SOFA software.
;;;
;;;   e.   These requirements  must be reproduced  intact in  any source
;;;      distribution and shall apply to anyone to whom you have granted
;;;      a further right to modify the source code of your derived work.
;;;
;;;   Note  that,  as  originally  distributed,  the  SOFA  software  is
;;;   intended to be  a definitive implementation of  the IAU standards,
;;;   and consequently  third-party modifications are  discouraged.  All
;;;   variations,  no matter  how minor,  must be  explicitly marked  as
;;;   such, as explained above.
;;;
;;;4.  You  shall  not  cause  the SOFA  software  to  be  brought  into
;;;   disrepute, either by misuse, or use for inappropriate tasks, or by
;;;   inappropriate modification.
;;;
;;;5. The SOFA  software is provided "as is" and  SOFA makes no warranty
;;;   as to  its use or performance.   SOFA does not and  cannot warrant
;;;   the performance or results which the  user may obtain by using the
;;;   SOFA software.  SOFA  makes no warranties, express  or implied, as
;;;   to  non-infringement of  third party  rights, merchantability,  or
;;;   fitness  for any  particular purpose.   In no  event will  SOFA be
;;;   liable to the  user for any consequential,  incidental, or special
;;;   damages, including  any lost  profits or lost  savings, even  if a
;;;   SOFA representative has  been advised of such damages,  or for any
;;;   claim by any third party.
;;;
;;;6. The provision of any version  of the SOFA software under the terms
;;;   and  conditions  specified  herein  does  not  imply  that  future
;;;   versions  will also  be made  available under  the same  terms and
;;;   conditions.
;;;
;;;Correspondence  concerning  SOFA  software  should  be  addressed  as
;;;follows:
;;;
;;;  By e-mail: sofa@ukho.gov.uk
;;;
;;;  By post: IAU SOFA Center
;;;           HM Nautical Almanac Office
;;;           UK Hydrographic Office
;;;           Admiralty Way
;;;           Taunton, TA1 2DN
;;;           United Kingdom
;;;
;;;
;;;Acknowledgement & Citation for SOFA
;;;===================================
;;;
;;;If  your  use of  SOFA  results  in  a publication,  presentation  or
;;;product, please include a citation.  Evidence of your use of the SOFA
;;;libraries  is   necessary  to   ensure  continuing  support   of  the
;;;initiative.
;;;
;;;The following  is a suitable  form of words: “Software  Routines from
;;;the  IAU  SOFA  Collection  were  used.   Copyright  ©  International
;;;Astronomical    Union    Standards     of    Fundamental    Astronomy
;;;(http://www.iausofa.org)”.


#!r6rs
(library (vicare astronomy sofa constants)
  (export
    DPI			D2PI		DD2R		DR2AS
    DAS2R		DS2R		TURNAS		DMAS2R
    DTY			DAYSEC		DJY		DJC
    DJM			DJ00		DJM0		DJM00
    DJM77		TTMTAI		DAU		DC
    ELG			ELB		TDB0		dint
    dnint		dsign		WGS84		GRS80
    WGS72

    ;; added by SOFA-Issue: 2013-12-02
    DR2D		CMPS		AULT		SRS)
  (import (rnrs))


;; /* Pi */
;; #define DPI (3.141592653589793238462643)
(define DPI 3.141592653589793238462643)

;; /* 2Pi */
;; #define D2PI (6.283185307179586476925287)
(define D2PI 6.283185307179586476925287)

;; /* Degrees to radians */
;; #define DD2R (1.745329251994329576923691e-2)
(define DD2R 1.745329251994329576923691e-2)

;; /* Radians to arcseconds */
;; #define DR2AS (206264.8062470963551564734)
(define DR2AS 206264.8062470963551564734)

;; /* Arcseconds to radians */
;; #define DAS2R (4.848136811095359935899141e-6)
(define DAS2R 4.848136811095359935899141e-6)

;; /* Seconds of time to radians */
(define DS2R 7.272205216643039903848712e-5)

;; /* Arcseconds in a full circle */
;; #define TURNAS (1296000.0)
(define TURNAS 1296000.0)

;; /* Milliarcseconds to radians */
;; #define DMAS2R (DAS2R / 1e3)
(define DMAS2R (/ DAS2R 1e3))

;; /* Length of tropical year B1900 (days) */
;; #define DTY (365.242198781)
(define DTY 365.242198781)

;; /* Seconds per day. */
;; #define DAYSEC (86400.0)
(define DAYSEC 86400.0)

;; /* Days per Julian year */
;; #define DJY (365.25)
(define DJY 365.25)

;; /* Days per Julian century */
;; #define DJC (36525.0)
(define DJC 36525.0)

;; /* Days per Julian millennium */
;; #define DJM (365250.0)
(define DJM 365250.0)

;; /* Reference epoch (J2000.0), Julian Date */
;; #define DJ00 (2451545.0)
(define DJ00 2451545.0)

;; /* Julian Date of Modified Julian Date zero */
;; #define DJM0 (2400000.5)
(define DJM0 2400000.5)

;; /* Reference epoch (J2000.0), Modified Julian Date */
;; #define DJM00 (51544.5)
(define DJM00 51544.5)

;; /* 1977 Jan 1.0 as MJD */
;; #define DJM77 (43144.0)
(define DJM77 43144.0)

;; /* TT minus TAI (s) */
;; #define TTMTAI (32.184)
(define TTMTAI 32.184)

;; /* AU (m) */
;; #define DAU (149597870e3)
(define DAU 149597870e3)

;; /* Speed of light (AU per day) */
;; #define DC (DAYSEC / 499.004782)
(define DC (/ DAYSEC 499.004782))

;; /* L_G = 1 - d(TT)/d(TCG) */
;; #define ELG (6.969290134e-10)
(define ELG 6.969290134e-10)

;; /* L_B = 1 - d(TDB)/d(TCB), and TDB (s) at TAI 1977/1/1.0 */
;; #define ELB (1.550519768e-8)
;; #define TDB0 (-6.55e-5)
(define ELB 1.550519768e-8)
(define TDB0 -6.55e-5)

;; /* dint(A) - truncate to nearest whole number towards zero (double) */
;; #define dint(A) ((A)<0.0?ceil(A):floor(A))
(define (dint A)
  (if (< A 0.0)
      (ceiling A)
    (floor A)))

;; /* dnint(A) - round to nearest whole number (double) */
;; #define dnint(A) ((A)<0.0?ceil((A)-0.5):floor((A)+0.5))
(define (dnint A)
  (if (< A 0.0)
      (ceiling (- A 0.5))
    (floor (+ A 0.5))))

;; /* dsign(A,B) - magnitude of A with sign of B (double) */
;; #define dsign(A,B) ((B)<0.0?-fabs(A):fabs(A))
(define (dsign A B)
  (if (< B 0.0)
      (- (abs A))
    (abs A)))

;; /* Reference ellipsoids */
;; #define WGS84 1
;; #define GRS80 2
;; #define WGS72 3
(define WGS84 1)
(define GRS80 2)
(define WGS72 3)

;;; --------------------------------------------------------------------
;;; added by SOFA-Issue: 2013-12-02

;; Radians to degrees
(define DR2D 57.29577951308232087679815)
;; Speed of light (m/s)
(define CMPS 299792458.0)
;; Light time for 1 au (s)
(define AULT 499.004782)

;; Schwarzschild radius of the Sun (au)
;; = 2 * 1.32712440041e20 / (2.99792458e8)^2 / 1.49597870700e11
(define SRS 1.97412574336e-8)


;;;; done

)

;;; end of file
