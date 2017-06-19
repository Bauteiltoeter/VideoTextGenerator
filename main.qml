import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0


Window {
    id: mainWindow
    visible: true
    width: 500
    height: 500
    //visibility: Window. Window.FullScreen
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
            clip: true

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
                           mainText.x=mainWindow.width-textRectangle.anchors.leftMargin-textRectangle.anchors.rightMargin

                       mainText.x=mainText.x-1;
                   }
               }
            }
        }
    }
}
