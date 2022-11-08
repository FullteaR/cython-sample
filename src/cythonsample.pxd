from libcpp.string cimport string

cdef extern from "CppFunctions.hpp":
    long add1_cpp(long d)
    long sample_long_cpp(long d)
    string sample_string_cpp(string s)
