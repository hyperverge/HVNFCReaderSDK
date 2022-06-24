
# HVNFCReaderSDK

HVNFCReaderSDK is used to scan NFC enabled smart ID cards and extract data from these cards using NFC. 

This SDK can be used within iOS native apps and supports all iOS versions from iOS 9

## Minimum Requirements

1.  min iOS SDK version 9
2.  Recommended platform versions :
    1.  xCode 13+
    2.  Swift 5.5
    3.  Cocoapods 1.11.x

## Integration steps:

1. Add HVNFCReader SDK to your project and run `pod install`
```ruby
pod 'HVNFCReaderSDK'
```

**NFC Scan Usage**

To request the user for NFC scan, add this key-value pair in your application's info.plist file.

- **Key :** Privacy - NFC Scan Usage Description

- **Value :** "This app uses NFC to scan smart chip ids"

**NFC Tag Identifiers**

 Please add the following tag identifiers in info.plist file.

- **Key :** ISO7816 application identifiers for NFC Tag Reader Session

- **Value :**  A0000002471001
  
1. Import `HVNFCReaderSDK` module
```swift
import HVNFCReaderSDK
```

2. Create `HVNFCConfig` instance

```swift
//  Create HVNFConfig instance
 let hvNFCConfig = HVNFConfig()
 hvNFCConfig.setQRData(qrData: <QR-DATA>), // Data that is returned from QR code scanner
```

3. Create `completionHandler` instance

```swift
let completionHandler :( _hvNFCResult: HVNFCResult) -> Void = {
    _hvNFCResult in
        //  Handle _hvNFCResult (contact Hyperverge team for more info)
}
```

4. Call `HyperNFC.start(...)` 

```swift
HyperNFC.start(self, hvNFCConfig: hvNFCConfig, completionHandler)
```
**Please contact Hyperverge for complete documentation and a properly designed solution specific to your usecase to use HyperKyc SDK to its optimum capacity**
