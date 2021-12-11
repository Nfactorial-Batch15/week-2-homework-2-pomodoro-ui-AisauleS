//
//  MainScreen1View.swift
//  Pomodora2
//
//  Created by Aisaule Sibatova on 09.12.2021.
//

import SwiftUI

struct MainScreen1View: View {
    var body: some View {
        
        ZStack {
            Image ("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                FocusCategoryButton ()
                 
            ZStack{
                ProgressBarCustom (progress: 0.00)
                    .padding(40)
                VStack {
                    Text("25:00")
                        .foregroundColor(.white)
                        .font(.system(size: 46, weight: .bold))
                        .padding()
                    Text("Focus on your task")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .regular))
                }
            }
            
                HStack(spacing: 116){
                    Image("Play")
                    Image("Stop")
                }
                }
    
            }
        }
    }


struct ProgressBarCustom: View {
    var progress: Float
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 5.0)
                .opacity(1.0)
                .foregroundColor(Color.gray)
                .frame(width: 248.0, height: 248.0)
                .overlay(
                Circle ()
                    .trim(from: 0.0, to: CGFloat(progress))
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(270))
                )
        }
    }
}
    
    struct FocusCategoryButton: View {
        var body: some View {
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(Color.gray.opacity(0.5))
                    
                    HStack {
                    Image(systemName: "pencil")
                     .foregroundColor(.white)
    
                    Text("Focus Category")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .regular))
                }
                    
            }
            .frame(width: 170, height: 36)
            .padding(16)
        }
}

    }




struct MainScreen1View_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen1View()
    }
}
