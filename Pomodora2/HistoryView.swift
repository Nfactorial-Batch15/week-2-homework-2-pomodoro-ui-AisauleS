//
//  HistoryView.swift
//  Pomodora2
//
//  Created by Aisaule Sibatova on 10.12.2021.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(){
                Text("History").font(.system(size: 17)).fontWeight(.bold).frame(width: 130, height: 22).foregroundColor(.white)
                Spacer()
                Text("21.11.21").font(.system(size: 17)).fontWeight(.bold).frame(width: 330, height: 22, alignment: .leading).foregroundColor(.white)
                ResultsBlock()
                Text("20.11.21").font(.system(size: 17)).fontWeight(.bold).frame(width: 330, height: 22, alignment: .leading).foregroundColor(.white)
                ResultsBlock()
                Text("19.11.21").font(.system(size: 17)).fontWeight(.bold).frame(width: 330, height: 22, alignment: .leading).foregroundColor(.white)
                ResultsBlock()
                Divider().background(Color.white)
                Spacer()
                }
        }
        }
    }
        
        

struct ResultsBlock: View {
    var body: some View {
        Group{
        HStack(spacing: 200) {
            Text("Focus Time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
            Text("25:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
        }.padding()
        Divider().background(Color.white)
        HStack(spacing: 200) {
            Text("Break time").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
            Text("05:00").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
        }.padding()
        Divider().background(Color.white)
        HStack(spacing: 200) {
            Text("Sessions").font(.system(size: 17)).frame(width: 100, height: 22).foregroundColor(.white)
            Text("2").font(.system(size: 17)).frame(width: 47, height: 22).foregroundColor(.white)
        }.padding()
        }
    }}



struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
