//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Mac on 02/06/2022.
//

import Foundation


extension String {
    func capitalizaFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
