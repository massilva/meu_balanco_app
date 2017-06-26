import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1

Item {
    ListModel {id: despesas}
    Component {
        id: itemList
        ColumnLayout{
            Repeater{
                model: despesas
                Text { text: 'R$ ' + model.value; color: '#c0392b'}
            }
        }
    }
    ColumnLayout{
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        RowLayout {
            anchors.topMargin: 20
            spacing: 10
            Label{
              text: 'Último lançamento (R$) '
            }
            TextField {
                id: receitaTF
                placeholderText: Number.fromLocaleString(Qt.locale(), 1000);
                validator: DoubleValidator{}
                horizontalAlignment: TextInput.AlignHCenter
                inputMethodHints: Qt.ImhFormattedNumbersOnly
            }
            RoundButton {
                text: '\u002B'
                onClicked: {
                    despesas.append({value: receitaTF.text})
                }
            }
        }
        RowLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            ListView {
                model: despesas
                delegate: itemList
            }
        }
    }
}
