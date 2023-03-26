cmake --version
mkdir solver_application/build
cd solver_application/build
cmake -DCPACK_GENERATOR_DMG=ON ..
make package
make package_source
cd ..
mkdir artifacts          
mv build/*.dmg artifacts
mv build/*.zip artifacts
mv build/*.tar.gz artifacts
