//
//  HeaderView.swift
//  LearningList
//
//  Created by kxx: on 2023/03/12.
//

import SwiftUI

struct HeaderView: View {

    @State private var showScreen: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("Today")
                    
                Text("Mar 12 Sunday")
                    .font(.title)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                Text("you have 21 mission per day")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                showScreen.toggle()
            } label: {
                Image(systemName: "gear")
                    .font(.title)
                    .foregroundColor(.black)
            }
            .fullScreenCover(isPresented: $showScreen) {
                SettingView(showScreen: $showScreen)
            }

        }
        .padding()
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
