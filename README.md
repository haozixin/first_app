# AgriWatch - Agricultural Monitoring App

A modern agricultural monitoring application built with Flutter, implementing Clean Architecture patterns for real-time farm data monitoring, alerts management, and data visualization.

## Features

### 🔐 User Authentication
- **Login Page**: Email and password authentication with local form validation
- **Register Page**: New user registration with password confirmation
- **Responsive Design**: Adapts to different screen sizes

### 📊 Dashboard
- **Farm Cards Grid**: 4 different farm areas displayed in a grid layout
- **Real-time Monitoring**: 
  - Soil moisture levels
  - Drought level indicators  
  - Location information
- **Interactive Navigation**: Tap any farm card to view detailed information

### 🚜 Farm Details Page
- **SliverAppBar**: Beautiful collapsible header with farm name
- **TabBar Navigation**: Two tabs for different views
  - **Overview Tab**: Flutter Map showing farm location
  - **Charts Tab**: fl_chart displaying 24-hour trend data
- **Real-time Data**: Simulated sensor data with random generation

### 🚨 Alerts Management
- **Alert List**: Display all alerts with title, severity, and timestamp
- **Severity Levels**: Low, Medium, High, Critical
- **Filter Function**: PopupMenuButton for filtering by severity
- **State Management**: StateNotifierProvider managing filter state

## Technology Stack

### 🏗️ Architecture
- **Clean Architecture**: Clear separation of concerns with layered architecture
- **Feature-based Structure**: Organized by features for better scalability

### 📦 Main Dependencies
- **flutter_riverpod**: State management solution
- **auto_route**: Type-safe routing with code generation
- **freezed**: Immutable data classes with code generation
- **get_it**: Dependency injection
- **fl_chart**: Beautiful chart widgets
- **flutter_map**: Interactive map widget
- **formz**: Form validation

### 🎨 Design Patterns
- **Repository Pattern**: Data persistence abstraction
- **Provider Pattern**: State management
- **MVVM**: Business logic separation

## Project Structure

```
lib/
├── core/                    # Core configurations
│   ├── constants/          # App constants
│   ├── di/                 # Dependency injection
│   ├── routing/            # Routing configuration
│   └── theme/              # Theme configuration
├── features/               # Feature modules
│   ├── auth/               # Authentication feature
│   ├── dashboard/          # Dashboard feature
│   ├── farm_detail/        # Farm details feature
│   └── alerts/             # Alerts feature
└── shared/                 # Shared components
    ├── models/             # Data models
    └── widgets/            # Shared widgets
```

## Getting Started

### Prerequisites
- Flutter SDK 3.8.1 or higher
- Dart 3.8.0 or higher
- iOS Simulator or Android Emulator

### Installation

1. **Clone the repository**
```bash
git clone <repository-url>
cd first_app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Generate code files**
```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

4. **Run the application**

For iOS Simulator:
```bash
# List available emulators
flutter emulators

# Launch iOS simulator
flutter emulators --launch apple_ios_simulator

# Run the app
flutter run
```

For Android Emulator:
```bash
# Launch Android emulator
flutter emulators --launch <emulator_id>

# Run the app
flutter run
```

For Web:
```bash
flutter run -d chrome
```

## App Screenshots

### Login Page
- Email and password input fields
- Form validation
- Navigation to register page

### Dashboard
- 4 farm area cards
- Real-time soil moisture display
- Drought level indicators

### Farm Details
- Map view with location marker
- Data charts with 24-hour trends
- Tabbed interface

### Alerts Management
- Alert list with severity indicators
- Filter by severity level
- Detailed alert information

## Development

### Running Tests
```bash
flutter test
```

### Code Analysis
```bash
flutter analyze
```

### Building for Release

iOS:
```bash
flutter build ios
```

Android:
```bash
flutter build apk
```

Web:
```bash
flutter build web
```

## Features Roadmap
- [ ] Real API integration
- [ ] Push notifications
- [ ] Offline support
- [ ] Multi-language support
- [ ] Weather integration
- [ ] Historical data analysis

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For questions or support, please create an issue in the repository.
