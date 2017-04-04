REM clone leveldb
if not exist build\leveldb git clone https://github.com/elementrem/leveldb build\leveldb
cd build\leveldb\win

REM build leveldb
@echo build leveldb
%MSBuild% LibLevelDB.sln /property:Configuration=%CONFIGURATION% /property:Platform=%PLATFORM% /verbosity:minimal

@echo built
REM leveldb built
cd ..\..\..
