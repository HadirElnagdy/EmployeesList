//
//  EmployeeCell.swift
//  EmployeesList
//
//  Created by Hadir on 05/05/2024.
//

import SwiftUI

struct EmployeeCell: View {
    var employee: Employee
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg")).clipShape(Circle())
            Text(employee.name)
                .font(.largeTitle)
            Spacer()
        }.padding()
        
    }
}

struct EmployeeCell_Previews : PreviewProvider {
    static var previews: some View {
        EmployeeCell(employee: Employee(id: "1", name: "Hadir", about: "She/Her", email: "hadir@123.com")).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 30))
    }
}


