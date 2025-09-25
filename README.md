# CRIIRC

A modern IRC client built with Flutter, designed for a seamless cross-platform chat experience.

## Features

*   **Cross-Platform:** Enjoy a consistent experience across mobile, desktop, and web.
*   **Intuitive UI:** A clean and user-friendly interface for easy navigation.
*   **Channel Management:** Join, leave, and manage IRC channels effortlessly.
*   **Server Connections:** Connect to multiple IRC servers.
*   **Adaptive Layout:** Optimized layouts for various screen sizes.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

*   [Flutter SDK](https://flutter.dev/docs/get-started/install)
*   [FVM (Flutter Version Management)](https://fvm.app/)

### Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/CRIIRC.git
    cd CRIIRC/app
    ```

2.  **Install Flutter dependencies:**

    ```bash
    fvm use
    fvm flutter pub get
    ```

### Running the Application

To run the application on a connected device or emulator:

```bash
fvm flutter run
```

To build for a specific platform (e.g., web):

```bash
fvm flutter build web
```

## Project Structure

```
app/
├── lib/              # Dart source code
│   ├── criirc/       # Core IRC client components
│   ├── data/         # Data models and IRC client logic
│   ├── pages/        # UI pages/screens
│   └── widgets/      # Reusable UI widgets
├── android/          # Android specific files
├── ios/              # iOS specific files
├── linux/            # Linux specific files
├── macos/            # macOS specific files
├── web/              # Web specific files
└── windows/          # Windows specific files
```

## Contributing

Contributions are welcome! Please see `CONTRIBUTING.md` (to be added) for details on how to contribute.

## License

This project is licensed under the MIT License - see the `LICENSE` file for details.