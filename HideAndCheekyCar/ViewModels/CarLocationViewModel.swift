import Foundation
import Combine

class CarLocationViewModel: ObservableObject {  // ObservableObject tells SwiftUI "watch me for changes and update the UI automatically."
  @Published var carLocation: CarLocation?  // @Published: Announce changes to this property
  
  init() {  // Constructor — runs when ViewModel is created & immediately loads data (saved car) from disk
    loadCarLocation()
  }
  
    // MARK: - Save
  func saveCarLocation(latitude: Double, longitude: Double, notes: String = "") {
    let car = CarLocation(latitude: latitude, longitude: longitude, notes: notes)
    
    do {
      let encoded = try JSONEncoder().encode(car) // convert CarLocation to JSON bytes
      UserDefaults.standard.set(encoded, forKey: "savedCar")
      self.carLocation = car
    } catch {
      print("Error saving car location: \(error)")
    }
  }
  
    // MARK: - Load
  func loadCarLocation() {
    guard let data = UserDefaults.standard.data(forKey: "savedCar") else {  // Save the JSON to device storage
      self.carLocation = nil
      return
    }
    
    do {
      let car = try JSONDecoder().decode(CarLocation.self, from: data)
      self.carLocation = car
    } catch {
      print("Error loading car location: \(error)")
    }
  }
  
    // MARK: - Update Notes
  func updateNotes(_ newNotes: String) {
    guard var car = carLocation else { return }
    
    car.notes = newNotes
    saveCarLocation(latitude: car.latitude, longitude: car.longitude, notes: newNotes)
  }
  
    // MARK: - Delete
  func deleteCarLocation() {
    UserDefaults.standard.removeObject(forKey: "savedCar")
    self.carLocation = nil
  }
}
