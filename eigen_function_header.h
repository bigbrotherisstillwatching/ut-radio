#ifndef EIGEN_FUNCTION_HEADER_H
#define EIGEN_FUNCTION_HEADER_H

#include <QObject>
#include <cstdlib>
using namespace std;

class MyObject : public QObject{
   Q_OBJECT
public:
    explicit MyObject (QObject* parent = 0) : QObject(parent) {}
    Q_INVOKABLE int mymetadata(){
    system("cd /home/phablet/.config/radio.s710");
    system("sh metadata.sh");
    return 0;
    }
};

#endif // EIGEN_FUNCTION_HEADER_H
