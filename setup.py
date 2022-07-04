from setuptools import setup, Extension, find_packages


    
ext = Extension("cythonsample", 
    sources = ["src/cythonsample.pyx", "src/CppFunctions.cpp"],
    language = "c++",
    extra_compile_args = ["-v", "-std=c++14", "-Wall", "-O3"],
    extra_link_args = ["-std=c++14"]
)

install_requires = []

setup(
    name = "cythonsample",
    version = "0.0.1",
    author = "Fulltea",
    author_email = "rikuta@furutan.com",
    url = "https://github.com/FullteaR/cython-sample",
    install_requires = install_requires,
    ext_modules = [ext]
)
