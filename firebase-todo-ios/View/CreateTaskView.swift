//
//  CreateTaskView.swift
//  firebase-todo-ios
//
//  Created by haayzaki on 2022/04/29.
//

import SwiftUI

struct CreateTaskView: View {

    @ObservedObject var viewModel: TaskListViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("新しいタスクを入力", text: $viewModel.taskName, onCommit: {
                    self.viewModel.createNewTask()
                })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.gray, width: 1)
                    .modifier(ClearButton(taskName: $viewModel.taskName))
            }
        }
    }

}

/// テキストフィールドにクリアボタンを追加するModifier.
struct ClearButton: ViewModifier {

    @Binding var taskName: String

    public func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            content
            // タスク名に入力がある場合はクリアボタンを表示する.
            if !taskName.isEmpty {
                Button(action: {
                    self.taskName = ""
                }) {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.gray)
                }
                .padding(.trailing, 8)
            }
        }
    }
}
