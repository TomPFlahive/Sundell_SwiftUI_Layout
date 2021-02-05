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
        VStack {
            EventHeader()
            Spacer()
        }.padding()
    }
}

struct CalendarView: View {
    var body: some View {
        let eventIsVerified = true
        
        Image(systemName: "calendar")
            .resizable()
            .frame(width: 50, height: 50)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
            .addVerifiedBadge(eventIsVerified)
    }
}

struct EventHeader: View {
    var body: some View {
        HStack (spacing: 15){
            CalendarView()
            VStack (alignment: .leading){
                Text("Event Title")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    //.background(Color.purple)
                Text("Location")
                    //background((Color.orange))
            }
            Spacer()
        }
        .padding()
        //.background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func addVerifiedBadge(_ isVerified: Bool) -> some View {
        ZStack(alignment: .topTrailing) {
            self

            if isVerified {
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .offset(x: 3, y: -3)
                    .foregroundColor(Color.red)
            }
        }
    }
}




