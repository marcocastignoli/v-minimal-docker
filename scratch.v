fn syscall5(number int, arg1 int, arg2 string, arg3 u64, arg4 u64, arg5 voidptr) int 

fn write(fd int, data string, nbytes u64) int {
	return syscall5(1, fd, data, nbytes, 0, 0) 
} 

fn main() { 
	write(1, "Hello from V running on bare metal!\n", 37)
}