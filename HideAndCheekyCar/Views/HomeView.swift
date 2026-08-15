//
//  HomeView.swift
//  HideAndCheekyCar
//
//  Created by Asimina Athanasopoulou on 15/08/2026.
//

import SwiftUI

struct HomeView: View {
  @StateObject private var viewModel = CarLocationViewModel() // @StateObject: this ViewModel is owned by this view
  
  var body: some View { // the UI content of this view: return something that's a View
    NavigationView {  // container that allows navigation between screens
      VStack(spacing: 20) {
          // Title
        Text("Hide 'n Cheeky Car")
          .font(.title)
          .fontWeight(.bold)
          .foregroundColor(.blue)
          .padding(.top, 40)
        
        Spacer()
        
          // Car icon
        Text("🚗")
          .font(.system(size: 80))
        
          // Status message
        if let car = viewModel.carLocation {
          VStack(spacing: 10) {
            Text("✓ Car Saved!")
              .font(.headline)
              .foregroundColor(.green)
            
            Text("Saved: \(formattedDate(car.savedDate))")
              .font(.caption)
              .foregroundColor(.gray)
          }
          .padding()  // Add space inside
          .background(Color.gray.opacity(0.2))
          .cornerRadius(8)
        } else {
          Text("No car location saved")
            .font(.caption)
            .foregroundColor(.gray)
        }
        
        Spacer()
        
          // Save button
        Button(action: saveMockLocation) {
          HStack {  //Horizontal stack (side by side)
            Image(systemName: "mappin.circle.fill") // System icon (built-in iOS icon)
            Text("Save Car Location")
          }
          .frame(maxWidth: .infinity)
          .padding()
          .background(Color.blue)
          .foregroundColor(.white)
          .cornerRadius(8)
          .font(.headline)
        }
        
          // Navigation links
        HStack(spacing: 10) {
          NavigationLink(destination: MapViewContainer(viewModel: viewModel)) {
            Text("Map")
              .frame(maxWidth: .infinity)
              .padding()
              .background(Color.gray.opacity(0.2))
              .foregroundColor(.black)
              .cornerRadius(8)
          }
          .disabled(viewModel.carLocation == nil)
          
          NavigationLink(destination: DetailsView(viewModel: viewModel)) {
            Text("Details")
              .frame(maxWidth: .infinity)
              .padding()
              .background(Color.gray.opacity(0.2))
              .foregroundColor(.black)
              .cornerRadius(8)
          }
          .disabled(viewModel.carLocation == nil)
        }
        
        Spacer()
          .frame(height: 20)
      }
      .padding()
      .navigationTitle("Home")
    }
  }
  
    // MARK: - Mock Location Save
  private func saveMockLocation() { // UI updates automatically (because @Published)
      // Mock GPS coordinates (London)
    let mockLatitude = 51.5074
    let mockLongitude = -0.1278
    let mockNotes = "Mock location for testing"
    
    viewModel.saveCarLocation(
      latitude: mockLatitude,
      longitude: mockLongitude,
      notes: mockNotes
    )
  }
  
    // MARK: - Helper
  private func formattedDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter.string(from: date)
  }
}

  // Placeholder for MapView (we'll build this later)
struct MapViewContainer: View {
  let viewModel: CarLocationViewModel
  
  var body: some View {
    Text("Map View - Coming Soon")
  }
}

#Preview {
  HomeView()
}
