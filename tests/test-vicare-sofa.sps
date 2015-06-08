;;; -*- coding: utf-8-unix -*-
;;;
;;;Part of: Vicare/SOFA
;;;Contents: tests for SOFA bindings
;;;Date: Tue Jan 24, 2012
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


#!r6rs
(import (vicare)
  (prefix (vicare astronomy sofa) sofa.)
  (vicare checks))

(check-set-mode! 'report-failed)
(check-display "*** testing Vicare SOFA bindings\n")


;;;; helpers



(parametrise ((check-test-name	'julian-day-number))

  (check
      (let ((iy	2013) ;;Year in Gregorian calendar.
	    (im	1)    ;;Month in Gregorian calendar.
	    (id	13))  ;;Day in Gregorian calendar.
	(let-values (((status mjd0 mjd)
		      (sofa.cal2jd iy im id)))
	  (list status (+ mjd0 mjd 0.5))))
    => '(0 2456306.0)) ;;Julian day number at 12:00.

  (collect 4))


;;;; done

(collect 4)
(check-report)

;;; end of file
