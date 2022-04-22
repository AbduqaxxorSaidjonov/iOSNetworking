

import SwiftUI
import Alamofire

struct MainScreen: View {
    
    @ObservedObject var employeeViewModel = viewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                List(self.employeeViewModel.employees, id: \.id){employee in
                    VStack(alignment: .leading,spacing: 30){
                        HStack(){
                        Text(employee.employee_name!.uppercased())
                            .fontWeight(.bold)
                        Spacer()
                        Text("\(employee.employee_age!) y.o")
                    }
                        Text("Salary: ")
                       + Text("\(employee.employee_salary!)")
                            .fontWeight(.bold)
                    }
                }
                if self.employeeViewModel.isLoading{
                ProgressView()
                }
            }
                .navigationBarTitle("Employees")
                .navigationBarItems(trailing: NavigationLink(destination: DetailScreen()){
                    Text("Details")
                })
        }
        .onAppear{
            self.employeeViewModel.apiEmployeeList()
        }
        
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
