//
// ClusterVolumeSpecAccessModeSecretsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** One cluster volume secret entry. Defines a key-value pair that is passed to the plugin.  */
public struct ClusterVolumeSpecAccessModeSecretsInner: Codable, JSONEncodable, Hashable {

    /** Key is the name of the key of the key-value pair passed to the plugin.  */
    public var key: String?
    /** Secret is the swarm Secret object from which to read data. This can be a Secret name or ID. The Secret data is retrieved by swarm and used as the value of the key-value pair passed to the plugin.  */
    public var secret: String?

    public init(key: String? = nil, secret: String? = nil) {
        self.key = key
        self.secret = secret
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key = "Key"
        case secret = "Secret"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(secret, forKey: .secret)
    }
}

