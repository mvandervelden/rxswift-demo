# RxSwift Demo
This repo demonstrates how you can use RxSwift in the front-end of your app to modularize screens, while still being able to share the same state.

Uses the following ideas of VIPER:
* Each screen is represented by a module
* Navigation is handled by coordinators
* Replaced Presenters & Interactors with ViewModels (MVVM-style) and reactive binding using RxSwift.

Features:
* Includes a fake API layer to represent asynchronous calls
* Shares state by initializing modules with the same entity instance. Can be realized in different ways (using local storage, singleton instances)
* Does not need any references to the coordinators: they just act as helpers to setup screens.

Dependencies:
* Xcode9 beta
* Cocoapods

How to run:
* `git clone https://github.com/mvandervelden/rxswift-demo.git`
* `cd rxswift-demo`
* `pod install`
* `open VipeRxDemo.xcworkspace`
