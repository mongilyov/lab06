mkdir solver_application/build
cd solver_application/build
cmake -DCPACK_GENERATOR_DEB=ON ..
make package
make package_source
mkdir artifacts
pwd          
ls
pwd
ls solver_application/build
mv solver_application/build/*.deb artifacts
mv solver_application/build/*.zip artifacts
mv solver_application/build/*.tar.gz artifacts
