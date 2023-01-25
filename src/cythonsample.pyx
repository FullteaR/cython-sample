def add1(long d):
    return add1_cpp(d)


def sample_long(long d):
    return sample_long_cpp(d)


def sample_string(s):
    cdef:
        string s_ = s.encode()
    return sample_string_cpp(s_).decode()


def sample_pointer():
    cdef:
        int* a
    alloc_cpp(&a)
    show_cpp(&a)


cdef cppclass SamplePointerClassCPP:
    int* a
    
    SampleClassCPP():
        pass
    
    void alloc():
        alloc_cpp(&a)
    
    void show():
        show_cpp(&a)


cdef class SamplePointerClass:
    cdef SamplePointerClassCPP base
    def __init__(self):
        pass
    
    def alloc(self):
        self.base.alloc()
    
    def show(self):
        self.base.show()