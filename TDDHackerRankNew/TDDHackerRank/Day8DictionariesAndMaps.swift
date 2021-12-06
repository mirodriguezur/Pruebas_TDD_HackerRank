//
//  Day8DictionariesAndMaps.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 18/11/21.
//

import Foundation

private let phoneBook = [
    "sam" : "99912222",
    "tom" : "11122222",
    "harry" : "12299933"
]

enum PhoneBookDictionaryErrors: Error {
    case emptyInput
    case unregisteredName
}

func consultPhoneBook(nameKey: String) throws {
    guard !nameKey.isEmpty else {
        throw PhoneBookDictionaryErrors.emptyInput
    }
    guard (phoneBook[nameKey] != nil) else {
        throw PhoneBookDictionaryErrors.unregisteredName
    }
}


