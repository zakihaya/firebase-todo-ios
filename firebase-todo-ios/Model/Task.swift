//
//  Task.swift
//  firebase-todo-ios
//
//  Created by haayzaki on 2022/04/26.
//

import Foundation

struct Task: Identifiable, Hashable, Codable {

    // MARK: - Properties

    var id = UUID().uuidString
    var name: String
    var description: String?
    var done = false
    var date = Date()

}

extension Task {
    
    static var dummyTask = [
        "ダミー1",
        "ダミー2",
        "ダミー3"
    ]
    
    static func dummyData() -> Task {
        .init(name: dummyTask.randomElement()!)
    }
}
