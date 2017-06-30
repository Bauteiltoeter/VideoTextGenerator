import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

import VideoText.scrollingText 1.0

Window {
    id: mainWindow
    visible: true
    width: 1700
    height: 500
    //visibility: Window. Window.FullScreen
    title: qsTr("Hello World")

    onWidthChanged: {
        animation.from=mainWindow.width
        animation.restart()
    }

    ControlWindow {
        id: cw
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            cw.visible=!cw.visible
        }
    }



    Rectangle {
        id: background
        anchors.fill: parent
        color: "#0076A3"

        Rectangle {
            id: textRectangle
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
            height: 50
            color: "#111111"
           // clip: true

            ScrollingText {
                id: mainText
                visible: true
                anchors.fill: parent
            }
        }
    }
}
