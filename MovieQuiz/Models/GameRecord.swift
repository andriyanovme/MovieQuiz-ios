//
//  GameRecord.swift
//  MovieQuiz
//
//

import Foundation

struct GameRecord: Codable {
    let correct: Int
    let total: Int
    let date: Date
}

extension GameRecord {
    
    func isBetterThan(_ another: GameRecord) -> Bool {
        correct > another.correct
    }
}
