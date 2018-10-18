import Foundation
import CoreFoundation
import KeychainAccess

let kUUIDSwiftDeviceKey = "kUUIDSwiftDeviceKey"

public func UUIDSwift()->String{
    let kc = Keychain()
    if let v = kc[kUUIDSwiftDeviceKey] {
        return v
    }
    else{
        let uuid = privateUUID()
        kc[kUUIDSwiftDeviceKey] = uuid
        return uuid
    }    
}

fileprivate func privateUUID()->String{
    return (CFUUIDCreateString(nil, CFUUIDCreate(nil)) as String).replacingOccurrences(of: "-", with: "").lowercased()
}
