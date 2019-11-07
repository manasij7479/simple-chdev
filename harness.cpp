#include <fstream>
#include <iostream>
#include <string>
int main(int argc, char **argv) {
  int n = std::stoi(argv[1]);
  while (n--) {
    std::ifstream in("/dev/simple");
    if (!in.good()) {
      std::cerr << "Error.\n";
      return 1;
    }
    std::string foo;
    in >> foo;
    //std::cout << foo << "\n";
  }
  return 0;
}
