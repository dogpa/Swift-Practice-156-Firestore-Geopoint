//
//  Swift_Practice_156_Firestore_GeopointApp.swift
//  Swift Practice 156 Firestore Geopoint
//
//  Created by Dogpa's MBAir M1 on 2022/5/19.
//

import SwiftUI
import Firebase
import FirebaseFirestoreSwift

@main
struct Swift_Practice_156_Firestore_GeopointApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
