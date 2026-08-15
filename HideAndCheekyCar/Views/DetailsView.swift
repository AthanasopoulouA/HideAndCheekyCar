import SwiftUI

struct DetailsView: View {  // A new SwiftUI view (screen)
  let viewModel: CarLocationViewModel
  
  var body: some View {
    VStack {
      Text("Details View - Coming Soon")
        .font(.headline)
      
      if let car = viewModel.carLocation {
        VStack(alignment: .leading, spacing: 10) {
          Text("Latitude: \(car.latitude)")
          Text("Longitude: \(car.longitude)")
          Text("Notes: \(car.notes)")
          Text("Saved: \(car.savedDate)")
        }
        .padding()
      }
    }
    .navigationTitle("Details")
  }
}

#Preview {
  DetailsView(viewModel: CarLocationViewModel())
}
