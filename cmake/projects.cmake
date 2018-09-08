unset(projects)

# OpenMM
list(APPEND projects openmm)
set(openmm_version "7.2.2")
set(openmm_url "https://github.com/pandegroup/openmm/archive/${openmm_version}.tar.gz")
set(openmm_md5 "06c44b6703c6f1d6f2908d56600ad6b6")

# GSL
list(APPEND projects gsl)
set(gsl_version "2.5.0")
set(gsl_url "https://github.com/ampl/gsl/archive/v${gsl_version}.tar.gz")
set(gsl_md5 "78419573df6db3186c651ac9ca3d5d38")

