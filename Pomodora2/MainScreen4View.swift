//
//  MainScreen4View.swift
//  Pomodora2
//
//  Created by Aisaule Sibatova on 09.12.2021.
//

import SwiftUI

struct MainScreen4View: View {
    var body: some View {
        ZStack {
            MainScreen3View ()
            dimming
            bottomSheet
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var dimming: some View {
        Color.black.opacity(0.2)
    }

    var bottomSheet: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
            VStack (spacing:16) {
                bottomSheetHeader
                .padding(.top, 16)
                Spacer()
                Grid ()
                }
               .padding (16)
            }
        .frame(height: 362)
        .inBottomSheet()
        }
    }

    var bottomSheetHeader: some View {
        HStack() {
            Text("Focus Category")
                .padding()
            Image(systemName: "xmark")
        }
    }


struct Grid: View {
    
    private var items: [String] = ["Work", "Study", "Workout", "Reading", "Meditation", "Others"]

    private var GridItemLayout = [GridItem(.flexible()),GridItem(.flexible())]
    
var body: some View {
    LazyVGrid(columns: GridItemLayout, spacing: 20){
        ForEach ((0...5), id:\.self){
            Text (items[$0 % items.count])
                .font(.system(size: 12))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }

}}


fileprivate extension View {
    func withTitle(named name: String) -> some View {
        VStack {
            HStack {
                Text(name)
                Spacer()
            }
            self
        }
    }

    func inBottomSheet() -> some View {
        VStack {
            Spacer()
            self
        }
    }
}

struct MainScreen4View_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen4View()
    }
}

