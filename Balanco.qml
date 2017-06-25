import QtQuick 2.7

BalancoForm {
    button1.onClicked: {
        console.log("Button Pressed. Entered text: " + textField1.text);
    }
}
