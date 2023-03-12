//
//  SettingView.swift
//  LearningList
//
//  Created by kxx: on 2023/03/12.
//

import SwiftUI

struct SettingView: View {
    
    @Binding var showScreen: Bool
    @State var isOnToggle: Bool = false
    
    var body: some View {
        VStack {
            dismissBtn
            
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(height: 400)
                .padding(.horizontal, 30)
            
            List {
                Section("Setting") {
                    ForEach(0..<3) { _ in
                        Toggle(isOn: $isOnToggle) {
                            Text("hello")
                        }
                        .tint(.black)
                    }
                }
                
            }
            .listStyle(PlainListStyle())
            
            Spacer()
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension SettingView {
    var dismissBtn: some View {
        Button {
            showScreen.toggle()
        } label: {
            Image(systemName: "xmark")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .font(.title2)
                .bold()
                .foregroundColor(.black)
        }
    }
}
