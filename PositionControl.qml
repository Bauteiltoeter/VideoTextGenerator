import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

GroupBox {
    title: "Position control"


    Grid {
        anchors.centerIn: parent
        columns: 2
        spacing: 10

        Text {
            text: "Speed:"
        }
        Slider {
            id: speedSlider
            width: 200
            minimumValue: 1
            maximumValue: 20
            onValueChanged:
            {
                mainText.px_per_ms= value
            }
        }

        Text {
            text: "Height:"
        }
        Slider {
            id: heightSlider
            width: 200
            minimumValue: 30
            maximumValue: 80
            value: 50
            onValueChanged:
            {
                textRectangle.height=value
            }
        }

        Text {
            text: "FontSize:"
        }
        Slider {
            id: fontSizeSlider
            width: 200
            minimumValue: 10
            maximumValue: 80
            value: 30
            onValueChanged:
            {
                mainText.fontSize=value
            }
        }

        Text {
            text: "Bottom Offset:"
        }
        Slider {
            id: bottomOffset
            width: 200
            minimumValue: 0
            maximumValue: 500
            value: 80
            onValueChanged:
            {
                textRectangle.anchors.bottomMargin=value
            }
        }

        Text {
            text: "Left Offset:"
        }
        Slider {
            id: leftOffset
            width: 200
            minimumValue: 0
            maximumValue: 500
            value: 0
            onValueChanged:
            {
                textRectangle.anchors.leftMargin=value
            }
        }

        Text {
            text: "Right Offset:"
        }
        Slider {
            id: rightOffset
            width: 200
            minimumValue: 0
            maximumValue: 500
            value: 0
            onValueChanged:
            {
                textRectangle.anchors.rightMargin=value
            }
        }
    }


}
