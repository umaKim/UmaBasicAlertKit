# UmaBasicAlertKit
UmaBasicAlertKit is a Swift UI library for iOS. This library allows user to use variations of Apple's default pop up alert with one line of code.

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-26 at 00 42 25](https://user-images.githubusercontent.com/85341050/147388604-74bcf3d1-2889-4f5b-a536-1db35bdf5cc6.gif)

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-26 at 00 43 08](https://user-images.githubusercontent.com/85341050/147388613-9073d4f2-4067-46db-ae13-d52a584ae4d0.gif)

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-26 at 00 43 23](https://user-images.githubusercontent.com/85341050/147388615-dc0523e9-3935-4457-b5cd-937bf3ce65f0.gif)

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-26 at 00 43 37](https://user-images.githubusercontent.com/85341050/147388616-4c0ce04a-09f0-4212-921a-ab65570961de.gif)

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-26 at 00 43 59](https://user-images.githubusercontent.com/85341050/147388621-fcde6e0d-647a-4e0b-ab07-8fcc57416fec.gif)

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-26 at 00 44 18](https://user-images.githubusercontent.com/85341050/147388623-8e818e12-f786-4843-b932-7bb32b48431e.gif)

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-26 at 00 44 53](https://user-images.githubusercontent.com/85341050/147388628-fd278eca-61e2-4f9a-92c7-7a9d1dc95a51.gif)


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
