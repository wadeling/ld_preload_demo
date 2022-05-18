#define _GNU_SOURCE
#include <dlfcn.h>
#include <stdio.h>
#include <string.h>

// Define an alternative name for strcmp()
int (*orig_strcmp)(const char *str1, const char *str2);

int strcmp(const char *str1, const char *str2) {

  // Backup the orginal call to strcmp() in orig_strcmp()
  // by initialazing the pointer of orig_strcmp().
  if(!orig_strcmp) orig_strcmp = dlsym(RTLD_NEXT, "strcmp");

  printf("You should try '%s'\n", str1);

  // return the proper result of strcmp()
  return orig_strcmp(str1,str2);
}
