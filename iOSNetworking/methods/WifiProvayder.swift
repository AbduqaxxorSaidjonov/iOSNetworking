import Foundation

struct wifiConnecting: Decodable{
    var time: Date?
    var upTime: Int?
    var vcc: Double?
    var power: String?
    var wifi: [Details]?
    
    init(time: Date?,upTime: Int?,vcc: Double?,power: String?,wifi: [Details]?){
        self.time = time
        self.upTime = upTime
        self.vcc = vcc
        self.power = power
        self.wifi = wifi
    }
}

struct Details: Decodable{
    var  ap: Int?
    var ssid: String?
    var rssi: Int?
    var apMAC: String?
}
