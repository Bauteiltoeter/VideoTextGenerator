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

    onClosing: mainWindow.close()


    TextControl {
        id: textControl
    }

    ColorControl {
        id: colorControl
        anchors.top: textControl.bottom
        anchors.topMargin: 10
    }


    PositionControl {
        id: positionControl
        anchors.top: colorControl.bottom
        anchors.topMargin: 10
    }

    WindowControl {
        id: windowControl
        anchors.top: positionControl.bottom
        anchors.topMargin: 10
    }


  /*









        Rectangle {
            width: 1
            height: 1
        }


    }*/

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
