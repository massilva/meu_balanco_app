import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Page1 {
        }
        Page {
            Label {
                color: '#27ae60'
                text: qsTr("Quais foram os seus GANHOS no mês ?")
                anchors.centerIn: parent
            }
        }
        Page {
            Label {
                color: '#c0392b'
                text: qsTr("Quais foram os seus GASTOS no mês ?")
                anchors.centerIn: parent
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Dashboard")
        }
        TabButton {
            text: qsTr("Receitas")
        }
        TabButton {
            text: qsTr("Despesas")
        }
    }
}
