//
//  Copyright © 2017 Rosberry. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        if let appInfo = Bundle.main.infoDictionary,
            let shortVersionString = appInfo["CFBundleShortVersionString"] as? String,
            let bundleVersion = appInfo["CFBundleVersion"] as? String {
            let appVersion = "\(shortVersionString) (\(bundleVersion))"
            UserDefaults.standard.appVersion = appVersion
        }
        return true
    }
}

fileprivate extension UserDefaults {
    
    var appVersion: String? {
        get { return string(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }
}
