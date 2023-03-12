//
//  FooterView.swift
//  LearningList
//
//  Created by kxx: on 2023/03/12.
//

import SwiftUI

struct FooterView: View {
    
    @Binding var viewCount: Int
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(alignment: .center, spacing: 100) {
                VStack(spacing: 5) {
                    Image(systemName: "house")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        
                    Text("Home")
                }
                .foregroundColor(viewCount == 0 ? .black : .gray)
                .onTapGesture {
                    viewCount = 0
                }


           
                VStack(spacing: 0) {
                    Image(systemName: "list.bullet.clipboard")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Board")
                }
                .foregroundColor(viewCount == 1 ? .black : .gray)
                .onTapGesture {
                    viewCount = 1
                }


                VStack(spacing: 0) {
                    Image(systemName: "bell")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                    Text("Alert")
                }
                .foregroundColor(viewCount == 2 ? .black : .gray)
                .onTapGesture {
                    viewCount = 2
                }

            }
            .padding(15)
            .padding(.vertical, 20)
        }
        .ignoresSafeArea()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
