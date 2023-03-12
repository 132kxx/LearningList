//
//  MainView.swift
//  LearningList
//
//  Created by kxx: on 2023/03/12.
//

import SwiftUI

struct MainView: View {
    
    @State var viewCount: Int = 0
    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            switch viewCount {
            case 0:
                HomeView()
            case 1:
                BoardView()
            case 2:
                AlertView()
            default:
                HomeView()
            }
            
            Spacer()
            Spacer()
            
            FooterView(viewCount: $viewCount)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
