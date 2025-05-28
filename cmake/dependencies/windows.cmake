#=================== ImGui ===================
target_sources(ImGui
	PRIVATE
	${imgui_SOURCE_DIR}/backends/imgui_impl_dx11.cpp
	${imgui_SOURCE_DIR}/backends/imgui_impl_win32.cpp
)

#find_package(SDL2 CONFIG REQUIRED)
target_link_libraries(ImGui PUBLIC SDL2)

find_package(GLEW REQUIRED)
target_link_libraries(ImGui PUBLIC opengl32 GLEW::GLEW)
