#=================== ImGui ===================
target_sources(ImGui
	PRIVATE
	${imgui_SOURCE_DIR}/backends/imgui_impl_dx11.cpp
	${imgui_SOURCE_DIR}/backends/imgui_impl_win32.cpp
)

if(UWP)
target_link_libraries(ImGui PUBLIC SDL2)
else()
find_package(SDL2 CONFIG REQUIRED)
target_link_libraries(ImGui PUBLIC SDL2::SDL2 SDL2::SDL2main)
endif()

find_package(GLEW REQUIRED)
target_link_libraries(ImGui PUBLIC opengl32 GLEW::GLEW)
