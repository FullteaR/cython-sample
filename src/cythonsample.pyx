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
    int* array
    
    SampleClassCPP():
        pass
    
    void alloc():
        alloc_cpp(&array)
    
    void show():
        show_cpp(&array)
    
    void add(SamplePointerClassCPP* other):
        for i in range(5):
            array[i]+=(other.array)[i]
    

cdef class SamplePointerClass:
    cdef SamplePointerClassCPP base
    def __init__(self):
        pass
    
    def alloc(self):
        self.base.alloc()
    
    def show(self):
        self.base.show()

    def add(self, SamplePointerClass other):
        self.base.add(&(other.base))
    
