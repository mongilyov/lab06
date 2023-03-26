mkdir solver_application/build
cd solver_application/build
cmake -DCPACK_GENERATOR_DMG=ON ..
make package
make package_source
mkdir artifact          
mv solver_application/build/*.dmg artifact
mv solver_application/build/*.zip artifact
mv solver/application/build/*.tar.gz artifact
