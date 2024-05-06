//
//  EmployeeResponse.swift
//  EmployeesList
//
//  Created by Hadir on 05/05/2024.
//

import Foundation

struct Employee: Codable, Identifiable{
    let id, name, about, email: String
}
