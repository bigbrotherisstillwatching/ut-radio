#include <cstdlib>
using namespace std;

int mymetadata ()
{
  system("cd /home/phablet/.config/radio.s710");
  system("sh metadata.sh");
  return 0;
}
