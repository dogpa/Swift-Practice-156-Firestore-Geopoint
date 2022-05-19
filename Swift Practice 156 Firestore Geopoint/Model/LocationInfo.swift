//
//  LocationInfo.swift
//  Swift Practice 156 Firestore Geopoint
//
//  Created by Dogpa's MBAir M1 on 2022/5/19.
//

import FirebaseFirestore

struct LocationInfo: Identifiable {
    var id : String
    var locationName: String
    var locationGeopoint: GeoPoint
}


