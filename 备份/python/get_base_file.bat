set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs-ninja,ninja
set GYP_MSVS_VERSION=2017
set DEPOT_TOOLS_UPDATE=0

set CHROMIUM_BUILDTOOLS_PATH=C:\Document\work_code\elect\src\buildtools

echo "begin to get base file list"

cd ../src

gn desc out/Debug //base:base sources