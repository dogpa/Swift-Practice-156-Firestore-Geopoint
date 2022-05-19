//
//  ContentView.swift
//  Swift Practice 156 Firestore Geopoint
//
//  Created by Dogpa's MBAir M1 on 2022/5/19.
//

import SwiftUI

struct ContentView: View {
    
    //取用FirestoreViewModel刪除與讀取資料的function
    @StateObject var firestoreVM = FirestoreViewModel()
    
    var body: some View {
        VStack{
            NavigationView{
                List(firestoreVM.locationList) {thing in
                    VStack{
                        Text(thing.locationName)
                        Text("緯度\(thing.locationGeopoint.latitude)")
                        Text("經度\(thing.locationGeopoint.longitude)")
                    }
                }
                //顯示時讀取資料
                .onAppear{
                    firestoreVM.fetchData()
                }
                .navigationTitle("地點")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
