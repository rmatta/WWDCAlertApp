NOTE: This app will NOT be approved (rightfully so) by Apple in the AppStore, because it uses location updates to be able to run in the background. There is no valid reason for this type of app to use location updates.

This is a simple app that will generate a local notification every time [WWDC](https://developer.apple.com/wwdc/) page updates.

It refreshes every 2 mins and caches the last fetched content of [WWDC](https://developer.apple.com/wwdc/). If the most recent content is not same as previously cached copy, it will trigger a UILocalNotification. 

The app also generates a UILocalNotification, if the app is killed.

Please feel free to modify and run it on your local devices to be able to track WWDC tickets. If you find a bug, please submit a fix/report to the repo, so we all can benefit. Also, this app was put together quickly over an evening, and has not been field tested well, so please do not make this the only source of tracking WWDC date update and use other means as well.
