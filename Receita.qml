import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1

Item {
    ListModel {id: receitas}
    Component {
        id: itemList
        ColumnLayout{
            Repeater{
                model: receitas
                Text { text: 'R$ ' + model.value; color: '#27ae60' }
            }
        }
    }
    ColumnLayout{
        id: receita
        property real total: 0
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
                property real value: 0
                placeholderText: Number.fromLocaleString(Qt.locale(), 1000);
                validator: DoubleValidator{}
                horizontalAlignment: TextInput.AlignHCenter
                inputMethodHints: Qt.ImhFormattedNumbersOnly
            }
            RoundButton {
                text: '\u002B'
                onClicked: {
                    receitaTF.value = receitaTF.text
                    receitas.append({value: receitaTF.text})
                    receita.total += receitaTF.value
                }
            }
        }
        RowLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            ListView {
                model: receitas
                delegate: itemList
            }
        }
        RowLayout {
            anchors.horizontalCenter: parent.right
            Label{
                text: 'TOTAL R$ ' + receita.total
                color: '#27ae60'
            }
        }
    }
}
