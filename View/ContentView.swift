//
//  ContentView.swift
//  EmployeesList
//
//  Created by Hadir on 02/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = EmployeeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.employees){ item in
                NavigationLink(destination: EmployeeDetails(employee: item)) {
                    EmployeeCell(employee: item)
                }
            }
            .navigationTitle("Employees")
        }
    }
}


#Preview {
    ContentView()
}


