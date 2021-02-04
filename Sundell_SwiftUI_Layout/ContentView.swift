//
//  ContentView.swift
//  Sundell_SwiftUI_Layout
//
//  Created by Tom Flahive on 2/3/21.
//

import SwiftUI
// https://www.swiftbysundell.com/articles/swiftui-layout-system-guide-part-1/
// Left off at "Looking at the above code, we might expect our new Text to be..."

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                CalendarView()
                Spacer()
            }
            .background(Color.yellow)
            Text("Event Title")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .background(Color.purple)
            Spacer()
        }.padding()
    }
}

struct CalendarView: View {
    var body: some View {
        Image(systemName: "calendar")
            .resizable()
            .frame(width: 50, height: 50)
            .padding()
            .background(Color.red)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


