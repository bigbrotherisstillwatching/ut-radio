#include <QCoreApplication>
#include <QGuiApplication>
#include <QQuickView>
#include <QString>
#include <QUrl>
#include <QtQml>
#include "fileio.h"
#include "eigen_function_header.h"

int main(int argc, char* argv[])
{
    QGuiApplication* app = new QGuiApplication(argc, (char**) argv);
    app->setApplicationName("radio.s710");

    qmlRegisterType<FileIO,1>("FileIO",1,0,"FileIO");

    qmlRegisterType<MyObject,1>("com.myself",1,0,"MyObject");

    QQuickView* view = new QQuickView();
    view->setSource(QUrl("qrc:/Main.qml"));
    view->setResizeMode(QQuickView::SizeRootObjectToView);
    view->show();

    return app->exec();
}
