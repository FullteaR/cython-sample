#include "CppFunctions.hpp"

long add1_cpp(long d){
    return d+1;
}

long sample_long_cpp(long d) {
    return d+1;
}

std::string sample_string_cpp(std::string s) {
    return s + 'A';
}

void alloc_cpp(int** a) {
    *a = new int[5];
    for(int i=0;i<5;i++) {
        (*a)[i] = i+1;
    }
}

void show_cpp(int** a) {
    for(int i=0;i<5;i++) {
        std::cout<<(*a)[i]<<std::endl;
    }
}
