set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${GLFW_OUTPUT_DIRECTORY_DEBUG})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${GLFW_OUTPUT_DIRECTORY_DEBUG})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${GLFW_OUTPUT_DIRECTORY_DEBUG})

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${GLFW_OUTPUT_DIRECTORY_RELEASE})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${GLFW_OUTPUT_DIRECTORY_RELEASE})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${GLFW_OUTPUT_DIRECTORY_RELEASE})


add_subdirectory("./glfw")
set_target_properties(uninstall PROPERTIES
	FOLDER ${WORKSPACE_NAME}/vendor/GLFW3
)
set_target_properties(glfw PROPERTIES
	FOLDER ${WORKSPACE_NAME}/vendor/GLFW3
)
set_target_properties(update_mappings PROPERTIES
	FOLDER ${WORKSPACE_NAME}/vendor/GLFW3
)