# liveview-native-facebook-sign-in

## About

`liveview-native-facebook-sign-in` is an add-on library for [LiveView Native](https://github.com/liveview-native/live_view_native). It adds [Facebook Sign In](https://developers.facebook.com/docs/facebook-login) support.

## Installation

1. Add this library as a package to your LiveView Native application's Xcode project
    * In Xcode, select *File* → *Add Packages...*
    * Enter the package URL `https://github.com/jens-feldertech/liveview-native-facebook-sign-in`
    * Select *Add Package*

## Usage

Import `FacebookSignInRegistry` and add `.facebookSignIn` to the list of addons on your `LiveView`:

```swift
import SwiftUI
import LiveViewNative
import LiveViewNativeFacebookSignIn

struct ContentView: View {
    var body: some View {
        #LiveView(
          .localhost,
          addons: [.facebookSignIn]
        )
    }
}