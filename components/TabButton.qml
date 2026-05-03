import QtQuick 2.15
import QtQuick.Controls 2.15

Label {
    id: button
    property int tabIndex
    font.pixelSize: 15
    font.bold: pages.currentIndex === tabIndex

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        onClicked: pages.currentIndex = button.tabIndex
    }
}
