//
//  NetworkService.swift
//  EmployeesList
//
//  Created by Hadir on 05/05/2024.
//

import Foundation


class EmployeeViewModel: ObservableObject {
    
    @Published var employees = [Employee]()
    
    init() {
        fetchEmployees()
    }
    
    func fetchEmployees() {
        guard let url = URL(string: "https://dl.dropboxusercontent.com/s/1y7yqdefyayegzo/employeelist.json?dl=0") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode([Employee].self, from: data)
                    DispatchQueue.main.async {
                        self.employees = decodedData 
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }.resume()
    }
}
