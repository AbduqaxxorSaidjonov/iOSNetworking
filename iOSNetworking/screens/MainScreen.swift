

import SwiftUI
import Alamofire

struct MainScreen: View {
    
    @ObservedObject var employeeViewModel = viewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
               
            }
                .navigationBarTitle("Posts")
        }
        .onAppear{
            self.employeeViewModel.apiEmployeeList()
            //apiEmployeeSingle(id: 1)
//            let employee = Employee(id: 1, employee_name: "Tiger", profile_image: "", employee_salary: 320800, employee_age: 61)
            //apiEmployeeCreate(employee: employee)
           // apiEmployeeUpdate(employee: employee)
            //apiEmployeeCreate(employee: employee)
        }
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
