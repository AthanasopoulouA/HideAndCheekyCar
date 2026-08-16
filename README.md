# Hide 'n Cheeky Car

//
//  README.md
//  HideAndCheekyCar
//
//  Created by Asimina Athanasopoulou on 05/07/2026.
//

# 🚗 Hide 'n Cheeky Car

**Never lose your car in a parking lot again.**

A playful iOS app that remembers where you parked — because your car likes to play hide and seek, but you don't have time for games.
                                                                                                                                
---
                                                                                                                                
## What It Does
- 📍 **Save** your car's location with one tap
- 🗺️ **View** it on an interactive map
- 🧭 **Navigate** back to it using Apple Maps
- 📝 **Add notes** like "Level 3, near the lift"
- ✏️ **Edit or delete** saved locations anytime
                                                                                                                                
No accounts, no setup, no fuss. Park, tap, forget — the app remembers so you don't have to.
                                                                                                                                
---
                                                                                                                                
## Why This App

Big parking lots, multilevel car parks, and unfamiliar areas make it easy to forget exactly where you left your car. Hide 'n Cheeky Car solves a small daily annoyance with a simple, no-nonsense tool that has a bit of personality built in.

---

## Status

🚧 **In active development — Phase 1 (MVP)**

Current focus: core save / view / navigate / edit / delete functionality, stored locally on-device.

Planned for later phases: cloud sync and support for saving multiple locations.
              
---
              
## Built With
              
- **Swift** + **SwiftUI**
- **MapKit** for maps
- **CoreLocation** for GPS
- **MVVM** architecture
              
---
              
## For Developers
              
Technical planning docs, architecture, and folder structure are in [`README.md`](./README.md).
              
---
              
## License
              
TBD
              
---
              
## Feedback / Contact
              
TBD — add your preferred contact method or issue tracker link here.

### iOS App Specifications & Planning Document

**Platform:** iOS (SwiftUI)
**Architecture:** MVVM
**Current Phase:** Phase 1 – MVP (Local Storage)

---

## App Overview

### Purpose
A playful iOS app that helps users remember where they parked their car. Users save their car's GPS location, view it on a map, and get directions back to it. The app has personality — the car is "playing hide and seek" with the user.

### Target Users
- Drivers who frequently forget parking locations
- People in large parking lots/multilevel car parks
- Anyone who parks in unfamiliar areas

### Unique Selling Point
Fun, cheeky personality combined with practical parking location memory.

---

## Feature Breakdown by Phase

### Phase 1: MVP – Local Storage (FREE)
*What we're building now.*

| Feature | Description | Status |
|---|---|---|
| Save Car Location | One-tap button to save current GPS coordinates | In Progress |
| Display on Map | Show saved car location on interactive map (MapKit) | In Progress |
| Navigate to Car | Open Apple Maps with directions to car | In Progress |
| Add Notes | User can add parking notes (e.g., "Floor 3") | In Progress |
| Edit Location | Edit notes and location details | In Progress |
| Delete Location | Remove saved car location | In Progress |
| Local Storage | Save data on device using UserDefaults | In Progress |

**Scope:** Single saved car location (one at a time)

---

## Technical Architecture

### Tech Stack
- **Language:** Swift
- **UI Framework:** SwiftUI
- **Architecture:** MVVM
- **Location Services:** CoreLocation
- **Maps:** MapKit
- **Data Storage (Phase 1):** UserDefaults
- **Data Storage (Phase 3):** Firebase/Supabase

### Project Folder Structure
```
HideNCheekycar/
├── Models/
│   └── CarLocation.swift
├── ViewModels/
│   └── CarLocationViewModel.swift
├── Views/
│   ├── ContentView.swift
│   ├── HomeView.swift
│   ├── MapView.swift
│   └── DetailsView.swift
├── Services/
│   ├── LocationService.swift
│   └── StorageService.swift
└── Utils/
    └── Constants.swift
```

### Connection: Dataflow
```
HomeView (Screen 1)
  │
  ├── Creates ViewModel
  │   @StateObject var viewModel = CarLocationViewModel()
  │
  ├── Shows saved car location
  │   Text("✓ Car Saved!")
  │
  └── Has a button: "Details"
      └── Taps button → Navigate to DetailsView
          └── Passes the SAME viewModel
              NavigationLink(destination: DetailsView(viewModel: viewModel))

DetailsView (Screen 2)
  │
  ├── Receives ViewModel from HomeView
  │   let viewModel: CarLocationViewModel
  │
  ├── Displays car details
  │   Text("Latitude: \(viewModel.carLocation?.latitude)")
  │
  └── Can edit/delete
      └── Updates viewModel
          └── Changes propagate back to HomeView
              (because it's the same object)
```

---

## Development Roadmap

### Week 1: Phase 1A–1B
- Create Xcode project
- Create CarLocation model
- Add location permissions
- Create ViewModel
- Create HomeView with save button

### Week 2: Phase 1C–1D
- Implement MapView
- Implement DetailsView
- Add edit/delete functionality
- Test all features

### Week 3: Polish & Testing
- UI refinements
- Error handling
- Manual testing
- Prepare for App Store

---

## Success Metrics
- [ ] App launches without crashes
- [ ] Can save car location
- [ ] Can view on map
- [ ] Can navigate via Apple Maps
- [ ] Location persists after app close
- [ ] Notes save correctly
- [ ] Delete functionality works
- [ ] Permissions handled gracefully

---

**Document Version:** 1.0 | **Status:** In Development – Phase 1A
