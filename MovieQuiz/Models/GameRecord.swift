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

extension GameRecord: Comparable {
    
    private var accuracy: Double {
        guard total != 0 else {
            return 0
        }
        
        return Double(correct) / Double(total)
    }
    static func < (Ihs: GameRecord, rhs: GameRecord) -> Bool {
        Ihs.accuracy < rhs.accuracy
        
    }
}
