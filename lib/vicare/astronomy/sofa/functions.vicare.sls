;;; -*- coding: utf-8 -*-
;;;
;;;Part of: R6RS SOFA
;;;Contents: low level function bindings
;;;Date: Mon Jan 14, 2013
;;;
;;;Abstract
;;;
;;;
;;;
;;;Copyright (C) 2013, 2014, 2015 Marco Maggi <marco.maggi-ipsu@poste.it>
;;;
;;;This program is free software:  you can redistribute it and/or modify
;;;it under the terms of the  GNU General Public License as published by
;;;the Free Software Foundation, either version 3 of the License, or (at
;;;your option) any later version.
;;;
;;;This program is  distributed in the hope that it  will be useful, but
;;;WITHOUT  ANY   WARRANTY;  without   even  the  implied   warranty  of
;;;MERCHANTABILITY or  FITNESS FOR  A PARTICULAR  PURPOSE.  See  the GNU
;;;General Public License for more details.
;;;
;;;You should  have received a  copy of  the GNU General  Public License
;;;along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;


#!r6rs
(library (vicare astronomy sofa functions)
  (export

    ;; Astronomy/Astrometry
    iauAb
    iauApcg
    iauApcg13
    iauApci
    iauApci13
    iauApco
    iauApco13
    iauApcs
    iauApcs13
    iauAper
    iauAper13
    iauApio
    iauApio13
    iauAtci13
    iauAtciq
    iauAtciqn
    iauAtciqz
    iauAtco13
    iauAtic13
    iauAticq
    iauAticqn
    iauAtio13
    iauAtioq
    iauAtoc13
    iauAtoi13
    iauAtoiq
    iauLd
    iauLdn
    iauLdsun
    iauPmpx
    iauPmsafe
    iauPvtob

    ;; Astronomy/Calendars
    iauCal2jd
    iauEpb
    iauEpb2jd
    iauEpj
    iauEpj2jd
    iauJd2cal
    iauJdcalf

    ;; Astronomy/Ephemerides
    iauEpv00
    iauPlan94

    ;; Astronomy/FundamentalArgs
    iauFad03
    iauFae03
    iauFaf03
    iauFaju03
    iauFal03
    iauFalp03
    iauFama03
    iauFame03
    iauFane03
    iauFaom03
    iauFapa03
    iauFasa03
    iauFaur03
    iauFave03

    ;; Astronomy/PrecNutPolar
    iauBi00
    iauBp00
    iauBp06
    iauBpn2xy
    iauC2i00a
    iauC2i00b
    iauC2i06a
    iauC2ibpn
    iauC2ixy
    iauC2ixys
    iauC2t00a
    iauC2t00b
    iauC2t06a
    iauC2tcio
    iauC2teqx
    iauC2tpe
    iauC2txy
    iauEo06a
    iauEors
    iauFw2m
    iauFw2xy
    iauNum00a
    iauNum00b
    iauNum06a
    iauNumat
    iauNut00a
    iauNut00b
    iauNut06a
    iauNut80
    iauNutm80
    iauObl06
    iauObl80
    iauP06e
    iauPb06
    iauPfw06
    iauPmat00
    iauPmat06
    iauPmat76
    iauPn00
    iauPn00a
    iauPn00b
    iauPn06
    iauPn06a
    iauPnm00a
    iauPnm00b
    iauPnm06a
    iauPnm80
    iauPom00
    iauPr00
    iauPrec76
    iauS00
    iauS00a
    iauS00b
    iauS06
    iauS06a
    iauSp00
    iauXy06
    iauXys00a
    iauXys00b
    iauXys06a

    ;; Astronomy/RotationAndTime
    iauEe00
    iauEe00a
    iauEe00b
    iauEe06a
    iauEect00
    iauEqeq94
    iauEra00
    iauGmst00
    iauGmst06
    iauGmst82
    iauGst00a
    iauGst00b
    iauGst06
    iauGst06a
    iauGst94

    ;; Astronomy/SpaceMotion
    iauPvstar
    iauStarpv

    ;; Astronomy/StarCatalogs
    iauFk52h
    iauFk5hip
    iauFk5hz
    iauH2fk5
    iauHfk5z
    iauStarpm

    ;; Astronomy/Geodetic/Geocentric
    iauEform
    iauGc2gd
    iauGc2gde
    iauGd2gc
    iauGd2gce

    ;; Astronomy/Timescales
    iauD2dtf
    iauDat
    iauDtdb
    iauDtf2d
    iauTaitt
    iauTaiut1
    iauTaiutc
    iauTcbtdb
    iauTcgtt
    iauTdbtcb
    iauTdbtt
    iauTttai
    iauTttcg
    iauTttdb
    iauTtut1
    iauUt1tai
    iauUt1tt
    iauUt1utc
    iauUtctai
    iauUtcut1

    ;; VectorMatrix/AngleOps
    iauA2af
    iauA2tf
    iauAf2a
    iauAnp
    iauAnpm
    iauD2tf
    iauTf2a
    iauTf2d

    ;; VectorMatrix/BuildRotations
    iauRx
    iauRy
    iauRz

    ;; VectorMatrix/CopyExtendExtract
    iauCp
    iauCpv
    iauCr
    iauP2pv
    iauPv2p

    ;; VectorMatrix/Initialization
    iauIr
    iauZp
    iauZpv
    iauZr

    ;; VectorMatrix/MatrixOps
    iauRxr
    iauTr

    ;; VectorMatrix/MatrixVectorProducts
    iauRxp
    iauRxpv
    iauTrxp
    iauTrxpv

    ;; VectorMatrix/RotationVectors
    iauRm2v
    iauRv2m

    ;; VectorMatrix/SeparationAndAngle
    iauPap
    iauPas
    iauSepp
    iauSeps

    ;; VectorMatrix/SphericalCartesian
    iauC2s
    iauP2s
    iauPv2s
    iauS2c
    iauS2p
    iauS2pv

    ;; VectorMatrix/VectorOps
    iauPdp
    iauPm
    iauPmp
    iauPn
    iauPpp
    iauPpsp
    iauPvdpv
    iauPvm
    iauPvmpv
    iauPvppv
    iauPvu
    iauPvup
    iauPvxpv
    iauPxp
    iauS2xpv
    iauSxp
    iauSxpv)
  (import (rnrs)
    (only (vicare astronomy sofa compat)
	  define-c-function))


;;;; Astronomy/Calendars

;; int iauCal2jd(int iy, int im, int id, double *djm0, double *djm)
(define-c-function int iauCal2jd (int int int double* double*))

;; double iauEpb(double dj1, double dj2);
(define-c-function double iauEpb (double double))

;; void iauEpb2jd(double epb, double *djm0, double *djm);
(define-c-function void iauEpb2jd (double double* double*))

;; double iauEpj(double dj1, double dj2);
(define-c-function double iauEpj (double double))

;; void iauEpj2jd(double epj, double *djm0, double *djm);
(define-c-function void iauEpj2jd (double double* double*))

;; int iauJd2cal(double dj1, double dj2, int *iy, int *im, int *id, double *fd);
(define-c-function int iauJd2cal (double double int* int* int* double*))

;; int iauJdcalf(int ndp, double dj1, double dj2, int iymdf[4]);
(define-c-function int iauJdcalf (int double double int*))


;;;; Astronomy/Ephemerides

;; int iauEpv00(double date1, double date2, double pvh[2][3], double pvb[2][3]);
(define-c-function int iauEpv00 (double double double* double*))

;; int iauPlan94(double date1, double date2, int np, double pv[2][3]);
(define-c-function int iauPlan94 (double double int double*))


;;;; Astronomy/FundamentalArgs

;; double iauFad03(double t);
(define-c-function double iauFad03 (double))

;; double iauFae03(double t);
(define-c-function double iauFae03 (double))

;; double iauFaf03(double t);
(define-c-function double iauFaf03 (double))

;; double iauFaju03(double t);
(define-c-function double iauFaju03 (double))

;; double iauFal03(double t);
(define-c-function double iauFal03 (double))

;; double iauFalp03(double t);
(define-c-function double iauFalp03 (double))

;; double iauFama03(double t);
(define-c-function double iauFama03 (double))

;; double iauFame03(double t);
(define-c-function double iauFame03 (double))

;; double iauFane03(double t);
(define-c-function double iauFane03 (double))

;; double iauFaom03(double t);
(define-c-function double iauFaom03 (double))

;; double iauFapa03(double t);
(define-c-function double iauFapa03 (double))

;; double iauFasa03(double t);
(define-c-function double iauFasa03 (double))

;; double iauFaur03(double t);
(define-c-function double iauFaur03 (double))

;; double iauFave03(double t);
(define-c-function double iauFave03 (double))


;;;; Astronomy/PrecNutPolar

;; void iauBi00(double *dpsibi, double *depsbi, double *dra);
(define-c-function void iauBi00 (double* double* double*))

;; void iauBp00(double date1, double date2,
;;              double rb[3][3], double rp[3][3], double rbp[3][3]);
(define-c-function void iauBp00 (double double double* double* double*))

;; void iauBp06(double date1, double date2,
;;              double rb[3][3], double rp[3][3], double rbp[3][3]);
(define-c-function void iauBp06 (double double double* double* double*))

;; void iauBpn2xy(double rbpn[3][3], double *x, double *y);
(define-c-function void iauBpn2xy (double* double* double*))

;; void iauC2i00a(double date1, double date2, double rc2i[3][3]);
(define-c-function void iauC2i00a (double double double*))

;; void iauC2i00b(double date1, double date2, double rc2i[3][3]);
(define-c-function void iauC2i00b (double double double*))

;; void iauC2i06a(double date1, double date2, double rc2i[3][3]);
(define-c-function void iauC2i06a (double double double*))

;; void iauC2ibpn(double date1, double date2, double rbpn[3][3], double rc2i[3][3]);
(define-c-function void iauC2ibpn (double double double* double*))

;; void iauC2ixy(double date1, double date2, double x, double y, double rc2i[3][3]);
(define-c-function void iauC2ixy (double double double double double*))

;; void iauC2ixys(double x, double y, double s, double rc2i[3][3]);
(define-c-function void iauC2ixys (double double double double*))

;; void iauC2t00a(double tta, double ttb, double uta, double utb,
;; 		      double xp, double yp, double rc2t[3][3]);
(define-c-function void iauC2t00a (double double double double double double double*))

;; void iauC2t00b(double tta, double ttb, double uta, double utb,
;;                double xp, double yp, double rc2t[3][3]);
(define-c-function void iauC2t00b (double double double double double double double*))

;; void iauC2t06a(double tta, double ttb, double uta, double utb,
;;                double xp, double yp, double rc2t[3][3]);
(define-c-function void iauC2t06a (double double double double double double double*))

;; void iauC2tcio(double rc2i[3][3], double era, double rpom[3][3],
;;                double rc2t[3][3]);
(define-c-function void iauC2tcio (double* double double* double*))

;; void iauC2teqx(double rbpn[3][3], double gst, double rpom[3][3],
;;                double rc2t[3][3]);
(define-c-function void iauC2teqx (double* double double* double*))

;; void iauC2tpe(double tta, double ttb, double uta, double utb,
;;               double dpsi, double deps, double xp, double yp,
;;               double rc2t[3][3]);
(define-c-function void iauC2tpe (double double double double
					 double double double double double*))

;; void iauC2txy(double tta, double ttb, double uta, double utb,
;;               double x, double y, double xp, double yp,
;;               double rc2t[3][3]);
(define-c-function void iauC2txy (double double double double
					 double double double double double*))

;; double iauEo06a(double date1, double date2);
(define-c-function double iauEo06a (double double))

;; double iauEors(double rnpb[3][3], double s);
(define-c-function double iauEors (double* double))

;; void iauFw2m(double gamb, double phib, double psi, double eps,
;;              double r[3][3]);
(define-c-function void iauFw2m (double double double double double*))

;; void iauFw2xy(double gamb, double phib, double psi, double eps,
;;               double *x, double *y);
(define-c-function void iauFw2xy (double double double double double* double*))

;; void iauNum00a(double date1, double date2, double rmatn[3][3]);
(define-c-function void iauNum00a (double double double*))

;; void iauNum00b(double date1, double date2, double rmatn[3][3]);
(define-c-function void iauNum00b (double double double*))

;; void iauNum06a(double date1, double date2, double rmatn[3][3]);
(define-c-function void iauNum06a (double double double*))

;; void iauNumat(double epsa, double dpsi, double deps, double rmatn[3][3]);
(define-c-function void iauNumat (double double double double*))

;; void iauNut00a(double date1, double date2, double *dpsi, double *deps);
(define-c-function void iauNut00a (double double double* double*))

;; void iauNut00b(double date1, double date2, double *dpsi, double *deps);
(define-c-function void iauNut00b (double double double* double*))

;; void iauNut06a(double date1, double date2, double *dpsi, double *deps);
(define-c-function void iauNut06a (double double double* double*))

;; void iauNut80(double date1, double date2, double *dpsi, double *deps);
(define-c-function void iauNut80 (double double double* double*))

;; void iauNutm80(double date1, double date2, double rmatn[3][3]);
(define-c-function void iauNutm80 (double double double*))

;; double iauObl06(double date1, double date2);
(define-c-function double iauObl06 (double double))

(define-c-function double iauObl80 (double double))

;; void iauP06e(double date1, double date2,
;;              double *eps0, double *psia, double *oma, double *bpa,
;;              double *bqa, double *pia, double *bpia,
;;              double *epsa, double *chia, double *za, double *zetaa,
;;              double *thetaa, double *pa,
;;              double *gam, double *phi, double *psi);
(define-c-function void iauP06e (double double
					double* double* double* double*
					double* double* double*
					double* double* double* double*
					double* double*
					double* double* double*))

;; void iauPb06(double date1, double date2,
;;              double *bzeta, double *bz, double *btheta);
(define-c-function void iauPb06 (double double double* double* double*))

;; void iauPfw06(double date1, double date2,
;;               double *gamb, double *phib, double *psib, double *epsa);
(define-c-function void iauPfw06 (double double double* double* double* double*))

;; void iauPmat00(double date1, double date2, double rbp[3][3]);
(define-c-function void iauPmat00 (double double double*))

;; void iauPmat06(double date1, double date2, double rbp[3][3]);
(define-c-function void iauPmat06 (double double double*))

;; void iauPmat76(double date1, double date2, double rmatp[3][3]);
(define-c-function void iauPmat76 (double double double*))

;; void iauPn00(double date1, double date2, double dpsi, double deps,
;;              double *epsa,
;;              double rb[3][3], double rp[3][3], double rbp[3][3],
;;              double rn[3][3], double rbpn[3][3]);
(define-c-function void iauPn00 (double double double double
					double*
					double* double* double*
					double* double*))

;; void iauPn00a(double date1, double date2,
;;               double *dpsi, double *deps, double *epsa,
;;               double rb[3][3], double rp[3][3], double rbp[3][3],
;;               double rn[3][3], double rbpn[3][3]);
(define-c-function void iauPn00a (double double
					 double* double* double*
					 double* double* double*
					 double* double*))

;; void iauPn00b(double date1, double date2,
;;               double *dpsi, double *deps, double *epsa,
;;               double rb[3][3], double rp[3][3], double rbp[3][3],
;;               double rn[3][3], double rbpn[3][3]);
(define-c-function void iauPn00b (double double
					 double* double* double*
					 double* double* double*
					 double* double*))

;; void iauPn06(double date1, double date2, double dpsi, double deps,
;;              double *epsa,
;;              double rb[3][3], double rp[3][3], double rbp[3][3],
;;              double rn[3][3], double rbpn[3][3]);
(define-c-function void iauPn06 (double double double double
					double*
					double* double* double*
					double* double))

;; void iauPn06a(double date1, double date2,
;;               double *dpsi, double *deps, double *epsa,
;;               double rb[3][3], double rp[3][3], double rbp[3][3],
;;               double rn[3][3], double rbpn[3][3]);
(define-c-function void iauPn06a (double double
					 double* double* double*
					 double* double* double*
					 double* double*))

;; void iauPnm00a(double date1, double date2, double rbpn[3][3]);
(define-c-function void iauPnm00a (double double double*))

;; void iauPnm00b(double date1, double date2, double rbpn[3][3]);
(define-c-function void iauPnm00b (double double double*))

;; void iauPnm06a(double date1, double date2, double rnpb[3][3]);
(define-c-function void iauPnm06a (double double double*))

;; void iauPnm80(double date1, double date2, double rmatpn[3][3]);
(define-c-function void iauPnm80 (double double double*))

;; void iauPom00(double xp, double yp, double sp, double rpom[3][3]);
(define-c-function void iauPom00 (double double double double*))

;; void iauPr00(double date1, double date2, double *dpsipr, double *depspr);
(define-c-function void iauPr00 (double double double* double*))

;; void iauPrec76(double ep01, double ep02, double ep11, double ep12,
;;                double *zeta, double *z, double *theta);
(define-c-function void iauPrec76 (double double double double double* double* double*))

;; double iauS00(double date1, double date2, double x, double y);
(define-c-function double iauS00 (double double double double))

;; double iauS00a(double date1, double date2);
(define-c-function double iauS00a (double double))

;; double iauS00b(double date1, double date2);
(define-c-function double iauS00b (double double))

;; double iauS06(double date1, double date2, double x, double y);
(define-c-function double iauS06 (double double double double))

;; double iauS06a(double date1, double date2);
(define-c-function double iauS06a (double double))

;; double iauSp00(double date1, double date2);
(define-c-function double iauSp00 (double double))

;; void iauXy06(double date1, double date2, double *x, double *y);
(define-c-function void iauXy06 (double double double* double*))

;; void iauXys00a(double date1, double date2,
;;                double *x, double *y, double *s);
(define-c-function void iauXys00a (double double double* double* double*))

;; void iauXys00b(double date1, double date2,
;;                double *x, double *y, double *s);
(define-c-function void iauXys00b (double double double* double* double*))

;; void iauXys06a(double date1, double date2,
;;                double *x, double *y, double *s);
(define-c-function void iauXys06a (double double double* double* double*))


;;;; Astronomy/RotationAndTime

;; double iauEe00(double date1, double date2, double epsa, double dpsi);
(define-c-function double iauEe00 (double double double double))

;; double iauEe00a(double date1, double date2);
(define-c-function double iauEe00a (double double))

;; double iauEe00b(double date1, double date2);
(define-c-function double iauEe00b (double double))

;; double iauEe06a(double date1, double date2);
(define-c-function double iauEe06a (double double))

;; double iauEect00(double date1, double date2);
(define-c-function double iauEect00 (double double))

;; double iauEqeq94(double date1, double date2);
(define-c-function double iauEqeq94 (double double))

;; double iauEra00(double dj1, double dj2);
(define-c-function double iauEra00 (double double))

;; double iauGmst00(double uta, double utb, double tta, double ttb);
(define-c-function double iauGmst00 (double double double double))

;; double iauGmst06(double uta, double utb, double tta, double ttb);
(define-c-function double iauGmst06 (double double double double))

;; double iauGmst82(double dj1, double dj2);
(define-c-function double iauGmst82 (double double))

;; double iauGst00a(double uta, double utb, double tta, double ttb);
(define-c-function double iauGst00a (double double double double))

;; double iauGst00b(double uta, double utb);
(define-c-function double iauGst00b (double double))

;; double iauGst06(double uta, double utb, double tta, double ttb,
;;                 double rnpb[3][3]);
(define-c-function double iauGst06 (double double double double double*))

;; double iauGst06a(double uta, double utb, double tta, double ttb);
(define-c-function double iauGst06a (double double double double))

;; double iauGst94(double uta, double utb);
(define-c-function double iauGst94 (double double))


;;;; Astronomy/SpaceMotion

;; int iauPvstar(double pv[2][3], double *ra, double *dec,
;;               double *pmr, double *pmd, double *px, double *rv);
(define-c-function int iauPvstar (double* double* double* double* double* double* double*))

;; int iauStarpv(double ra, double dec,
;;               double pmr, double pmd, double px, double rv,
;;               double pv[2][3]);
(define-c-function int iauStarpv (double double double double double double double*))


;;;; Astronomy/StarCatalogs

;; void iauFk52h(double r5, double d5,
;;               double dr5, double dd5, double px5, double rv5,
;;               double *rh, double *dh,
;;               double *drh, double *ddh, double *pxh, double *rvh);
(define-c-function void iauFk52h (double double
					 double double double double
					 double* double*
					 double* double* double* double*))

;; void iauFk5hip(double r5h[3][3], double s5h[3]);
(define-c-function void iauFk5hip (double* double*))

;; void iauFk5hz(double r5, double d5, double date1, double date2,
;;               double *rh, double *dh);
(define-c-function void iauFk5hz (double double double double double* double*))

;; void iauH2fk5(double rh, double dh,
;;               double drh, double ddh, double pxh, double rvh,
;;               double *r5, double *d5,
;;               double *dr5, double *dd5, double *px5, double *rv5);
(define-c-function void iauH2fk5 (double double
					 double double double double
					 double* double*
					 double* double* double* double*))

;; void iauHfk5z(double rh, double dh, double date1, double date2,
;;               double *r5, double *d5, double *dr5, double *dd5);
(define-c-function void iauHfk5z (double double double double
					 double* double* double* double*))

;; int iauStarpm(double ra1, double dec1,
;;               double pmr1, double pmd1, double px1, double rv1,
;;               double ep1a, double ep1b, double ep2a, double ep2b,
;;               double *ra2, double *dec2,
;;               double *pmr2, double *pmd2, double *px2, double *rv2);
(define-c-function int iauStarpm (double double
					 double double double double
					 double double double double
					 double* double*
					 double* double* double* double*))


;;;; Astronomy/Geodetic/Geocentric

;; int iauEform(int n, double *a, double *f);
(define-c-function int iauEform (int double* double*))

;; int iauGc2gd(int n, double xyz[3],
;;              double *elong, double *phi, double *height);
(define-c-function int iauGc2gd (int double*
				     double* double* double*))

;; int iauGc2gde(double a, double f, double xyz[3],
;;               double *elong, double *phi, double *height);
(define-c-function int iauGc2gde (double double double*
					 double* double* double*))

;; int iauGd2gc(int n, double elong, double phi, double height,
;;              double xyz[3]);
(define-c-function int iauGd2gc (int double double double double*))

;; int iauGd2gce(double a, double f,
;;               double elong, double phi, double height, double xyz[3]);
(define-c-function int iauGd2gce (double double double double double double*))


;;;; Astronomy/Timescales

;; int iauD2dtf(const char *scale, int ndp, double d1, double d2,
;;              int *iy, int *im, int *id, int ihmsf[4]);
(define-c-function int iauD2dtf (char* int double double int* int* int* int*))

;; int iauDat(int iy, int im, int id, double fd, double *deltat);
(define-c-function int iauDat (int int int double double*))

;; double iauDtdb(double date1, double date2,
;;                double ut, double elong, double u, double v);
(define-c-function double iauDtdb (double double double double double double))

;; int iauDtf2d(const char *scale, int iy, int im, int id,
;;              int ihr, int imn, double sec, double *d1, double *d2);
(define-c-function int iauDtf2d (char* int int int int int double double* double*))

;; int iauTaitt(double tai1, double tai2, double *tt1, double *tt2);
(define-c-function int iauTaitt (double double double* double*))

;; int iauTaiut1(double tai1, double tai2, double dta,
;;               double *ut11, double *ut12);
(define-c-function int iauTaiut1 (double double double double* double*))

;; int iauTaiutc(double tai1, double tai2, double *utc1, double *utc2);
(define-c-function int iauTaiutc (double double double* double*))

;; int iauTcbtdb(double tcb1, double tcb2, double *tdb1, double *tdb2);
(define-c-function int iauTcbtdb (double double double* double*))

;; int iauTcgtt(double tcg1, double tcg2, double *tt1, double *tt2);
(define-c-function int iauTcgtt (double double double* double*))

;; int iauTdbtcb(double tdb1, double tdb2, double *tcb1, double *tcb2);
(define-c-function int iauTdbtcb (double double double* double*))

;; int iauTdbtt(double tdb1, double tdb2, double dtr,
;;              double *tt1, double *tt2);
(define-c-function int iauTdbtt (double double double double* double*))

;; int iauTttai(double tt1, double tt2, double *tai1, double *tai2);
(define-c-function int iauTttai (double double double* double*))

;; int iauTttcg(double tt1, double tt2, double *tcg1, double *tcg2);
(define-c-function int iauTttcg (double double double* double*))

;; int iauTttdb(double tt1, double tt2, double dtr,
;;              double *tdb1, double *tdb2);
(define-c-function int iauTttdb (double double double double* double*))

;; int iauTtut1(double tt1, double tt2, double dt,
;;              double *ut11, double *ut12);
(define-c-function int iauTtut1 (double double double double* double*))

;; int iauUt1tai(double ut11, double ut12, double dta,
;;               double *tai1, double *tai2);
(define-c-function int iauUt1tai (double double double double* double*))

;; int iauUt1tt(double ut11, double ut12, double dt,
;;              double *tt1, double *tt2);
(define-c-function int iauUt1tt (double double double double* double*))

;; int iauUt1utc(double ut11, double ut12, double dut1,
;;               double *utc1, double *utc2);
(define-c-function int iauUt1utc (double double double double* double*))

;; int iauUtctai(double utc1, double utc2, double *tai1, double *tai2);
(define-c-function int iauUtctai (double double double* double*))

;; int iauUtcut1(double utc1, double utc2, double dut1,
;;               double *ut11, double *ut12);
(define-c-function int iauUtcut1 (double double double double* double*))


;;;; Astronomy/Astrometry

;; void iauAb(double pnat[3], double v[3], double s, double bm1,
;;            double ppr[3]);
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAb (double* double* double double double*))

