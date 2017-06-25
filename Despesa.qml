import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

Item {

    RowLayout {
        anchors.topMargin: 20
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        Label{
          text: 'Último lançamento: '
        }

        SpinBox {
             id: spinbox
             from: 0
             value: 0
             to: 1000000
             stepSize: 10
             anchors.centerIn: parent
             Layout.fillWidth: true
             editable: true

             property int decimals: 2
             property real realValue: value / 100

             inputMethodHints: Qt.ImhExclusiveInputMask
             validator: DoubleValidator {
                 bottom: Math.min(spinbox.from, spinbox.to)
                 top:  Math.max(spinbox.from, spinbox.to)
             }

             textFromValue: function(value, locale) {
                 return Number(value / 100).toLocaleString(locale, 'f', spinbox.decimals)
             }

             valueFromText: function(text, locale) {
                 return Number.fromLocaleString(locale, text) * 100
             }
         }

        Button {
            text: qsTr('+')
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
