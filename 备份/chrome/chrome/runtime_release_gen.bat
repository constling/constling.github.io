set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs-ninja,ninja
set GYP_MSVS_VERSION=2017
set DEPOT_TOOLS_UPDATE=0

cd src

gn gen out/runtime_v8_release --ide=vs2017 --filters=//base:*;//v8:*;//gin:*;//runtime_v8:* --sln=1runtime --args="is_aef_build_support_xp=true is_debug=false use_jumbo_build=true remove_webcore_debug_symbols = true is_component_build=false target_cpu =\"x86\" enable_nacl = false is_clang = false"