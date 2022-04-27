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

}

extension TaskListViewModel {
    
    /// ダミーデータを作成する
    func createDummyData(count: Int = 3) {
        self.taskList = (0..<3).map { num in
            Task.init(name: "ダミータスク\(num)")
        }
    }

}
