import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

GroupBox {
    title: "Color control"


    Row {
        spacing: 10

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

        Button {
            text: "Text color"
            onClicked: {
                textColorDialog.open()
            }
        }

    }
}


