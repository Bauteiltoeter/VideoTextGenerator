import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

GroupBox {
    title: "Window control"

    Row {
        spacing: 10


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
            text: "Close"
            onClicked: {
                controlwindow.visible=false;
            }
        }
    }

}
