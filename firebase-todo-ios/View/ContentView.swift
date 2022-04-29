//
//  ContentView.swift
//  firebase-todo-ios
//
//  Created by haayzaki on 2022/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject(initialValue: TaskListViewModel()) var viewModel

    init () {
        viewModel.createDummyData(count: 5)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                CreateTaskView(viewModel: self.viewModel)
                    .padding()

                List {
                    ForEach(viewModel.taskList) { task in
                        Text(task.name)
                    }
                }
            }
            .navigationTitle("タスク一覧")
            .navigationBarItems(trailing: EditButton()) // 編集ボタン
        }
    }

}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }

}
