//
//  EmployeeDetails.swift
//  EmployeesList
//
//  Created by Hadir on 05/05/2024.
//

import SwiftUI

struct EmployeeDetails: View {
    let employee: Employee
    var body: some View {
        Spacer()
        VStack{
            Text("Id: \(employee.id)")
            Text("Name: \(employee.name)")
//            Text("About: \(employee.about)")
            Text("Email: \(employee.email)")
        }
        .padding()
//        .navigationTitle("Employee Details")
        Spacer()
    }
}

#Preview {
    EmployeeDetails(employee: Employee(id: "1", name: "Hadir", about: "She/Her", email: "hadir@123.com"))
}
