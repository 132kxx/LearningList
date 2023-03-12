//
//  BoardView.swift
//  LearningList
//
//  Created by kxx: on 2023/03/12.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
            List {
                Section("오전") {
                    ForEach(0..<7) { _ in
                        Text("해야할일")
                    }
                }
                
                Section("오후") {
                    ForEach(0..<7) { _ in
                        Text("해야할일")
                    }
                }
                
                Section("저녁") {
                    ForEach(0..<7) { _ in
                        Text("해야할일")
                    }
                }
            }
            .listStyle(PlainListStyle())
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
