
import Foundation

struct Employee: Decodable {
    var status: String?
    var data: [Data]
}

struct Data: Decodable{
    var id: Int?
    var employee_name: String?
    var employee_salary: Int?
    var employee_age: Int?
    var profile_image: String?
    
    
}

