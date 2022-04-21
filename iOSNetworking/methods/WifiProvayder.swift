
struct wifiConnecting: Decodable{
    var time: String?
    var upTime: Int?
    var vcc: Int?
    var power: String?
    var wifi: [Details]?
    
    init(time: String?,upTime: Int?,vcc: Int?,power: String?,wifi: [Details]?){
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
