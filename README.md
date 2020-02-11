# Lupi

![Platform](https://img.shields.io/badge/platforms-iOS-333333.svg)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)

One-line configuration video background for iOS project, written in Swift.

![preview](asset/demo.gif)
![preview](asset/demo_rotation.gif)

## Features

-   [x] One line of code to make it work
-   [x] Handled device rotation by default

## Usage

```swift
import Lupi

class ViewController: UIViewController {

    var videoBackgrounView: LupiVideoBackgroundView?

    override func viewDidLoad() {
        super.viewDidLoad()

        videoBackgrounView = try? LupiVideoBackgroundView(fileName: "beach", in: view)
    }
}
```

> By default, audio is muted. Pass `isMuted: false` in initializer if you want to turn it on.

## Installation

### CocoaPods

`Lupi` is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Lupi', :git => 'https://github.com/weitieda/Lupi.git'
```

### Swift Package Manager (Xcode 11+)

In `Xcode 11`, select `File` -> `Swift Packages` -> `Add Package Dependency`, enter Lupi's repo URL `https://github.com/weitieda/Lupi`. Or you can login `Xcode` with your `GitHub` account and just type `Lupi` to search.

## Author

[Tieda Wei](https://tiedawei.com)

## License

`Lupi` is released under an [MIT License](https://opensource.org/licenses/MIT). See [LICENSE](LICENSE) for details.
