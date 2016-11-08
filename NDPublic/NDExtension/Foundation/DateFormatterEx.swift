//
//  DateFormatterEx.swift
//  NewDesignApplicationDemo
//
//  Created by Jason.Chengzi on 11/8/16.
//  Copyright © 2016 CherryBlossom. All rights reserved.
//

import Foundation

extension DateFormatter {
    convenience init(dateFormat : String) {
        self.init()
        self.dateFormat = dateFormat
    }
}
