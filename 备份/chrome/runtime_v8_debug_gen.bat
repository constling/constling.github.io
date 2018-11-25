set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs-ninja,ninja
set GYP_MSVS_VERSION=2017
set DEPOT_TOOLS_UPDATE=0

cd src

gn gen out/runtime_v8_debug --ide=vs2017 --filters=//runtime_v8:* --sln=runtimev8 --no-deps --args="is_debug=true is_component_build=false target_cpu =\"x86\" enable_nacl=false is_clang=false ffmpeg_branding=\"Chrome\" proprietary_codecs=true"