//
//  ContentViewModel.swift
//  Combine_Practice_1
//
//  Copyright © 2019 kazy. All rights reserved.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var timer: Timer?
    @Published var timeCount: Double = 0.0
    @Published var isDisable: Bool = false
    
    func startTimer() {
        if let _ = timer { return }
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) {timer in
            self.timeCount += 0.01
            print("\(self.timeCount)")
        }
        isDisable = true
    }
    
    func resetTimer() {
        timer?.invalidate()
        timer = nil
        timeCount = 0
        isDisable = false
    }
}
