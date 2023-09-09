//
//  Ability.swift
//  JSON App
//
//  Created by Екатерина Теляубердина on 09.09.2023.
//

import Foundation

struct Ability: Decodable {
    let index: String
    let name: String
    let full_name: String
    let desc: [String]
    let skills: [Skills]
}

struct Skills: Decodable {
    let name: String
    let index: String
    let url: URL
}
