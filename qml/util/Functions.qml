pragma Singleton

import QtQuick 2.0
import Qt.labs.settings 1.0

import "../notify"

Item {
   property var favouriteModel

   Settings {
      id: settings
      property string favouriteStations: "{}"
   }

   function init() {
      var s

      try {
         s = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         s = {}
      }

      for (var key in s) {
         favouriteModel.append(s[key])
      }
   }

   function saveFavourite(station) {
      var s

      try {
         s = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         s = {}
      }

      if (s[station.stationID]) {
         Notify.warning(i18n.tr("Favourites"), i18n.tr("URL for station has already been added as favourite"))
         return
      }

      station.favourite = true
      s[station.stationID] = station
      favouriteModel.append(JSON.parse(JSON.stringify(station)))

      settings.setValue("favouriteStations", JSON.stringify(s))
   }

   function removeFavourite(stationID) {
      var s

      try {
         s = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         s = {}
      }

      delete s[stationID]

      for (var i = 0; i < favouriteModel.count; i++) {
         var station = favouriteModel.get(i)

         if (station.stationID === stationID) {
            favouriteModel.remove(i)
            break
         }
      }

      settings.setValue("favouriteStations", JSON.stringify(s))
   }

   function hasFavourite(stationID) {
      var s

      try {
         s = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         s = {}
      }

      return s.hasOwnProperty(stationID)
   }

   function changeName(sttnID, newname) {
      var s

      try {
         s = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         s = {}
      }

      for (var i = 0; i < favouriteModel.count; i++) {
         var stationName = favouriteModel.get(i)

         if (stationName.stationID === sttnID) {
            favouriteModel.setProperty(i, "name", newname)
            break
         }
      }

      for (var i in s) {
         if (s[i].stationID === sttnID) {
            s[i].name = newname
            break
         }
      }

      settings.setValue("favouriteStations", JSON.stringify(s))
   }

   function changeImage(sttnID, newimage) {
      var s

      try {
         s = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         s = {}
      }

      for (var i = 0; i < favouriteModel.count; i++) {
         var stationImage = favouriteModel.get(i)

         if (stationImage.stationID === sttnID) {
            favouriteModel.setProperty(i, "image", newimage)
            break
         }
      }

      for (var i in s) {
         if (s[i].stationID === sttnID) {
            s[i].image = newimage
            break
         }
      }

      settings.setValue("favouriteStations", JSON.stringify(s))
   }

   function changeUrl(sttnID, oldurl, newurl) {
      var s

      try {
         s = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         s = {}
      }

      if (s[sttnID]) {
         Notify.warning(i18n.tr("Favourites"), i18n.tr("URL for station has already been added as favourite"))
//         settings.setValue("favouriteStations", JSON.stringify(s))
         return
      }

      for (var i = 0; i < favouriteModel.count; i++) {
         var stationUrl = favouriteModel.get(i)

         if (stationUrl.url === oldurl) {
            favouriteModel.setProperty(i, "url", newurl)
            break
         }
      }
      settings.setValue("favouriteStations", JSON.stringify(s).replace(oldurl, newurl))

      var t

      try {
         t = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         t = {}
      }

      for (var i = 0; i < favouriteModel.count; i++) {
         var station = favouriteModel.get(i)

         if (station.stationID === Qt.md5(oldurl)) {
            favouriteModel.setProperty(i, "stationID", Qt.md5(newurl))
            break
         }
      }
      settings.setValue("favouriteStations", JSON.stringify(t).replace(Qt.md5(oldurl), Qt.md5(newurl)))

      var u

      try {
         u = JSON.parse(settings.value("favouriteStations"))
      } catch (e) {
         u = {}
      }

      for (var i = 0; i < favouriteModel.count; i++) {
         var station = favouriteModel.get(i)

         if (station.stationID === Qt.md5(oldurl)) {
            favouriteModel.setProperty(i, "stationID", Qt.md5(newurl))
            break
         }
      }
      settings.setValue("favouriteStations", JSON.stringify(u).replace(Qt.md5(oldurl), Qt.md5(newurl)))
   }
}