;; void iauApcg(double date1, double date2, double ebpv[2][3], double ehp[3],
;;              iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApcg (double double double* double* void*))

;; void iauApcg13(double date1, double date2, iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApcg13 (double double void*))

;; void iauApci(double date1, double date2,
;;              double ebpv[2][3], double ehp[3],
;;              double x, double y, double s,
;;              iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApci (double double double* double*
					double double double void*))

;; void iauApci13(double date1, double date2,
;;                iauASTROM *astrom, double *eo)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApci13 (double double void* double*))

;; void iauApco(double date1, double date2,
;;              double ebpv[2][3], double ehp[3],
;;              double x, double y, double s, double theta,
;;              double elong, double phi, double hm,
;;              double xp, double yp, double sp,
;;              double refa, double refb,
;;              iauASTROM *astrom);
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApco (double double double* double*
					double double double double
					double double double double
					double double double double
					void*))

;; int iauApco13(double utc1, double utc2, double dut1,
;;               double elong, double phi, double hm, double xp, double yp,
;;               double phpa, double tk, double rh, double wl,
;;               iauASTROM *astrom, double *eo)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function int iauApco13 (double double double
					 double double double double double
					 double double double double
					 void* double))

;; void iauApcs(double date1, double date2, double pv[2][3],
;;              double ebpv[2][3], double ehp[3],
;;              iauASTROM *astrom);
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApcs (double double double* double* double* void*))

