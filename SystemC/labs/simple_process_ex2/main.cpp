#include "simple_process_ex.h"
#include "simple_process2.h"
int sc_main(int argc, char* argv[]) {

  simple_process_ex my_instance("my_instance 1");
  SIMPLE_PROCESS2 my_instance2("my_instance 2");

  sc_fifo<int> C1("C1");

  my_instance.out(C1);
  my_instance2.in(C1);


  sc_start(1000,SC_MS);
  return 0;
}
