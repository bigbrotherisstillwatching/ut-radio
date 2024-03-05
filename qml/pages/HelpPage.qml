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
            text: i18n.tr("<font color=\"#FF0000\">[1]</font> Metadata is shown here.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text2
            text: i18n.tr("<font color=\"#FF0000\">[2]</font> Search stations.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text3
            text: i18n.tr("<font color=\"#FF0000\">[3]</font> Add and remove favourite.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text4
            text: i18n.tr("<font color=\"#FF0000\">[4]</font> Add station manually.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text5
            text: i18n.tr("<font color=\"#FF0000\">[5]</font> Open settings.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text6
            text: i18n.tr("<font color=\"#FF0000\">[6]</font> Play stations by clicking on them here. You can remove the station after swiping to the right. When swiping to the left, you have different options. When clicking 'Show name', 'Show stream URL' or 'Show image URL' name, stream URL or image URL are shown under <font color=\"#FF0000\">[1]</font>. You can edit them there by clicking on the text. Change them to what you want and save them by swiping to the right at <font color=\"#FF0000\">[6]</font> and then save it with 'Save name', 'Save stream URL' or 'Save image URL'. Sort mode gets (de)activated by long-pressing on a favourite. Change their order by tapping the handler on the right and drop them where you want.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text7
            text: i18n.tr("<font color=\"#FF0000\">[7]</font> Change equalizer settings when it's already activated.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text8
            text: i18n.tr("<font color=\"#FF0000\">[8]</font> Reset all bars to 0.0.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignLeft
         }

         Text {
            id: text9
            text: i18n.tr("Thanks to <html><style type="text/css"></style><a href="https://github.com/patrickjane">Patrick Fial</a></html> for this wonderful app.")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
//            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            onLinkActivated: Qt.openUrlExternally(link)
         }

         Text {
            id: text10
            text: i18n.tr("The caps plugin for the equalizer is published under the GNU Public License (version 3) by Tim Goetze. More information under <html><style type="text/css"></style><a href="http://quitte.de/dsp/caps.html">quitte.de</a></html>")
            font.pointSize: 25
//            anchors.centerIn: parent
            color: Colors.mainText
//            anchors.topMargin: units.gu(3)
//            anchors.top: image2.bottom
            anchors.horizontalCenter: column1.horizontalCenter
            bottomPadding: units.gu(3)
//            topPadding: units.gu(3)
            wrapMode: Text.WordWrap
            width: image2.width
            lineHeight: 1.2
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            onLinkActivated: Qt.openUrlExternally(link)
         }

      }
/*      ScrollBar.vertical: ScrollBar {
         policy: ScrollBar.AlwaysOn
      }*/
   }
}
