;;; -*- coding: utf-8-unix -*-
;;;
;;;Part of: Vicare/SOFA
;;;Contents: SOFA binding backend
;;;Date: Mon Jun  8, 2015
;;;
;;;Abstract
;;;
;;;
;;;
;;;Copyright (C) 2013-2015 Marco Maggi <marco.maggi-ipsu@poste.it>
;;;
;;;This program is free software:  you can redistribute it and/or modify
;;;it under the terms of the  GNU General Public License as published by
;;;the Free Software Foundation, either version 3 of the License, or (at
;;;your option) any later version.
;;;
;;;This program is  distributed in the hope that it  will be useful, but
;;;WITHOUT  ANY   WARRANTY;  without   even  the  implied   warranty  of
;;;MERCHANTABILITY  or FITNESS FOR  A PARTICULAR  PURPOSE.  See  the GNU
;;;General Public License for more details.
;;;
;;;You should  have received  a copy of  the GNU General  Public License
;;;along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;


#!vicare
(library (vicare astronomy sofa)
  (export
    cal2jd

    ;; reexported from (sofa constants)
    DPI			D2PI		DD2R		DR2AS
    DAS2R		DS2R		TURNAS		DMAS2R
    DTY			DAYSEC		DJY		DJC
    DJM			DJ00		DJM0		DJM00
    DJM77		TTMTAI		DAU		DC
    ELG			ELB		TDB0		dint
    dnint		dsign		WGS84		GRS80
    WGS72

    ;; reexported from (sofa constants), added by SOFA-Issue: 2013-12-02
    DR2D		CMPS		AULT		SRS
    )
  (import (except (vicare (or (0 4 2015 5 (>= 26))
			      (0 4 2015 (>= 6))
			      (0 4 (>= 2016))))
		  with-local-storage)
    (vicare astronomy sofa functions)
    (vicare astronomy sofa constants)
    (only (vicare astronomy sofa compat)
	  with-local-storage
	  local-storage-ref-c-double))


;;;; code

(define (cal2jd iy im id)
  (with-local-storage ((&mjd0	double)
		       (&mjd	double))
    (let ((status (iauCal2jd iy im id &mjd0 &mjd)))
      (values status
	      (local-storage-ref-c-double &mjd0)
	      (local-storage-ref-c-double &mjd)))))


;;;; done

#| end of LIBRARY |# )

;;; end of file
;; Local Variables:
;; eval: (put 'ffi.define-foreign-pointer-wrapper 'scheme-indent-function 1)
;; End:
