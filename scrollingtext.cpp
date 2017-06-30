#include "scrollingtext.h"

#include <QPainter>
#include <QDebug>
#include <QTimer>


ScrollingText::ScrollingText()
{

    QTimer *timer = new QTimer(this);

    connect(timer,SIGNAL(timeout()),this,SLOT(update()));
    timer->start(1);
    x_pos=-1;
    _px_per_ms=1;
    _fontSize=30;
    _color = QColor("#FF0000");
}

void ScrollingText::paint(QPainter *painter)
{
    if(x_pos ==-1)
        x_pos=width();

    x_pos-=_px_per_ms;
    QPointF a(x_pos,height() -  (height() - _fontSize)/2);
    QPen pen( _color);

    painter->setPen(pen);

    QFont font("Arial",_fontSize);

    painter->setFont(font);
    painter->drawText(a,_text);


    QFontMetrics fm(font);
    int textWidth =  fm.width(_text);

    if(x_pos < (-textWidth))
        x_pos = width();
}

int ScrollingText::px_per_ms()
{
    return _px_per_ms;
}

void ScrollingText::setPx_per_ms(int px)
{
    _px_per_ms = px;
}

QString ScrollingText::text()
{
    return _text;
}

void ScrollingText::setText(QString text)
{
    x_pos = width();
    _text = text;
}

void ScrollingText::setColor(QColor color)
{
    _color = color;
}

QColor ScrollingText::color()
{
    return _color;
}

int ScrollingText::fontSize()
{
    return _fontSize;
}

void ScrollingText::setFontSize(int fontSize)
{
    _fontSize = fontSize;
}

