# Lupi

![Platform](https://img.shields.io/badge/platforms-iOS-333333.svg)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)][mitLink]

One-line configuration video background for iOS project, written in Swift.

![preview](demo.gif)

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


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

Lupi is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Lupi'
```

## Author

[Tieda Wei](https://tiedawei.com)

## License

`Lupi` is released under an [MIT License](https://opensource.org/licenses/MIT). See [LICENSE](LICENSE) for details.
