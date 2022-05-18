#include <sys/types.h>
//gcc preload_debugme.c -o preload_debugme.so -fPIC -shared -ldl

long ptrace(int request, pid_t pid, void *addr, void *data) {
  return 0;
}
