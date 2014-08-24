cmake_minimum_required(VERSION 2.6)
set(CMAKE_ALLOW_LOOSE_LOOP_CONSTRUCTS ON)

project(gettext-tools)

include(ConfigureChecks.cmake)

include_directories(${CMAKE_CURRENT_BINARY_DIR})


# add_subdirectory(libgettextpo)
 add_subdirectory(gnulib-lib)





# add_subdirectory(doc)
# add_subdirectory(examples)

# add_subdirectory(gnulib-lib)
# add_subdirectory(gnulib-m4)
# add_subdirectory(gnulib-tests)

# add_subdirectory(libgettextpo)
# add_subdirectory(libgrep)

# add_subdirectory(m4)
# add_subdirectory(man)
# add_subdirectory(misc)
# add_subdirectory(po)
# add_subdirectory(projects)

# add_subdirectory(src)

# add_subdirectory(styles)
# add_subdirectory(tests)
# add_subdirectory(woe32dll)