;; void iauApcs13(double date1, double date2, double pv[2][3],
;;                iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApcs13 (double double double* void*))

;; void iauAper(double theta, iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAper (double void*))

;; void iauAper13(double ut11, double ut12, iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAper13 (double double void*))

;; void iauApio(double sp, double theta,
;;              double elong, double phi, double hm, double xp, double yp,
;;              double refa, double refb,
;;              iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauApio (double double double double double
					double double double double
					void*))

;; int iauApio13(double utc1, double utc2, double dut1,
;;               double elong, double phi, double hm, double xp, double yp,
;;               double phpa, double tk, double rh, double wl,
;;               iauASTROM *astrom)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function int iauApio13 (double double double
					 double double double double double
					 double double double double void*))

;; void iauAtci13(double rc, double dc,
;;                double pr, double pd, double px, double rv,
;;                double date1, double date2,
;;                double *ri, double *di, double *eo)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAtci13 (double double
					  double double double double
					  double double
					  double* double* double*))

;; void iauAtciq(double rc, double dc, double pr, double pd,
;;               double px, double rv, iauASTROM *astrom,
;;               double *ri, double *di)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAtciq (double double double double
					 double double void*
					 double double))

;; void iauAtciqn(double rc, double dc, double pr, double pd,
;;                double px, double rv, iauASTROM *astrom,
;;                int n, iauLDBODY b[], double *ri, double *di)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAtciqn (double double double double
					  double double void*
					  int void* double* double*))

