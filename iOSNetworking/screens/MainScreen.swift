

import SwiftUI
import Alamofire

struct MainScreen: View {
    
    func apiEmployeeList(){
        AFHttp.get(url: AFHttp.API_EMPLOYEE_LIST, params: AFHttp.paramsEmpt(), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeSingle(id: Int){
        AFHttp.get(url: AFHttp.API_EMPLOYEE_SINGLE + String(id), params: AFHttp.paramsEmpt(), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeCreate(employee: Employee){
        AFHttp.post(url: AFHttp.API_EMPLOYEE_CREATE, params: AFHttp.paramsEmployeeCreate(employee: employee), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeUpdate(employee: Employee){
        AFHttp.put(url: AFHttp.API_EMPLOYEE_UPDATE + String(employee.id!), params: AFHttp.paramsEmployeeUpdate(employee: employee), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiEmployeeDelete(employee: Employee){
        AFHttp.del(url: AFHttp.API_EMPLOYEE_DELETE + String(employee.id!), params: AFHttp.paramsEmpt(), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    var body: some View {
        NavigationView{
            Text("Networking")
                .navigationBarTitle("Posts")
        }
        .onAppear{
           apiEmployeeList()
            //apiEmployeeSingle(id: 1)
            let employee = Employee(id: 1, employee_name: "Tiger", profile_image: "", employee_salary: 320800, employee_age: 61)
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
