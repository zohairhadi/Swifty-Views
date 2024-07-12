# SwiftyViews

SwiftyViews is a SwiftUI-based project that demonstrates the creation and usage of custom buttons with rounded rectangles and squares. This project serves as an example of how to transition from UIKit to SwiftUI, showcasing custom-styled buttons with various properties.

## Features

- **RoundRectButtonView**: A customizable rounded rectangle button with options for color, title color, border color, border width, title string, font size, and an optional image.
- **RoundSquareButtonView**: A customizable rounded square button with options for color, title color, border color, border width, font size, and an image.

## Screenshots

<img width="443" alt="Screenshot 2024-07-09 at 3 10 19 PM" src="https://github.com/saqlainjamil5/swifty-View/assets/80804975/53138d85-d4c7-4146-933e-29828e5d989d">


## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/saqlainjamil5/SwiftyViews.git
    ```
2. Open the project in Xcode:
    ```bash
    cd SwiftyViews
    open SwiftyViews.xcodeproj
    ```
3. Build and run the project on your preferred simulator or device.

## Usage

### RoundRectButtonView

To use `RoundRectButtonView`, you can customize the button by providing the desired properties:

```swift
RoundRectButtonView(
    color: Color(red: 0.941, green: 0.498, blue: 0.353),
    titleColor: .white,
    borderColor: Color(red: 0.925, green: 0.235, blue: 0.102),
    borderWidth: 2,
    title: "Hello",
    size: 20
)
.frame(height: 60)
.padding(.horizontal, 60)
```
### Contributing
Contributions are welcome! Please feel free to submit a Pull Request.



