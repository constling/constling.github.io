set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs-ninja,ninja
set GYP_MSVS_VERSION=2017
set DEPOT_TOOLS_UPDATE=0

cd src

gn gen out/debug --ide=vs2017 --sln=aef --no-deps --args="is_debug=true is_component_build=false target_cpu =\"x86\" enable_nacl = false is_clang = false ffmpeg_branding=\"Chrome\" proprietary_codecs=true"
#gn gen out/debug --ide=vs2017 --filters=//base:*;//content:*;//aef:* --sln=aef --no-deps --args="is_debug=true is_component_build=true target_cpu =\"x86\" enable_nacl = false is_clang = false ffmpeg_branding=\"Chrome\" proprietary_codecs=true"