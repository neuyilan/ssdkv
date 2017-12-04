# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /gopherwood

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /gopherwood/build

# Utility rule file for style.

# Include the progress variables for this target.
include CMakeFiles/style.dir/progress.make

CMakeFiles/style:
	$(CMAKE_COMMAND) -E cmake_progress_report /gopherwood/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "format code style..."
	cd /gopherwood && astyle --style=attach --indent=spaces=4 --indent-preprocessor --break-blocks --pad-oper --pad-header --unpad-paren --delete-empty-lines --suffix=none --align-pointer=middle --lineend=linux --indent-col1-comments /gopherwood/src/network/TcpSocket.cpp /gopherwood/src/core/OutputStreamImpl.cpp /gopherwood/src/core/FileSystem.cpp /gopherwood/src/core/InputStream.cpp /gopherwood/src/core/SharedMemoryManager.cpp /gopherwood/src/core/FileSystemImpl.cpp /gopherwood/src/core/InputStreamImpl.cpp /gopherwood/src/core/FSConfig.cpp /gopherwood/src/core/gopherwood.cpp /gopherwood/src/core/OutputStream.cpp /gopherwood/src/common/ExceptionInternal.cpp /gopherwood/src/common/StackPrinter.cpp /gopherwood/src/common/Exception.cpp /gopherwood/src/common/XmlConfig.cpp /gopherwood/src/common/Thread.cpp /gopherwood/src/common/Hash.cpp /gopherwood/src/common/Configuration.cpp /gopherwood/src/common/Logger.cpp /gopherwood/src/network/Syscall.h /gopherwood/src/network/Socket.h /gopherwood/src/network/TcpSocket.h /gopherwood/src/core/LogManager.h /gopherwood/src/core/OutputStreamImpl.h /gopherwood/src/core/FileSystemImpl.h /gopherwood/src/core/fsConfig.h /gopherwood/src/core/FileStatus.h /gopherwood/src/core/OutputStream.h /gopherwood/src/core/InputStreamImpl.h /gopherwood/src/core/FSConfig.h /gopherwood/src/core/SharedMemoryBucket.h /gopherwood/src/core/InputStreamInter.h /gopherwood/src/core/gopherwood.h /gopherwood/src/core/OutputStreamInter.h /gopherwood/src/core/SharedMemoryManager.h /gopherwood/src/core/FileSystemInter.h /gopherwood/src/core/InputStream.h /gopherwood/src/core/FileSystem.h /gopherwood/src/common/Logger.h /gopherwood/src/common/Unordered.h /gopherwood/src/common/Hash.h /gopherwood/src/common/DateTime.h /gopherwood/src/common/Thread.h /gopherwood/src/common/XmlConfig.h /gopherwood/src/common/Configuration.h /gopherwood/src/common/ExceptionInternal.h /gopherwood/src/common/Memory.h /gopherwood/src/common/Exception.h /gopherwood/src/common/Function.h /gopherwood/src/common/StackPrinter.h
	cd /gopherwood && astyle --style=attach --indent=spaces=4 --indent-preprocessor --break-blocks --pad-oper --pad-header --unpad-paren --delete-empty-lines --suffix=none --align-pointer=middle --lineend=linux --indent-col1-comments
	cd /gopherwood && astyle --style=attach --indent=spaces=4 --indent-preprocessor --break-blocks --pad-oper --pad-header --unpad-paren --delete-empty-lines --suffix=none --align-pointer=middle --lineend=linux --indent-col1-comments /gopherwood/test/function/TestFileSystem.cpp
	cd /gopherwood && astyle --style=attach --indent=spaces=4 --indent-preprocessor --break-blocks --pad-oper --pad-header --unpad-paren --delete-empty-lines --suffix=none --align-pointer=middle --lineend=linux --indent-col1-comments

style: CMakeFiles/style
style: CMakeFiles/style.dir/build.make
.PHONY : style

# Rule to build all files generated by this target.
CMakeFiles/style.dir/build: style
.PHONY : CMakeFiles/style.dir/build

CMakeFiles/style.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/style.dir/cmake_clean.cmake
.PHONY : CMakeFiles/style.dir/clean

CMakeFiles/style.dir/depend:
	cd /gopherwood/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /gopherwood /gopherwood /gopherwood/build /gopherwood/build /gopherwood/build/CMakeFiles/style.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/style.dir/depend
