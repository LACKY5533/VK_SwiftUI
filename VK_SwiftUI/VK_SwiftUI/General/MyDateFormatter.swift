//
//  MyDateFormatter.swift
//  VK_SwiftUI
//
//  Created by LACKY on 23.02.2022.
//

import Foundation

class MyDateFormatter {
    
    let dateFormatter = DateFormatter()
    
    func convertDate(timeIntervalSince1970: Double) -> String{
        dateFormatter.dateFormat = "MM-dd-yyyy HH.mm"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        let date = Date(timeIntervalSince1970: timeIntervalSince1970)
        return dateFormatter.string(from: date)
    }
}
