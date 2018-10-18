import Foundation
import CoreFoundation
import KeychainAccess

let kUUIDDeviceKey = "kUUIDDeviceKey"

public func UUID()->String{
    let kc = Keychain()
    if let v = kc[kUUIDDeviceKey] {
        return v
    }
    else{
        let uuid = privateUUID()
        kc[kUUIDDeviceKey] = uuid
        return uuid
    }    
}

fileprivate func privateUUID()->String{
    return (CFUUIDCreateString(nil, CFUUIDCreate(nil)) as String).replacingOccurrences(of: "-", with: "").lowercased()
}
