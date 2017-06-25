import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Meu balanço")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Balanco {
        }

        Receita{

        }

        Despesa{

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
