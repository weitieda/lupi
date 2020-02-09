# Lupi
One-line configuration video background for iOS project, written in Swift.

[![CI Status](https://img.shields.io/travis/weitieda/Lupi.svg?style=flat)](https://travis-ci.org/weitieda/Lupi)
[![Version](https://img.shields.io/cocoapods/v/Lupi.svg?style=flat)](https://cocoapods.org/pods/Lupi)
[![License](https://img.shields.io/cocoapods/l/Lupi.svg?style=flat)](https://cocoapods.org/pods/Lupi)
[![Platform](https://img.shields.io/cocoapods/p/Lupi.svg?style=flat)](https://cocoapods.org/pods/Lupi)

## Usage
```swift
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

weitieda, hi@tiedawei.com

## License

Lupi is available under the MIT license. See the LICENSE file for more info.
