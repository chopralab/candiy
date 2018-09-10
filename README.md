## About
This project is the 'master' build for all projects in the CANDIY Suite. It handles all dependencies, both external and internal.

## Building CANDIY

First, obtain a copy of this repository using *git*. Do not use the tarball option as this will cause the next few commands to fail.

```bash
git clone https://gitlab.com/candiy/candiy.git
cd candiy
```

Next, use the following commands to download the CANDIY Suite. Please note that you will need to have *git* SSH keys properly set up in **GitLab** to have this happen automatically. If not, you maybe prompted for your **GitLab** username and password. 

```bash
git submodule init
git submodule update
```

Finally, use the following commands to build the CANDIY Suite:

```bash
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=${path_to_my_custom_programs}
make -j ${my_number_of_cores}
```

Note that by default, CANDIY is build in release mode with all functionality, but tests are disabled by default!
