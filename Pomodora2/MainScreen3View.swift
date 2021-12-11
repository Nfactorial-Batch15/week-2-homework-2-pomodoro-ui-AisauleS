//
//  MainScreen3View.swift
//  Pomodora2
//
//  Created by Aisaule Sibatova on 09.12.2021.
//

import SwiftUI

struct MainScreen3View: View {
    var body: some View {
        
        ZStack {
            Image ("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                FocusCategoryButton ()
                 
            ZStack{
                ProgressBarCustom (progress: 0.10)
                    .padding(40)
                VStack {
                    Text("04:48")
                        .foregroundColor(.white)
                        .font(.system(size: 46, weight: .bold))
                        .padding()
                    Text("Break")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .regular))
                }
            }
            
                HStack(spacing: 116){
                    Image("Pause")
                    Image("Stop")
                }
                }
            }
        }
    }

struct MainScreen3View_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen3View()
    }
}
