//
//  Task.swift
//  firebase-todo-ios
//
//  Created by haayzaki on 2022/04/26.
//

import Foundation

struct Task: Identifiable, Hashable, Codable {

    // MARK: - Properties

    var id: String
    var name: String
    var description: String
    var done: Bool
    var date: String

}
