import QtQuick 2.0
import QtQuick.Controls 2.0
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
           placeholderText: "1.000.000,00"
           validator: DoubleValidator{}
           horizontalAlignment: TextInput.AlignHCenter
        }
        Button {
            text: qsTr('+')
        }
    }
    RowLayout{
        anchors.centerIn: parent
        Label {
            color: '#27ae60'
            text: qsTr('Quais foram os seus GANHOS no mês ?')
        }
    }
}
