workspace "WorkspaceName"
    configurations {"Debug", "Release"}

    default_asset_path, err = os.realpath("EngineName")
    sandbox_asset_path, err = os.realpath("AppName")
    default_asset_path = string.gsub(default_asset_path, "\\", "/")
    sandbox_asset_path = string.gsub(sandbox_asset_path, "\\", "/")
    defines {
        "DEFAULT_ASSETS_DIRECTORY=\"".. default_asset_path .. "/default_assets\"",
        "SANDBOX_ASSETS_DIRECTORY=\"".. sandbox_asset_path .. "/assets\""
    }

    filter "system:windows"
        defines { "PLATFORM_WINDOWS" }
    filter "system:linux"
        defines { "PLATFORM_LINUX" }
    filter "system:macosx"
        defines { "PLATFORM_MACOS" }
    filter {}

    include "EngineName/premake5.lua"
    include "AppName/premake5.lua"
