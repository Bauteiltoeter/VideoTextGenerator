#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "scrollingtext.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    qmlRegisterType<ScrollingText>("VideoText.scrollingText",1,0, "ScrollingText");


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
