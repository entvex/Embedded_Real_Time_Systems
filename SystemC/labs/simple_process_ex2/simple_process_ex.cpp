#include "simple_process_ex.h"
void simple_process_ex::my_thread_process(void) {
	int counter = 0;

  std::cout << "my_thread_process executed within "
            << name() 
            << std::endl;

  while(true)
  {
	  counter++;
	  out.write(counter);
	  wait(10, SC_MS);
  }

}
