//
//  GehnneApp.swift
//  Gehnne
//
//  Created by Shomil Singh on 12/08/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct GehnneApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @State var navigationManager = NavigationManager()
    var body: some Scene {
        WindowGroup {
//            ContentView()
            SplashScreen()
                .environment(navigationManager)
        }
    }
}
