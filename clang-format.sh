# Runs clang-format recursively on all c, cpp, and h files starting at the invoked directory.
find . -name "*.c" -o -name "*.h" -o -name "*.cpp" | xargs clang-format -i
