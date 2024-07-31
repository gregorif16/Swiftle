//
//  TabView.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import SwiftUI

struct TabGeneralView: View {
    @State var menuVisible = false
    @State var membershipScreenVisible = false
    var body: some View {
        NavigationStack {
            ZStack {
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
                .toolbarBackground(.blue, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        smallSquare
                    }
                }
                
                .overlay {
                    if menuVisible {
                        withAnimation {
                            MenuSquare
                                .offset(x: 80, y: -335)
                        }
                    }
                }
               
            }
        }  .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $membershipScreenVisible, content: {
            MembershipScreen()
        })
    }
    
    var smallSquare: some View {
        return ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color("ColorYellow"), Color("ColorYellow2"),
                    Color("ColorYellow")]),
                startPoint: .bottomLeading,
                endPoint: .topTrailing
            )
            .cornerRadius(14)
            Button {
                menuVisible.toggle()
            } label: {
                Image(systemName: menuVisible ? "x.circle" : "line.3.horizontal")
                    .offset(x: -4)
            }
            
        } .frame(width: 40, height: 40)
            .shadow(color: Color("ColorYellow").opacity(0.3), radius: 4, y: 4)
    }
    
    var MenuSquare: some View {
        return ZStack {
            Rectangle()
                .foregroundColor(Color("backgroundColor"))
                .frame(width: 220, height: 160)
            
            VStack(alignment: .leading, spacing: 22) {
                Button {} label: {
                    Text("Log out")
                    .foregroundStyle(.white) }
                    Button {} label: {
                        Text("Settings")
                        .foregroundStyle(.white) }
                    Button {
                        menuVisible = false
                        membershipScreenVisible = true
                    } label: {
                        Text("Memberships")
                        .foregroundStyle(.white) }
                    
                } .frame(width: 220, height: 160)
                .font(.system(size: 20))
                
            }.cornerRadius(22)
        }
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabGeneralView()
    }
}
