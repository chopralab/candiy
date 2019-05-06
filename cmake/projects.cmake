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

# Chemfiles
list(APPEND projects chemfiles)
set(chfl_git_url "https://github.com/frodofine/chemfiles.git")
set(chfl_git_branch "read_from_memory_2")

# PugiXML
list(APPEND projects chemfiles)
set(pugi_url "https://github.com/zeux/pugixml/releases/download/v1.9/pugixml-1.9.tar.gz")
set(pugi_md5 "7286ee2ed11376b6b780ced19fae0b64")