;; void iauAtciqz(double rc, double dc, iauASTROM *astrom,
;;                double *ri, double *di)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAtciqz (double double void* double* double*))

;; int iauAtco13(double rc, double dc,
;;               double pr, double pd, double px, double rv,
;;               double utc1, double utc2, double dut1,
;;               double elong, double phi, double hm, double xp, double yp,
;;               double phpa, double tk, double rh, double wl,
;;               double *aob, double *zob, double *hob,
;;               double *dob, double *rob, double *eo)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function int iauAtco13 (double double
					 double double double double
					 double double double
					 double double double double double
					 double double double double
					 double* double* double*
					 double* double* double*))

;; void iauAtic13(double ri, double di,
;;                double date1, double date2,
;;                double *rc, double *dc, double *eo)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAtic13 (double double double double double* double* double*))

;; void iauAticq(double ri, double di, iauASTROM *astrom,
;;               double *rc, double *dc)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAticq (double double void* double* double*))

;; void iauAticqn(double ri, double di, iauASTROM *astrom,
;;                int n, iauLDBODY b[], double *rc, double *dc)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAticqn (double double void* int void* double* double*))

;; int iauAtio13(double ri, double di,
;;               double utc1, double utc2, double dut1,
;;               double elong, double phi, double hm, double xp, double yp,
;;               double phpa, double tk, double rh, double wl,
;;               double *aob, double *zob, double *hob,
;;               double *dob, double *rob)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function int iauAtio13 (double double
					 double double double
					 double double double double double
					 double double double double
					 double* double* double*
					 double* double*))

