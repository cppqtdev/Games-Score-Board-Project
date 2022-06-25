import QtQuick 2.0
import QtQuick.Controls 2.0
import "../Components"
import "../Styles"
import "../Properties"
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
        }
        source: "qrc:/Resources/Icons/Logo/appicon.jpg"
        sourceSize: Qt.size (72, 50)
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if(P.isUserLogin){
                     drawer.open()
                }
            }
        }
    }

    SButton{
        visible: P.isUserLogin
        anchors{
            left: logoTitle.right
            verticalCenter: parent.verticalCenter
            leftMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:""
        backgroundDefaultColor:"white"
        icons: "qrc:/Resources/Icons/title/fingerprint-solid.svg"
        iconWidth: 30
        iconHeight: 30
        onClicked: {
            console.log("Lock Screen Page")
            gstack.pop(null)
            P.isUserLogin = false
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
         visible: P.isUserLogin
        anchors{
            right: parent.right
            verticalCenter: parent.verticalCenter
            rightMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:""
        backgroundDefaultColor:"white"
        icons: "qrc:/Resources/Icons/title/pencil-solid.svg"
        iconWidth: 25
        iconHeight: 25
        onClicked: {
            console.log("Button Clicked ")
        }
    }
    SButton{
        id:homeButtonTitle
        visible: P.isUserLogin
        anchors{
            right: helpButtonTitle.left
            verticalCenter: parent.verticalCenter
            rightMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:""
        backgroundDefaultColor:"white"
        icons: "qrc:/Resources/Icons/title/house-user-solid.svg"
        iconWidth: 30
        iconHeight: 30
        onClicked: {
            console.log("Home Page")
        }
    }
    SButton{
        id:editButtonTitle
        visible: P.isUserLogin
        anchors{
            right: homeButtonTitle.left
            verticalCenter: parent.verticalCenter
            rightMargin: 10
        }
        buttonWidth: 40
        buttonHeight: 40
        buttonRadius:buttonHeight/2
        buttonText:""
        backgroundDefaultColor:"white"
        icons: "qrc:/Resources/Icons/title/circle-info-solid.svg"
        iconWidth: 40
        iconHeight: 40
        onClicked: {
            console.log("Button Clicked ")
        }
    }
}
