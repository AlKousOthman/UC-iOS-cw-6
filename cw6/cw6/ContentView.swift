//
//  ContentView.swift
//  cw6
//
//  Created by Othman Alkous on 19/09/2022.
//

import SwiftUI

struct StudentsDetails: Identifiable{
    let id = UUID()
    var fullName: String
    var Year: Int
    var Age: Int
}

struct ContentView: View {
    
    
    @State var students = [
        StudentsDetails(fullName: "Khaled", Year: 2020, Age: 20),
        StudentsDetails(fullName: "Mohammed", Year: 2021, Age: 21),
        StudentsDetails(fullName: "Othman", Year: 2022, Age: 22)
        ]
    var body: some View {
        ZStack {
        
            Color.gray.opacity(0.4).ignoresSafeArea()
            
        VStack {
            Image("id")
                Text("سجل الطلبة")
                .font(.largeTitle)
                
           Spacer()
            
            Divider()
            ScrollView{
                VStack{
            ForEach(students){ student in
                Text(student.fullName)
                Text(String(student.Age))
                Text(String(student.Year))
                Divider()
            }
                }
            }
            .frame(width: 360, height: 200)
            Spacer()
            HStack{
                
                    
                Text("عدد الطلبة \(students.count)")
                Image(systemName: "info")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .background(Color.cyan)
                    .cornerRadius(100)
            }
            .padding()
        }
            
        }
}
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
