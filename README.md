# UmaBasicAlertKit
UmaBasicAlertKit is a Swift UI library for iOS. This library allows user to use variations of Apple's default pop up alert with one line of code.

## Installation
UmaBasicAlertKit can be installed with Swift Package Manager.

Swift Package Manager (Xcode 12 or higher)
The preferred way of installing KatKit is via the Swift Package Manager.

In Xcode, open your project and navigate to File → Swift Packages → Add Package Dependency...
Paste the repository URL (https://github.com/umaKim/KatKit.git) and click Next.
For Rules, select Version (Up to Next Major) and click Next.
Click Finish.

## Usage
```Swift
let katView = KatView()
katView.items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"]
```

```Swift
katView.delegate = self
func katView(_ katView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

}
```

## Requirements
iOS 14.0+
Swift 5+

## Author
Uma Kim