;; void iauAtioq(double ri, double di, iauASTROM *astrom,
;;               double *aob, double *zob,
;;               double *hob, double *dob, double *rob)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAtioq (double double void*
					 double* double*
					 double* double* double*))

;; int iauAtoc13(const char *type, double ob1, double ob2,
;;               double utc1, double utc2, double dut1,
;;               double elong, double phi, double hm, double xp, double yp,
;;               double phpa, double tk, double rh, double wl,
;;               double *rc, double *dc)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function int iauAtoc13 (void* double double
					double double double
					double double double double double
					double double double double
					double* double*))

;; int iauAtoi13(const char *type, double ob1, double ob2,
;;               double utc1, double utc2, double dut1,
;;               double elong, double phi, double hm, double xp, double yp,
;;               double phpa, double tk, double rh, double wl,
;;               double *ri, double *di)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function  int iauAtoi13 (void* double double
					 double double double
					 double double double double double
					 double double double double
					 double* double*))

;; void iauAtoiq(const char *type,
;;               double ob1, double ob2, iauASTROM *astrom,
;;               double *ri, double *di)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauAtoiq (void* double double void* double* double*))

;; void iauLd(double bm, double p[3], double q[3], double e[3],
;;            double em, double dlim, double p1[3])
;;
;; added by SOFA-Issue: 2013-12-02
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauLd (double double* double* double* double double double*))

