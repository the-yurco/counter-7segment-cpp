# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/jurco/esp/esp-idf/components/bootloader/subproject"
  "/home/jurco/cpp-counter/blink/build/bootloader"
  "/home/jurco/cpp-counter/blink/build/bootloader-prefix"
  "/home/jurco/cpp-counter/blink/build/bootloader-prefix/tmp"
  "/home/jurco/cpp-counter/blink/build/bootloader-prefix/src/bootloader-stamp"
  "/home/jurco/cpp-counter/blink/build/bootloader-prefix/src"
  "/home/jurco/cpp-counter/blink/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/jurco/cpp-counter/blink/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/jurco/cpp-counter/blink/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
