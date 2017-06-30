import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

Window {
    id: controlwindow
    visible: true
    width: 500
    height: 500
    title: qsTr("Control station")

    property bool loop: false

    onClosing: mainWindow.close()

    Grid {
        anchors.centerIn: parent
        columns: 2
        spacing: 10

        Text {
            text: "Text:"
        }

        TextField {
            id: textfield
            width: 200
        }

        Rectangle {
            width: 1
            height: 1
        }

        Button {
            text: "Set text"
           // anchors.centerIn: parent

            onClicked: {
                mainText.text=textfield.text
            }
        }

        Text {
          //  anchors.right: speedSlider.left
          //  anchors.rightMargin: 10
         //   anchors.verticalCenter: speedSlider.verticalCenter
            text: "Speed:"
        }
        Slider {
            id: speedSlider
         //   anchors.centerIn: parent
         //   anchors.verticalCenterOffset: 50
            width: 200
            minimumValue: 1
            maximumValue: 20
            onValueChanged:
            {
                mainText.px_per_ms= value
                //animation.duration = value
                //animation.restart()
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
                //mainText.font.pixelSize=value-5
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
                animation.restart()
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
                animation.restart()
            }
        }

        Rectangle {
            width: 1
            height: 1
        }

        CheckBox {
                id: loopCheckboxnter
                text: "loop"
                checked: true

                onCheckedChanged: {
                    if(checked)
                    {
                        animation.loops=Animation.Infinite
                    }
                    else
                    {

                        animation.loops=1
                        animation.alwaysRunToEnd=true
                        animation.stop()
                    }

                }
            }

        Button {
            text: "background color"
            onClicked: {
                backgroundColorDialog.open()
            }
        }

        Button {
            text: "Text background color"
            onClicked: {
                bandColorDialog.open()
            }
        }

        Rectangle {
            width: 1
            height: 1
        }

        Button {
            text: "Text color"
            onClicked: {
                textColorDialog.open()
            }
        }


        Button {
            text: "maximize"
            onClicked: {
                mainWindow.visibility = Window.FullScreen
            }
        }

        Button {
            text: "normal"
            onClicked: {
                mainWindow.visibility = Window.Windowed
            }
        }


        Button {
            text: "Font: Arial"
            onClicked: {
                mainText.font.family="Arial"
            }
        }

        Button {
            text: "Font: LCARS"
            onClicked: {
                mainText.font.family="LCARSGTJ3"
            }
        }

        Button {
            text: "Font: Ubuntu"
            onClicked: {
                mainText.font.family="Ubuntu"
            }
        }

        Button {
            text: "Font: Helvetica"
            onClicked: {
                mainText.font.family="Helvetica"
            }
        }


    Rectangle {
        width: 1
        height: 1
    }

        Button {
            text: "Close"
            onClicked: {
                controlwindow.visible=false;
            }
        }
    }

    ColorDialog {
        visible: false
        id: backgroundColorDialog
        title: "Please choose a color"
        onAccepted: {
            background.color = color
        }
    }

    ColorDialog {
        visible: false
        id: bandColorDialog
        title: "Please choose a color"
        onAccepted: {
            textRectangle.color = color
        }
    }

    ColorDialog {
        visible: false
        id: textColorDialog
        title: "Please choose a color"
        onAccepted: {
            mainText.color = color
        }
    }
}