;; void iauLdn(int n, iauLDBODY b[], double ob[3], double sc[3],
;;             double sn[3])
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauLdn (int void* double* double* double*))

;; void iauLdsun(double p[3], double e[3], double em, double p1[3])
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauLdsun (double* double* double double*))

;; void iauPmpx(double rc, double dc, double pr, double pd,
;;              double px, double rv, double pmt, double vob[3],
;;              double pco[3])
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauPmpx (double double double double
					double double double double*
					double*))

;; int iauPmsafe(double ra1, double dec1, double pmr1, double pmd1,
;;               double px1, double rv1,
;;               double ep1a, double ep1b, double ep2a, double ep2b,
;;               double *ra2, double *dec2, double *pmr2, double *pmd2,
;;               double *px2, double *rv2)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function int iauPmsafe (double double double double
					 double double
					 double double double double
					 double* double* double* double*
					 double* double*))

;; void iauPvtob(double elong, double phi, double hm,
;;               double xp, double yp, double sp, double theta,
;;               double pv[2][3])
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauPvtob (double double double
					 double double double double
					 double*))

;; void iauRefco(double phpa, double tk, double rh, double wl,
;;               double *refa, double *refb)
;;
;; added by SOFA-Issue: 2013-12-02
(define-c-function void iauRefco (double double double double double* double*))


