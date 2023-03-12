//
//  CardView.swift
//  LearningList
//
//  Created by kxx: on 2023/03/12.
//

import SwiftUI

struct CardView: View {
    
    private var size = UIScreen.main.bounds.size
    @State private var selectedCard: Bool = false

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25) {
                ForEach(0..<3) { _ in
                    VStack {
                        Image("RectImage")
                            .resizable()
                            .frame(width: size.width / 1.2, height: size.height / 1.7)
                            .scaledToFit()
                            .cornerRadius(20)
                            .overlay {
                                if selectedCard {
                                    VStack {
                                        Text("0 / 30")
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .font(.largeTitle)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                            .padding(.top, 30)
                                            .padding(.bottom)
                                        
                                        ForEach(0..<3) { _ in
                                            HStack {
                                                Image(systemName: "checkmark.circle")
                                                Text("hello")
                                            }
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)

                                        Spacer()
                                        
                                        HStack {
                                            Text("0 / 30")
                                                
                                            
                                            Spacer()
                                            
                                            ForEach(0..<5) { _ in
                                                Image(systemName: "star.fill")
                                            }
                                        }
                                        .frame(maxWidth: .infinity, alignment: .trailing)

                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                    .background {
                                        Color.black.opacity(0.3)
                                            .cornerRadius(20)
                                    }
                                } else {
                                    VStack {
                                        Text("iOS Dev Course")
                                            .frame(maxWidth: .infinity, alignment: .center)
                                            .font(.largeTitle)
                                            .fontWeight(.black)
                                            .foregroundColor(.white)
                                            .padding(.top, 30)

                                        Spacer()
                                        
                                        HStack {
                                            Text("0 / 30")
                                                 
                                            Spacer()
                                            
                                            ForEach(0..<5) { _ in
                                                Image(systemName: "star.fill")
                                            }
                                        }
                                         .frame(maxWidth: .infinity, alignment: .trailing)
                                    }
                                    .padding()
                                    .foregroundColor(.white)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    selectedCard.toggle()
                                }
                            }
                    }
                }
            }
            .padding(.horizontal, (size.width - (size.width / 1.2)) / 2)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
