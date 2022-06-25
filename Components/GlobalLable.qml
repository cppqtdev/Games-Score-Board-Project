import QtQuick 2.0
import QtQuick.Controls 2.0
Text {
    property color textColor: "white"
    property string lableText: ""
    property bool lableBold: false
    text: qsTr(lableText)
    color: textColor
    font.family: "Comic Sans"
    font.bold: lableBold
}
