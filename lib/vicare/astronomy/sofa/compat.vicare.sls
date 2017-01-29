;;; -*- coding: utf-8-unix -*-
;;;
;;;Part of: R6RS SOFA
;;;Contents: Vicare Scheme specific functions
;;;Date: Sun Jan 13, 2013
;;;
;;;Abstract
;;;
;;;
;;;
;;;Copyright (C) 2013, 2014, 2015, 2017 Marco Maggi <marco.maggi-ipsu@poste.it>
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


#!vicare
(library (vicare astronomy sofa compat)
  (options typed-language)
  (export
    with-local-storage
    define-c-function
    local-storage-ref-c-double)
  (import (except (vicare)
		  with-local-storage)
    (prefix (vicare ffi) ffi::)
    (prefix (vicare platform words) words::))


(define-syntax define-c-function
  (lambda (stx)
    (import (prefix (vicare expander) xp::))
    (define ({%external-type-id->internal-type-id <top>} type-id)
      (datum->syntax type-id
		     (%external-type-symbol->internal-type-symbol
		      (syntax->datum type-id))))

    (define ({%external-type-symbol->internal-type-symbol <symbol>} type-sym)
      (case type-sym
	((int)		'signed-int)
	((int*)		'pointer)
	((char)		'signed-char)
	((char*)	'pointer)
	((double*)	'pointer)
	((double)	'double)
	((void*)	'pointer)
	(else		type-sym)))

    (define (main stx)
      (syntax-case stx ()
	((_ ?retval-type ?c-function-name (?arg-type ...))
	 (with-syntax
	     ((RETVAL-TYPE	(%external-type-id->internal-type-id #'?retval-type))
	      (FUNC-NAME	(symbol->string (syntax->datum #'?c-function-name)))
	      ((ARG-TYPES ...)	(map %external-type-id->internal-type-id
				  (xp::syntax->list #'(?arg-type ...)))))
	   #'(define ?c-function-name
	       ((ffi::make-c-callout-maker (quote RETVAL-TYPE)
					  (quote (ARG-TYPES ...)))
		(ffi::dlsym libsofac FUNC-NAME)))))))

    (main stx)))


(define-syntax with-local-storage
  (lambda (stx)
    (import (prefix (vicare expander) xp::))
    (define ({%external-type-id->internal-type-size <top>} type-id)
      (case (syntax->datum type-id)
	((int)		#'words::SIZEOF_INT)
	((double)	#'words::SIZEOF_DOUBLE)
	(else
	 (synner "unknown type identifier" type-id))))

    (define (synner message subform)
      (syntax-violation 'with-local-storage message stx subform))

    (define (main stx)
      (syntax-case stx ()
	((_ ((?var ?size) ...) ?body0 ?body ...)
	 (with-syntax
	     (((SIZE ...) (map %external-type-id->internal-type-size
			    (xp::syntax->list #'(?size ...)))))
	   ;;FIXME This ugly  hack of converting to list  and the applying
	   ;;to VALUES is needed  because WITH-LOCAL-STORAGE is broken and
	   ;;does not return  multiple values.  (Marco Maggi;  Mon Jan 14,
	   ;;2013)
	   #'(apply values
		    (ffi::with-local-storage (vector SIZE ...)
		      (lambda (?var ...)
			(call-with-values
			    (lambda () ?body0 ?body ...)
			  list))))))))

    (main stx)))

(define-syntax local-storage-ref-c-double
  (syntax-rules ()
    ((_ ?bv)
     (ffi::pointer-ref-c-double ?bv 0))))


(define libsofac
  (ffi::open-shared-object "libsofac.so.1"))


;;;; done

)

;;; end of file
;; Local Variables:
;; eval: (put 'ffi::with-local-storage 'scheme-indent-function 1)
;; End:
