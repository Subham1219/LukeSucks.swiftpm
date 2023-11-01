import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        do {
            try FirebaseApp.configure()
        } catch {
            print("Error configuring Firebase: \(error.localizedDescription)")
        }
        return true
    }
}
@main
struct YourApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView() // Replace ContentView with the root view of your app
        }
    }
}
