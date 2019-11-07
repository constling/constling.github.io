set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs-ninja,ninja
set GYP_MSVS_VERSION=2017
set DEPOT_TOOLS_UPDATE=0

cd v8
gn gen out/debug --ide=vs2017 --args="is_debug=true is_component_build=false target_cpu =\"x86\"
