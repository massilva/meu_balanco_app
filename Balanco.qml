import QtQuick 2.8
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    Column {
        id: column
        width: 200
        height: 400
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        anchors.top: parent.top
        RowLayout {
            TextField {
                id: textField1
                placeholderText: qsTr("Text Field")
            }
            Button {
                id: button1
                text: qsTr("Press Me")
                onClicked: {
                    console.log("Button Pressed. Entered text: " + textField1.text);
                }
            }
        }
    }
}
