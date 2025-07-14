project "AppName"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++23"

    targetdir "%{wks.location}/build/bin/%{cfg.buildcfg}/AppName"
    objdir "%{wks.location}/build/bin/%{cfg.buildcfg}/AppName/obj"

    files {
        "src/**.hpp",
        "src/**.cpp"
    }

    filter "system:windows"
        links { "opengl32" }
    filter "system:linux"
        links { "GL", "X11" }
    filter "system:macosx"
        links { "-framework OpenGL" }
    filter {}

    links {
        "EngineName",
        "imgui",
        "glfw",
        "glad",
    }

    includedirs {
        "%{wks.location}/EngineName/include",
        "%{wks.location}/EngineName/vendor/imgui/imgui",
        "%{wks.location}/EngineName/vendor/glfw/glfw/include",
        "%{wks.location}/EngineName/vendor/glad/glad4.6/include",
        "%{wks.location}/EngineName/vendor/glm/glm",
        "%{wks.location}/EngineName/vendor/stb/stb/include",
        "%{wks.location}/EngineName/vendor/assimp/assimp/include",
        "%{wks.location}/EngineName/vendor/assimp/_config_headers/",
		"%{wks.location}/EngineName/vendor/assimp/_config_headers/assimp/",
    }