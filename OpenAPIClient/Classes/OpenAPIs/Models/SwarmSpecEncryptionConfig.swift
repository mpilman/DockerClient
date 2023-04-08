//
// SwarmSpecEncryptionConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Parameters related to encryption-at-rest. */
public struct SwarmSpecEncryptionConfig: Codable, JSONEncodable, Hashable {

    /** If set, generate a key and use it to lock data stored on the managers.  */
    public var autoLockManagers: Bool?

    public init(autoLockManagers: Bool? = nil) {
        self.autoLockManagers = autoLockManagers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case autoLockManagers = "AutoLockManagers"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(autoLockManagers, forKey: .autoLockManagers)
    }
}

