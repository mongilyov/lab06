mkdir solver_application/build
cd solver_application/build
cmake -DCPACK_GENERATOR_DEB=ON ..
make package
make package_source
mkdir artifacts          
ls
ls solver/application/build
mv solver_application/build/*.deb artifacts
mv solver_application/build/*.zip artifacts
mv solver/application/build/*.tar.gz artifacts
