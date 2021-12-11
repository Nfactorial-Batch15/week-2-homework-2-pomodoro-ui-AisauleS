//
//  MainScreen2View.swift
//  Pomodora2
//
//  Created by Aisaule Sibatova on 09.12.2021.
//

import SwiftUI

struct MainScreen2View: View {
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
                    Text("24:32")
                        .foregroundColor(.white)
                        .font(.system(size: 46, weight: .bold))
                        .padding()
                    Text("Focus on your task")
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

struct MainScreen2View_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen2View()
    }
}