;;;; VectorMatrix/AngleOps

;; void iauA2af(int ndp, double angle, char *sign, int idmsf[4]);
(define-c-function void iauA2af (int double char* int*))

;; void iauA2tf(int ndp, double angle, char *sign, int ihmsf[4]);
(define-c-function void iauA2tf (int double char* int*))

;; int iauAf2a(char s, int ideg, int iamin, double asec, double *rad);
(define-c-function int iauAf2a (char int int double double*))

;; double iauAnp(double a);
(define-c-function double iauAnp (double))

;; double iauAnpm(double a);
(define-c-function double iauAnpm (double))

;; void iauD2tf(int ndp, double days, char *sign, int ihmsf[4]);
(define-c-function void iauD2tf (int double char* int*))

;; int iauTf2a(char s, int ihour, int imin, double sec, double *rad);
(define-c-function int iauTf2a (char int int double double*))

;; int iauTf2d(char s, int ihour, int imin, double sec, double *days);
(define-c-function int iauTf2d (char int int double double*))


;;;; VectorMatrix/BuildRotations

;; void iauRx(double phi, double r[3][3]);
(define-c-function void iauRx (double double*))

;; void iauRy(double theta, double r[3][3]);
(define-c-function void iauRy (double double*))

;; void iauRz(double psi, double r[3][3]);
(define-c-function void iauRz (double double*))


;;;; VectorMatrix/CopyExtendExtract

;; void iauCp(double p[3], double c[3]);
(define-c-function void iauCp (double* double*))

;; void iauCpv(double pv[2][3], double c[2][3]);
(define-c-function void iauCpv (double* double*))

;; void iauCr(double r[3][3], double c[3][3]);
(define-c-function void iauCr (double* double*))

;; void iauP2pv(double p[3], double pv[2][3]);
(define-c-function void iauP2pv (double* double*))

;; void iauPv2p(double pv[2][3], double p[3]);
(define-c-function void iauPv2p (double* double*))


;;;; VectorMatrix/Initialization

