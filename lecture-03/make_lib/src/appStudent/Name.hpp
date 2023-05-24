///
/// @file Name.hpp contains declaration of class Name
///

#include <string>
#pragma once // This is a non-standard pragma to prevent multiple inclusion
#ifndef _NAME_HPP_
#define _NAME_HPP_

/// The class Name contains family and given names.
class Name
{
public:
  Name(const std::string givenName, const std::string familyName);
  ~Name();
  std::string getName() const;

private:
  std::string givenName_;
  std::string familyName_;
};


#endif // _NAME_HPP_
