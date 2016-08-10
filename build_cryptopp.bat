REM clone cryptopp
if not exist build\cryptopp git clone -q https://github.com/elementrem/cryptopp build\cryptopp
cd build\cryptopp\win
git checkout -qf 

REM build cryptopp
%MSBuild% LibCryptoPP.sln /property:Configuration=%CONFIGURATION% /property:Platform=%PLATFORM% /verbosity:minimal

REM cryptopp built
cd ..\..\..
