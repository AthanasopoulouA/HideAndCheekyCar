//
//  CarLocation.swift
//  HideAndCheekyCar
//
//  Created by Asimina Athanasopoulou on 11/07/2026.
//


import Foundation
import CoreLocation

struct CarLocation: Codable { // Codable: Can save/load to device storage
    let id: UUID
    let latitude: Double
    let longitude: Double
    var notes: String
    let savedDate: Date
    
    init(latitude: Double, longitude: Double, notes: String = "") {
        self.id = UUID()
        self.latitude = latitude
        self.longitude = longitude
        self.notes = notes
        self.savedDate = Date()
    }
}
