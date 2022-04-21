
import Foundation
import Alamofire

private let IS_TESTER = true
private let DEP_SER = "http://dummy.restapiexample.com/"
private let DEV_SER = "http://dummy.restapiexample.com/"

let headers: HTTPHeaders = [
    "Accept" : "application/json",
]
class AFHttp{
    // AFHttp requests
    class func get(url: String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url),method: .get, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    class func post(url: String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url),method: .post, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    class func put(url: String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url),method: .put, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    class func del(url: String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url),method: .delete, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    //AFHttp methods
    class func server(url: String) -> URL{
        if(IS_TESTER){
            return URL(string: DEV_SER + url)!
        }
        
        return URL(string: DEP_SER + url)!
    }
    
    //AFHttp Apis
    
    static let API_EMPLOYEE_LIST = "api/v1/employees"
    static let API_EMPLOYEE_SINGLE = "api/v1/employee/" // id = 1
    static let API_EMPLOYEE_CREATE = "api/v1/create"
    static let API_EMPLOYEE_UPDATE = "api/v1/update/"  // id = 21
    static let API_EMPLOYEE_DELETE = "api/v1/delete/"  // id = 2
    
    //AFHttp Params
    
    class func paramsEmpt() -> Parameters{
        let parameters: Parameters = [:]
        return parameters
    }
    
    class func paramsEmployeeCreate(employee: employeeDetails) -> Parameters{
        let parameters : Parameters = [
            "employee_name": employee.employee_name!,
            "employee_salary": employee.employee_salary!,
            "employee_age" : employee.employee_age!,
        ]
        
        return parameters
    }
    
    class func paramsEmployeeUpdate(employee: employeeDetails) -> Parameters{
        let parameters : Parameters = [
            "id": employee.id!,
            "employee_name": employee.employee_name!,
            "profile_image": employee.profile_image!,
            "employee_salary": employee.employee_salary!,
            "employee_age": employee.employee_age!,
        ]
        
        return parameters
    }
}
