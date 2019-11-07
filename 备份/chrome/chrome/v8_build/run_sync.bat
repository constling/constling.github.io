set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_GENERATORS=msvs-ninja,ninja
set GYP_MSVS_VERSION=2017
set DEPOT_TOOLS_UPDATE=0

gclient sync --with_branch_heads --reset --nohooks