# VirginsMilk

VirginsMilk is an elegand and simple password validator lybrary written in swift.

## Usage

```swift
let passwordRequirements = PasswordRequirements
                                        .Builder
                                        .init(minCharCount: 6, maxCharCount: 30)
                                        .setLowercaseCount(lowercaseCount: 1)
                                        .setUpperCaseCount(uppercaseCount: 1)
                                        .build()
        
        
        let isPassedValidation = VirginsMilk.init().validatePassword(requirements: passwordRequirements, password: password)
```

and many more options to choose from requirements...

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate VirginsMilk into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
    pod 'VirginsMilk', :git => 'https://github.com/Schumakher/VirginsMilk.git', :tag => '1.0.3'
```
or not to specify concrete version and get latest

```ruby
    pod 'VirginsMilk', :git => 'https://github.com/Schumakher/VirginsMilk.git'
```

Then, run the following command:

```bash
$ pod install
```
