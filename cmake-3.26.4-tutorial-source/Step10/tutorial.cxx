// A simple program that computes the square root of a number
#include <cmath>
#include <iostream>
#include <string>
#include "MathFunctions/mysqrt.h"
#include "Step10_build/TutorialConfig.h"




int main(int argc, char* argv[])
{
  if (argc < 2) {
   // report version
    std::cout << argv[0] << " Version " << Tutorial_VERSION_MAJOR << "."
              << Tutorial_VERSION_MINOR << std::endl;
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }

  // convert input to double
  const double inputValue = std::stod(argv[1]);

  // which square root function should we use?
// #ifndef mathfunctions
//   const double outputValue = sqrt(inputValue);
// #else
  const double outputValue = mathfunctions::detail::mysqrt(inputValue);
// #endif

  std::cout << "The square root of " << inputValue << " is " << outputValue
            << std::endl;
  return 0;
}
