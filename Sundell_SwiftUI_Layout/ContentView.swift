//
//  ContentView.swift
//  Sundell_SwiftUI_Layout
//
//  Created by Tom Flahive on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CalendarView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
