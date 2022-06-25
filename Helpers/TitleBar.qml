import QtQuick 2.0
import QtQuick.Controls 2.0
import "../Components"
import "../Styles"
Rectangle{
    property real titleBarWidth: parent.width
    property real titleBarHeight: 50
    property color titleBarColor: "grey"
    width:titleBarWidth
    height: titleBarHeight
    color:titleBarColor
    Image{
        id:logoTitle
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 10
        }
        source: "qrc:/Resources/Icons/Logo/appicon.jpg"
        width: 100
        height: 50
    }

    SButton{
        anchors{
            left: logoTitle.right
            verticalCenter: parent.verticalCenter
            leftMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:"E"
        onClicked: {
            console.log("Button Clicked ")
        }
    }
    GlobalLable{
        anchors.centerIn: parent
        textColor: Theme.textColor
        lableText: "Desktop Scoreboard"
        lableBold: false
        font.pixelSize: 24
    }
    SButton{
        id:helpButtonTitle
        anchors{
            right: parent.right
            verticalCenter: parent.verticalCenter
            rightMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:"I"
        onClicked: {
            console.log("Button Clicked ")
        }
    }
    SButton{
        id:homeButtonTitle
        anchors{
            right: helpButtonTitle.left
            verticalCenter: parent.verticalCenter
            rightMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:"H"
        onClicked: {
            console.log("Button Clicked ")
        }
    }
    SButton{
        id:editButtonTitle
        anchors{
            right: homeButtonTitle.left
            verticalCenter: parent.verticalCenter
            rightMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:"E"
        onClicked: {
            console.log("Button Clicked ")
        }
    }
}
