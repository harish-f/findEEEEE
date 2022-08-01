import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CheckRecycleView()
                .tabItem {
                    Label ("Recyclables", systemImage: "trash.fill")
                }
            LocationFinderView()
                .tabItem {
                    Label("Locations", systemImage: "location.fill")
                }
        }
    }
}
