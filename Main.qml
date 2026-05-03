import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import "components"

Window {
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("Catholic Bible")

    GridLayout {
        id: grid
        anchors.fill: parent
        flow: GridLayout.TopToBottom
        rows: 2

        GridLayout {
            id: tabGrid
            columns: 3
            columnSpacing: 20
            Layout.alignment: Qt.AlignHCenter

            TabButton {
                text: "Read"
                tabIndex: 0
            }

            TabButton {
                text: "Home"
                tabIndex: 1
            }

            TabButton {
                text: "About"
                tabIndex: 2
            }
        }

        StackLayout {
            id: pages
            currentIndex: 1
            Layout.alignment: Qt.AlignCenter

            GridLayout {
                id: readGrid
                anchors.fill: parent
                columns: 2

                Label {
                    text: "Scroller here"
                }

                Label {
                    text: "Bible here"
                }
            }

            GridLayout {
                id: homeGrid
                anchors.fill: parent

                Label {
                    text: "Psalms 73:26"
                }
            }

            GridLayout {
                id: aboutGrid
                anchors.fill: parent
                flow: GridLayout.TopToBottom
                rows: 3

                Label {
                    font.pixelSize: 15
                    text: "May God be with you, always"
                }

                Label {
                    font.pixelSize: 10
                    text: "Made with Love"
                }

                Label {
                    font.pixelSize: 10
                    text: "by Gtxplosiom"
                }
            }
        }
    }
}
