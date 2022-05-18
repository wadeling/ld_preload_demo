#include <stdio.h>
#include <stdlib.h>
#include <sys/ptrace.h>

void main() {
  if (ptrace(PTRACE_TRACEME, 0, 0, 0) < 0) {
    printf("I can see you GDB !\n");
    exit(1);
  }
  else {
    printf("No debugger detected !\n");
  }
}
