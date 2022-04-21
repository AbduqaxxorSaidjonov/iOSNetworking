
import Foundation


struct order: Decodable{
    var orders: [ordersDetails]?
}

struct ordersDetails: Decodable{
    var orderno: Int?
    var date: String?
    var trackingno: String?
    var custid: Int?
    var customer: [customerDetails]?
}

struct customerDetails: Decodable{
    var custid: Int?
    var fname: String?
    var lname: String?
    var address: String?
    var city: String?
    var state: String?
    var zip: String?
}
