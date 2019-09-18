#gdb ret2libc buffer overflow stack assembly compile

print &system
find &system,+9999999,"/bin/sh"
