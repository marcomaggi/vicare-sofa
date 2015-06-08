## dependencies.make --
#
# Automatically built.

lib/vicare/astronomy/sofa.fasl: \
		lib/vicare/astronomy/sofa.vicare.sls \
		lib/vicare/astronomy/sofa/functions.fasl \
		lib/vicare/astronomy/sofa/constants.fasl \
		lib/vicare/astronomy/sofa/compat.fasl \
		$(FASL_PREREQUISITES)
	$(VICARE_COMPILE_RUN) --output $@ --compile-library $<

lib_vicare_astronomy_sofa_fasldir = $(bundledlibsdir)/vicare/astronomy
lib_vicare_astronomy_sofa_vicare_slsdir  = $(bundledlibsdir)/vicare/astronomy
nodist_lib_vicare_astronomy_sofa_fasl_DATA = lib/vicare/astronomy/sofa.fasl
if WANT_INSTALL_SOURCES
dist_lib_vicare_astronomy_sofa_vicare_sls_DATA = lib/vicare/astronomy/sofa.vicare.sls
endif
EXTRA_DIST += lib/vicare/astronomy/sofa.vicare.sls
CLEANFILES += lib/vicare/astronomy/sofa.fasl

lib/vicare/astronomy/sofa/functions.fasl: \
		lib/vicare/astronomy/sofa/functions.vicare.sls \
		lib/vicare/astronomy/sofa/compat.fasl \
		$(FASL_PREREQUISITES)
	$(VICARE_COMPILE_RUN) --output $@ --compile-library $<

lib_vicare_astronomy_sofa_functions_fasldir = $(bundledlibsdir)/vicare/astronomy/sofa
lib_vicare_astronomy_sofa_functions_vicare_slsdir  = $(bundledlibsdir)/vicare/astronomy/sofa
nodist_lib_vicare_astronomy_sofa_functions_fasl_DATA = lib/vicare/astronomy/sofa/functions.fasl
if WANT_INSTALL_SOURCES
dist_lib_vicare_astronomy_sofa_functions_vicare_sls_DATA = lib/vicare/astronomy/sofa/functions.vicare.sls
endif
EXTRA_DIST += lib/vicare/astronomy/sofa/functions.vicare.sls
CLEANFILES += lib/vicare/astronomy/sofa/functions.fasl

lib/vicare/astronomy/sofa/compat.fasl: \
		lib/vicare/astronomy/sofa/compat.vicare.sls \
		$(FASL_PREREQUISITES)
	$(VICARE_COMPILE_RUN) --output $@ --compile-library $<

lib_vicare_astronomy_sofa_compat_fasldir = $(bundledlibsdir)/vicare/astronomy/sofa
lib_vicare_astronomy_sofa_compat_vicare_slsdir  = $(bundledlibsdir)/vicare/astronomy/sofa
nodist_lib_vicare_astronomy_sofa_compat_fasl_DATA = lib/vicare/astronomy/sofa/compat.fasl
if WANT_INSTALL_SOURCES
dist_lib_vicare_astronomy_sofa_compat_vicare_sls_DATA = lib/vicare/astronomy/sofa/compat.vicare.sls
endif
EXTRA_DIST += lib/vicare/astronomy/sofa/compat.vicare.sls
CLEANFILES += lib/vicare/astronomy/sofa/compat.fasl

lib/vicare/astronomy/sofa/constants.fasl: \
		lib/vicare/astronomy/sofa/constants.vicare.sls \
		$(FASL_PREREQUISITES)
	$(VICARE_COMPILE_RUN) --output $@ --compile-library $<

lib_vicare_astronomy_sofa_constants_fasldir = $(bundledlibsdir)/vicare/astronomy/sofa
lib_vicare_astronomy_sofa_constants_vicare_slsdir  = $(bundledlibsdir)/vicare/astronomy/sofa
nodist_lib_vicare_astronomy_sofa_constants_fasl_DATA = lib/vicare/astronomy/sofa/constants.fasl
if WANT_INSTALL_SOURCES
dist_lib_vicare_astronomy_sofa_constants_vicare_sls_DATA = lib/vicare/astronomy/sofa/constants.vicare.sls
endif
EXTRA_DIST += lib/vicare/astronomy/sofa/constants.vicare.sls
CLEANFILES += lib/vicare/astronomy/sofa/constants.fasl


### end of file
# Local Variables:
# mode: makefile-automake
# End:
