//
//  CalendarView.swift
//  Swiftle
//
//  Created by Gregori Farias on 29/7/24.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        ZStack {
            GeneralBackGround()
            
            Text("AUN POR HACER")
                .font(.system(size: 28))
                .bold()
                .foregroundStyle(.white)
                
        }
    }
}

#Preview {
    CalendarView()
}
