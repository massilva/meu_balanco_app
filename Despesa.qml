import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1

Item {
    RowLayout {
        anchors.topMargin: 20
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        Label{
            text: 'Último lançamento (R$) '
        }
        TextField {
           placeholderText: '1000.00'
           validator: DoubleValidator{}
           horizontalAlignment: TextInput.AlignHCenter
           inputMethodHints: Qt.ImhFormattedNumbersOnly
        }
        RoundButton {
            text: '\u002B'
        }
    }
    RowLayout{
        anchors.centerIn: parent
        Label {
            color: '#c0392b'
            text: qsTr("Quais foram os seus GASTOS no mês ?")
        }
    }
}
