#include "ModuleSingle.h"
int sc_main(int argc, char* argv[]) {

  Single ModuleSingle("my_instance 1");

  sc_start(200,SC_MS);
  return 0;
}

