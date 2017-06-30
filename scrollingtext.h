#ifndef SCROLLINGTEXT_H
#define SCROLLINGTEXT_H

#include <QObject>
#include <QQuickPaintedItem>
#include <QString>
#include <QColor>

class ScrollingText : public QQuickPaintedItem
{
    Q_OBJECT

    Q_PROPERTY(int px_per_ms READ px_per_ms WRITE setPx_per_ms NOTIFY px_per_msChanged)
    Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)

public:
    ScrollingText();
    void paint(QPainter *painter);
    int px_per_ms();
    void setPx_per_ms(int px);
    QString text();
    void setText(QString text);
    void setColor(QColor color);
    QColor color();

signals:
    void px_per_msChanged();
    void textChanged();
    void colorChanged();

private:
    int fontSize;
    int x_pos;
    int _px_per_ms;
    QString _text;
    QColor _color;
};

#endif // SCROLLINGTEXT_H
