#ifndef EIGEN_FUNCTION_HEADER_H
#define EIGEN_FUNCTION_HEADER_H

#include <QObject>

class MyObject : public QObject{
   Q_OBJECT
public:
    explicit MyObject (QObject* parent = 0) : QObject(parent) {}
    Q_INVOKABLE int mymetadata()
};

#endif // EIGEN_FUNCTION_HEADER_H
