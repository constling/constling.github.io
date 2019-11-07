set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs-ninja,ninja
set GYP_MSVS_VERSION=2017
set DEPOT_TOOLS_UPDATE=0

cd v8
::gn ls out/debug
::C:\Document\work_code\v8\v8\out\debug\cctest.exe --gtest_filter=StartupSerializerOnce

ninja -C out/debug testing/gtest:gtest_main