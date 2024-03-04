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
      z: 1
   }

   Flickable {
      id: flick1
      anchors.top: header.bottom
//      contentHeight: image1.height
//      contentWidth: image1.width
//      width: helpPage.width
//      height: 500
      

//      contentHeight: column1.height * 1.25
//      contentWidth: image1.width
//      width: helpPage.width
//      height: helpPage.height

      contentHeight: column1.height
      contentWidth: image1.width
      width: helpPage.width
      height: helpPage.height - header.height
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
            text: i18n.tr("<font color=\"#FF0000\">(1)</font>Coming soon ...")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
         }
      }
/*      ScrollBar.vertical: ScrollBar {
         policy: ScrollBar.AlwaysOn
      }*/
   }
}
