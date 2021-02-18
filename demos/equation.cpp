#include <iostream>
#include <math.h>
using namespace std;

typedef float rootValue;
typedef float incognito;

int main()
{
  incognito a, b, c;
  rootValue root1, root2;

  cout << "-----------------------------------\n";
  cout << "- Find roots for ax² + bx + c \n";
  cout << "-----------------------------------\n";
  cout << "Enter values separated by spaces: ";
  cin >> a >> b >> c;

  root1 = (-b + sqrt(b * b + 4 * a * c) / 2 * a * c);
  root2 = (-b - sqrt(b * b + 4 * a * c) / 2 * a * c);
  cout << "Roots are: " << root1 << " and " << root2;

  return 0;
}