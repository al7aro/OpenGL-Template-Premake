project "imgui"
	kind "StaticLib"
	language "C++"

    targetdir "%{wks.location}/build/bin/%{cfg.buildcfg}/vendor/imgui"
    objdir "%{wks.location}/build/bin/%{cfg.buildcfg}/vendor/glfw/imgui"


	files {
		"imgui/imconfig.h",
		"imgui/imgui.h",
		"imgui/imgui.cpp",
		"imgui/imgui_draw.cpp",
		"imgui/imgui_internal.h",
		"imgui/imgui_widgets.cpp",
		"imgui/imstb_rectpack.h",
		"imgui/imstb_textedit.h",
		"imgui/imstb_truetype.h",
		"imgui/imgui_demo.cpp",
		"imgui/imgui_tables.cpp",
		"imgui/backends/imgui_impl_glfw.cpp",
		"imgui/backends/imgui_impl_glfw.h",
		"imgui/backends/imgui_impl_opengl3.cpp",
		"imgui/backends/imgui_impl_opengl3.h",
	}

	includedirs {
		"imgui/",
		"imgui/backends/",
		"../glfw/glfw/include"
	}