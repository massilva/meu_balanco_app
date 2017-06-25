import QtQuick 2.8
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

Item {
    property alias textField1: textField1
    property alias button1: button1

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
            }
        }
    }
}
