# YLOnBoarding

[![Build Status](https://travis-ci.org/langyx/YLOnBoarding.svg?branch=main)](https://travis-ci.org/langyx/YLOnBoarding)

![This is a alt text.](/images/SS1.png "OnBoarding Screenshot")

## Installation

iOS 13+

In Xcode go to `File -> Swift Packages -> Add Package Dependency` and paste in the repo's url: `https://github.com/langyx/YLOnBoarding` and select master branch.

## Usage

### Item :

```Swift
YLOnBoardingItem(icon: "bag.fill.badge.plus", title: "New content", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
```

### Style :

```Swift
YLOnBoardingStyle(mainColor: .black, accentColor: .blue)
```

### OnBoarding
```Swift
YLOnBoarding(title: "Discover new features", style: YLOnBoardingStyle(), items: items)
```
