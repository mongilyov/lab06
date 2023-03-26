cd solver_application/build
cmake -DCPACK_GENERATOR_DMG=ON ..
make package
make package_source
mkdir artifacts          
mv solver_application/build/*.dmg artifacts
mv solver_application/build/*.zip artifacts
mv solver/application/build/*.tar.gz artifacts
