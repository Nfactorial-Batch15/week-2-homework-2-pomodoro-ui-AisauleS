//
//  Settings.swift
//  Pomodora2
//
//  Created by Aisaule Sibatova on 11.12.2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(){
                Text("Settings").font(.system(size: 17)).fontWeight(.bold).frame(width: 130, height: 22).foregroundColor(.white)
                    .padding()
                ResultsBlock()
                Spacer()
        }
        }
    }}
        

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
