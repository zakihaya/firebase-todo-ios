//
//  TaskListViewModel.swift
//  firebase-todo-ios
//
//  Created by haayzaki on 2022/04/28.
//

import Foundation
import Combine

final class TaskListViewModel: ObservableObject {

    @Published var taskList = [Task]()
    @Published var taskName = ""
    
    /// 入力情報をクリア
    func clear() {
        self.taskName = ""
    }

    /// タスクを作成
    func createNewTask() {
        if (self.taskName.isEmpty) {
            return
        }
        let newTask = Task(name: self.taskName)
        self.taskList.insert(newTask, at: 0)
        self.clear()
    }
    
    func delete(at offsets: IndexSet) {
        self.taskList.remove(atOffsets: offsets)
    }

}

extension TaskListViewModel {
    
    /// ダミーデータを作成する
    func createDummyData(count: Int = 3) {
        self.taskList = (0..<3).map { num in
            Task.init(name: "ダミータスク\(num)")
        }
    }

}
