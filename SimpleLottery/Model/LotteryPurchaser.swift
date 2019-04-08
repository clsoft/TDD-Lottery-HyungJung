//
//  LotteryPurchaser.swift
//  SimpleLottery
//
//  Created by HyungJung Kim on 18/03/2019.
//  Copyright © 2019 HyungJung Kim. All rights reserved.
//

import Foundation
import os.log

class LotteryPurchaser {
    
    private(set) var lotteries: [Lottery] = []
    
    func purchase(for purchaseAmount: Int) {
        let purchasableCount = purchaseAmount / Lottery.price
        
        while self.lotteries.count < purchasableCount {
            self.lotteries.append(Lottery())
        }
        
        os_log("You purchased %d lottories.", log: .default, type: .info, self.lotteries.count)
        self.lotteries.forEach { os_log("%s", log: .default, type: .info, $0.numbers.description) }
    }
    
}