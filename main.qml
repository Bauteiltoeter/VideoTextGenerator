import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0


Window {
    id: mainWindow
    visible: true
    width: 1700
    height: 800
    visibility: Window.FullScreen
    title: qsTr("Hello World")

    ControlWindow {
    id: cw}



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

            Text {
                id: mainText
                text: "Hallo Lord Eldingar"
                color: "#FF0000"
                anchors.verticalCenter: parent.verticalCenter
                x: mainWindow.width
                font.pixelSize: 45

                Timer {
                id: scrolltimer
                   interval: 10; running: true; repeat: true
                   onTriggered: {
                      //  console.log(mainText.width)

                       if(mainText.x < -mainText.width && cw.loop)
                           mainText.x=mainWindow.width

                       mainText.x=mainText.x-1;
                   }
               }
            }
        }
    }
}
