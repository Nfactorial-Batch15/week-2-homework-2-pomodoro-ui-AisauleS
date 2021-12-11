//
//  ContentView.swift
//  Pomodora2
//
//  Created by Aisaule Sibatova on 09.12.2021.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        
     
        TabView {
            MainScreen1View() // you may select here another MainSreen views
                .tabItem { Label("Main", systemImage: "house") }
             
            SettingsView()
            
                .tabItem { Label("Settings", systemImage: "slider.horizontal.3") }
            
            HistoryView()
                .tabItem { Label("History", systemImage: "doc") }
        }
        .accentColor(.white)
        .edgesIgnoringSafeArea(.all
        )
        }
       

    }


extension UITabBarController {
    override open func viewDidLoad() {
        let standardAppearance = UITabBarAppearance()

        standardAppearance.backgroundImage = UIImage(named: "BG")

        tabBar.standardAppearance = standardAppearance

        standardAppearance.configureWithTransparentBackground()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//"slider.horizontal.3"
// "house"
// "doc"
