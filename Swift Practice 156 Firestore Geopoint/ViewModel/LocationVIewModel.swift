//
//  LocationVIewModel.swift
//  Swift Practice 156 Firestore Geopoint
//
//  Created by Dogpa's MBAir M1 on 2022/5/19.
//

import Foundation
import Firebase

final class FirestoreViewModel : ObservableObject {
    
    //儲存讀取後的任務
    @Published var locationList = [LocationInfo]()
    
    //建立Firestore
    let firestore = Firestore.firestore()
    
    ///取得資料後透過Main Thread更新畫面，並存入locationList
    func fetchData () {
        firestore.collection("Location").getDocuments { data, error in
            if error == nil {
                if let data = data {
                    DispatchQueue.main.async {
                        self.locationList = data.documents.map { thing in
                            return LocationInfo(id: thing.documentID,
                                                locationName: thing["locationName"] as? String ?? "",
                                                locationGeopoint: thing["location"] as? GeoPoint ?? GeoPoint(latitude: 0, longitude: 0))
                        }
                    }
                }
            }else{
                print(error!)
            }
        }
    }
}

