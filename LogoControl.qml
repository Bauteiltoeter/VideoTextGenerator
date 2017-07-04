import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

GroupBox {
    title: "Logo"
    id: logoControlBox
    property bool position_topLeft: true;

    Grid {
        anchors.centerIn: parent
        columns: 2
        spacing: 10

        CheckBox {
            text: "Show"
            checked: true
            onClicked: {
                logo.visible= checked;
            }
        }

        Button {
            text: "Select file"
            onClicked: {
                fileDialog.visible=true
            }
        }
        RadioButton {
            id: topLeft
            text: "Top left"
            checked: true
            onClicked: {
                topRight.checked=!checked;
                position_topLeft=checked
            }
        }

        RadioButton {
            id: topRight
            text: "Top right"
            checked: false
            onClicked: {
                topLeft.checked=!checked;
                position_topLeft=!checked
            }
        }


        Text {
            text: "Horizontal"
        }
        Slider {
            id: horizontalSlider
            width: 200
            minimumValue: 0
            maximumValue: mainWindow.width- logo.width
            onValueChanged:
            {
                logo.x= position_topLeft ? value : mainWindow.width-value
            }
        }

        Text {
            text: "Vertical"
        }
        Slider {
            id: verticalSlider
            width: 200
            minimumValue: 0
            maximumValue: mainWindow.height - logo.height
            onValueChanged:
            {
                logo.y= value
            }
        }

        Text {
            text: "Size"
        }
        Slider {
            id: sizeSlider
            width: 200
            minimumValue: 10
            maximumValue: 800
            value: 100
            onValueChanged:
            {
                logo.sourceSize.height= value
            }
        }

    }

    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        folder: shortcuts.home
        onAccepted: {
            logo.source=fileDialog.fileUrl

        }

    }

}
