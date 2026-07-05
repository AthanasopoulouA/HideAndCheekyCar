# Hide 'n Cheeky Car
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
