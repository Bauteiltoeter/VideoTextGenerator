import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

GroupBox {
    title: "Text"

    Row {
        spacing: 10

        TextField {
            id: textfield
            width: 400
        }
        Button {
            text: "Set text"
            onClicked: {
                mainText.text=textfield.text
            }
        }
    }
}
