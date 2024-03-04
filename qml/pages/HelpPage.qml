import Lomiri.Components 1.3
import Lomiri.Components.ListItems 1.3
import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtMultimedia 5.12
import Qt.labs.settings 1.0
import QtQuick.Controls 2.7

import "../net"
import "../util"
import "../colors"

Rectangle {
   id: helpPage
   anchors.fill: parent
   color: Colors.backgroundColor

   ThemedHeader {
      id: header
      title: i18n.tr("Help")
   }

/*   ScrollView {
      id: scrollView
      anchors.top: header.bottom
      height: column1.height
      width: helpPage.width
      anchors.horizontalCenter: helpPage.horizontalCenter
      anchors.topMargin: units.gu(3)
//      anchors.fill: parent
//      anchors.margins: 15*/

   Flickable {
      id: flick1
      anchors.top: header.bottom
//      contentHeight: image1.height+image2.height+text1.height
//      contentWidth: helpPage.width
      width: helpPage.width
      height: image1.height+image2.height+text1.height
      anchors.horizontalCenter: helpPage.horizontalCenter

      Column {
         id: column1
//         anchors.top: flick1.top
//         anchors.horizontalCenter: flick1.horizontalCenter
         spacing: units.gu(3)
         width: flick1.width
         
         Image {
            id: image1
//            anchors.topMargin: units.gu(3)
//            anchors.top: scrollView.top
            sourceSize.width: 1080
            sourceSize.height: 2340
            source: "../assets/1.png"
            height: 1755
            width: 810
            anchors.horizontalCenter: column1.horizontalCenter
         }
      
         Image {
            id: image2
//            anchors.topMargin: units.gu(3)
//            anchors.top: image1.bottom
            sourceSize.width: 1080
            sourceSize.height: 2340
            source: "../assets/2.png"
            height: 1755
            width: 810
            anchors.horizontalCenter: column1.horizontalCenter
         }
      
         Text {
            id: text1
            text: i18n.tr("Coming soon ...")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
         }
      }
      ScrollIndicator.vertical: ScrollIndicator { }
   }
}

/*import QtQuick 2.6
import QtQuick.Controls 2.1

Flickable {
    id: flickable

    contentHeight: pane.height

    Pane {
        id: pane
        width: flickable.width
        height: flickable.height * 1.25

        Column {
            id: column
            spacing: 40
            width: parent.width

            Label {
                width: parent.width
                wrapMode: Label.Wrap
                horizontalAlignment: Qt.AlignHCenter
                text: "ScrollIndicator is a non-interactive indicator that indicates the current scroll position. "
                    + "A scroll indicator can be either vertical or horizontal, and can be attached to any Flickable, "
                    + "such as ListView and GridView."
            }

            Image {
                rotation: 90
                source: "../images/arrows.png"
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    ScrollIndicator.vertical: ScrollIndicator { }
}*/
