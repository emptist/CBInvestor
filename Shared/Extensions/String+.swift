//
//  String+.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/9/4.
//

import Foundation

extension String {
    func toDate(withFormat format: String = "yyyy/MM/dd HH:mm:ss") -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        guard let date = dateFormatter.date(from: self) else {
            preconditionFailure("Take a look to your format")
        }
        return date
    }
}
