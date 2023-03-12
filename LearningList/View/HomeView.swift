//
//  Main.swift
//  LearningList
//
//  Created by kxx: on 2023/03/12.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showScreen: Bool = false
    
    var body: some View {
        VStack {
            //today
            header
            
            Spacer()
            
            cardview
            
            Spacer()
            Spacer()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



// MARK: COMPONENT

extension HomeView {
    var header: some View {
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
        .padding(.horizontal)
    }
    
    var cardview: some View {
        VStack {
            Image("RectImage")
                .resizable()
                .frame(width: 350, height: 550)
                .scaledToFit()
                .cornerRadius(20)
                .overlay {
                    VStack {
                        Text("iOS Dev Course")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .padding(.top, 30)
                            .padding(.leading, 15)

                        Spacer()
                        
                        HStack {
                            Text("0 / 30")
                                
                            
                            Spacer()
                            
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                            }
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()

                    }
                }
        }
    }
    
}
