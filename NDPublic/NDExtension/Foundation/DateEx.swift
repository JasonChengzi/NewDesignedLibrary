//
//  DateEx.swift
//  NewDesignApplicationDemo
//
//  Created by Jason.Chengzi on 11/8/16.
//  Copyright © 2016 CherryBlossom. All rights reserved.
//

import Foundation

extension Date {
    var timestamp : Double { return timeIntervalSince1970 }
}

extension Date {
    struct Offset {
        var years   : Int?
        var months  : Int?
        var weeks   : Int?
        var days    : Int?
        var hours   : Int?
        var minutes : Int?
        var seconds : Int?
    }
    
    func getOffset(from date : Date) -> Offset {
        let dateComponents = Calendar.current.dateComponents([.year, .month, .weekOfYear, .day, .hour, .minute, .second], from: date, to: self)
        return Offset(years: dateComponents.year, months: dateComponents.month, weeks: dateComponents.weekOfYear, days: dateComponents.day, hours: dateComponents.hour, minutes: dateComponents.minute, seconds: dateComponents.second)
    }
}

extension Date {
    func toString(withDateFormat format : String) -> String {
        return DateFormatter(dateFormat: format).string(from: self)
    }
}
