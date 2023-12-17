#ifndef EIGEN_FUNCTION_HEADER_H
#define EIGEN_FUNCTION_HEADER_H

#include <QObject>
#include "headers/stdlib.h"

class MyObject : public QObject{
   Q_OBJECT
public:
    explicit MyObject (QObject* parent = 0) : QObject(parent) {}
    Q_INVOKABLE int mymetadata(){
    system("which bash > /home/phablet/.config/radio.s710/metadata.txt");
    return 1;
    }
};

#endif // EIGEN_FUNCTION_HEADER_H
