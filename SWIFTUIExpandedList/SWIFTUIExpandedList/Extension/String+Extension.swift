//
//  String+Extension.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 21/05/24.
//

import Foundation

extension String
{
    func isStringAnInt() -> Bool {

        if let _ = Int(self) {
            return true
        }
        return false
    }
    
}
