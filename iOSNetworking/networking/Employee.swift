
import Foundation

struct Employee: Decodable {
    var id: Int?
    var employee_name: String?
    var employee_salary: Int?
    var employee_age: Int?
    var profile_image: String?
    
    init() {
        
    }
    
    init(employee_name: String,profile_image: String){
        self.id = 1
        self.employee_name = employee_name
        self.profile_image = profile_image
        self.employee_salary = 1
        self.employee_age = 1
    }
    
    init(id: Int,employee_name: String,profile_image: String,employee_salary: Int,employee_age: Int){
        self.id = id
        self.employee_name = employee_name
        self.profile_image = profile_image
        self.employee_salary = employee_salary
        self.employee_age = employee_age
    }
}

