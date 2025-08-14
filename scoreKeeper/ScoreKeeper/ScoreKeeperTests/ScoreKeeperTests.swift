//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by suva on 8/1/25.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Example", score: 0, color: .blue),
            Player(name: "Another", score: 5, color: .red),
        ])
        scoreboard.resetScores(to: 0)
        
        for player in scoreboard.players {
            #expect(player.score == 0)
        }
    }

    @Test("Highest Score wins")
    func highestScoreWins() {
        let scoreboard = Scoreboard(
            players: [
                Player(name: "Example", score: 0, color: .blue),
                Player(name: "Another", score: 5, color: .red)
            ],
            state: GameState.gameOver,
            doesHighestScoreWin: true
        )
        
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Another", score: 5, color: .red)])
    }
    
    @Test("Lowest Score wins")
    func lowestScoreWins() {
        let scoreboard = Scoreboard(
            players: [
                Player(name: "Example", score: 0, color: .blue),
                Player(name: "Another", score: 5, color: .red)
            ],
            state: GameState.gameOver,
            doesHighestScoreWin: false
        )
        
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Example", score: 0, color: .blue)])
    }
}