;; void iauIr(double r[3][3]);
(define-c-function void iauIr (double*))

;; void iauZp(double p[3]);
(define-c-function void iauZp (double*))

;; void iauZpv(double pv[2][3]);
(define-c-function void iauZpv (double*))

;; void iauZr(double r[3][3]);
(define-c-function void iauZr (double*))


;;;; VectorMatrix/MatrixOps

;; void iauRxr(double a[3][3], double b[3][3], double atb[3][3]);
(define-c-function void iauRxr (double* double* double*))

;; void iauTr(double r[3][3], double rt[3][3]);
(define-c-function void iauTr (double* double*))


;;;; VectorMatrix/MatrixVectorProducts

;; void iauRxp(double r[3][3], double p[3], double rp[3]);
(define-c-function void iauRxp (double* double* double*))

;; void iauRxpv(double r[3][3], double pv[2][3], double rpv[2][3]);
(define-c-function void iauRxpv (double* double* double*))

;; void iauTrxp(double r[3][3], double p[3], double trp[3]);
(define-c-function void iauTrxp (double* double* double*))

;; void iauTrxpv(double r[3][3], double pv[2][3], double trpv[2][3]);
(define-c-function void iauTrxpv (double* double* double*))


;;;; VectorMatrix/RotationVectors

;; void iauRm2v(double r[3][3], double w[3]);
(define-c-function void iauRm2v (double* double*))

;; void iauRv2m(double w[3], double r[3][3]);
(define-c-function void iauRv2m (double* double*))


;;;; VectorMatrix/SeparationAndAngle

;; double iauPap(double a[3], double b[3]);
(define-c-function double iauPap (double* double*))

;; double iauPas(double al, double ap, double bl, double bp);
(define-c-function double iauPas (double double double double))

;; double iauSepp(double a[3], double b[3]);
(define-c-function double iauSepp (double* double*))

;; double iauSeps(double al, double ap, double bl, double bp);
(define-c-function double iauSeps (double double double double))


;;;; VectorMatrix/SphericalCartesian

;; void iauC2s(double p[3], double *theta, double *phi);
(define-c-function void iauC2s (double* double* double*))

;; void iauP2s(double p[3], double *theta, double *phi, double *r);
(define-c-function void iauP2s (double* double* double* double*))

;; void iauPv2s(double pv[2][3],
;;              double *theta, double *phi, double *r,
;;              double *td, double *pd, double *rd);
(define-c-function void iauPv2s (double*
				 double* double* double*
				 double* double* double*))

;; void iauS2c(double theta, double phi, double c[3]);
(define-c-function void iauS2c (double double double*))

;; void iauS2p(double theta, double phi, double r, double p[3]);
(define-c-function void iauS2p (double double double double*))

;; void iauS2pv(double theta, double phi, double r,
;;              double td, double pd, double rd,
;;              double pv[2][3]);
(define-c-function void iauS2pv (double double double
					double double double
					double*))


;;;; VectorMatrix/VectorOps

;; double iauPdp(double a[3], double b[3]);
(define-c-function double iauPdp (double* double*))

;; double iauPm(double p[3]);
(define-c-function double iauPm (double*))

;; void iauPmp(double a[3], double b[3], double amb[3]);
(define-c-function void iauPmp (double* double* double*))

;; void iauPn(double p[3], double *r, double u[3]);
(define-c-function void iauPn (double* double* double*))

;; void iauPpp(double a[3], double b[3], double apb[3]);
(define-c-function void iauPpp (double* double* double*))

;; void iauPpsp(double a[3], double s, double b[3], double apsb[3]);
(define-c-function void iauPpsp (double* double double* double*))

;; void iauPvdpv(double a[2][3], double b[2][3], double adb[2]);
(define-c-function void iauPvdpv (double* double* double*))

;; void iauPvm(double pv[2][3], double *r, double *s);
(define-c-function void iauPvm (double* double* double*))

;; void iauPvmpv(double a[2][3], double b[2][3], double amb[2][3]);
(define-c-function void iauPvmpv (double* double* double*))

;; void iauPvppv(double a[2][3], double b[2][3], double apb[2][3]);
(define-c-function void iauPvppv (double* double* double*))

;; void iauPvu(double dt, double pv[2][3], double upv[2][3]);
(define-c-function void iauPvu (double double* double*))

;; void iauPvup(double dt, double pv[2][3], double p[3]);
(define-c-function void iauPvup (double double* double*))

;; void iauPvxpv(double a[2][3], double b[2][3], double axb[2][3]);
(define-c-function void iauPvxpv (double* double* double*))

;; void iauPxp(double a[3], double b[3], double axb[3]);
(define-c-function void iauPxp (double* double* double*))

;; void iauS2xpv(double s1, double s2, double pv[2][3], double spv[2][3]);
(define-c-function void iauS2xpv (double double double* double*))

;; void iauSxp(double s, double p[3], double sp[3]);
(define-c-function void iauSxp (double double* double*))

;; void iauSxpv(double s, double pv[2][3], double spv[2][3]);
(define-c-function void iauSxpv (double double* double*))


;;;; done

)

;;; end of file
