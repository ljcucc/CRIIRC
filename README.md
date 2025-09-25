# CRIIRC - A Cross-Platform IRC Client

CRIIRC is a modern, cross-platform IRC (Internet Relay Chat) client built with Flutter. It aims to provide a seamless and intuitive experience for connecting to IRC networks, joining channels, and communicating with other users.

## Features

*   **Cross-Platform:** Enjoy CRIIRC on Android, iOS, Web, macOS, Linux, and Windows from a single codebase.
*   **Intuitive UI:** A clean and user-friendly interface designed for efficient IRC communication.
*   **Channel Management:** Easily join, leave, and manage multiple IRC channels.
*   **Server Connections:** Connect to various IRC networks with configurable server settings.
*   **Private Messaging:** Engage in one-on-one conversations with other IRC users.
*   **Adaptive Layouts:** Responsive design for optimal viewing across different screen sizes and devices.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Ensure you have the following installed:

*   **Flutter SDK:** [Install Flutter](https://flutter.dev/docs/get-started/install)
*   **FVM (Flutter Version Management):** This project uses FVM to manage its Flutter SDK version. If you don't have FVM, install it globally:
    ```bash
    dart pub global activate fvm
    ```
    Then, ensure you use the project's Flutter version:
    ```bash
    fvm use
    fvm install
    ```

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/your-username/criirc.git
    cd criirc
    ```
2.  Get Flutter dependencies:
    ```bash
    fvm flutter pub get
    ```

### Running the Application

To run the application on a connected device or emulator:

```bash
fvm flutter run
```

To run on a specific platform (e.g., web, macOS):

```bash
fvm flutter run -d chrome
fvm flutter run -d macos
```

## Project Structure

*   `lib/`: Contains the main application source code.
    *   `lib/criirc/`: Core IRC client widgets and components.
    *   `lib/data/`: Data models and IRC client logic (e.g., `irc_client.dart`).
    *   `lib/pages/`: Different screens/pages of the application.
    *   `lib/widgets/`: Reusable UI widgets.
*   `android/`, `ios/`, `linux/`, `macos/`, `web/`, `windows/`: Platform-specific project files.
*   `images/`: Application assets like `ur_alone.webp`.
*   `test/`: Unit and widget tests.

## Contributing

Contributions are welcome! Please feel free to open an issue or submit a pull request.

## License

This project is licensed under the [LICENSE](LICENSE) file.