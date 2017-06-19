import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0


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
        color: "#00FF00"

        Rectangle {
            id: textRectangle
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
            height: 50
            color: "#111111"
            clip: true

            Text {
                id: mainText
                text: "Hallo BFD"
                color: "#FF0000"
                anchors.verticalCenter: parent.verticalCenter
                x: mainWindow.width
                font.pixelSize: 45

                NumberAnimation on x{
                    id: animation
                    from: mainWindow.width - textRectangle.anchors.rightMargin - textRectangle.anchors.leftMargin
                    to: -1*mainText.width
                    loops: Animation.Infinite
                    duration: 1000
                }
            }
        }
    }
}
