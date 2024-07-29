//
//  TabView.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import SwiftUI

struct TabGeneralView: View {
    var body: some View {
        TabView {
            MainScreenView()
                .tabItem {
                    Image("homeIcon")
                        .resizable()

                }
            
            CalendarView()
                .tabItem {
                    Image("calendarIcon")
                        .resizable()
                        
                }
            
            RankingView()
                .tabItem {
                    Image("rankingIcon")
                        .resizable()
                        
                }
        }
    } 
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabGeneralView()
    }
}
