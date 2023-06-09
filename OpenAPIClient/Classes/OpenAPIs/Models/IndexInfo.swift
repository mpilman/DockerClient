//
// IndexInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** IndexInfo contains information about a registry. */
public struct IndexInfo: Codable, JSONEncodable, Hashable {

    /** Name of the registry, such as \"docker.io\".  */
    public var name: String?
    /** List of mirrors, expressed as URIs.  */
    public var mirrors: [String]?
    /** Indicates if the registry is part of the list of insecure registries.  If `false`, the registry is insecure. Insecure registries accept un-encrypted (HTTP) and/or untrusted (HTTPS with certificates from unknown CAs) communication.  > **Warning**: Insecure registries can be useful when running a local > registry. However, because its use creates security vulnerabilities > it should ONLY be enabled for testing purposes. For increased > security, users should add their CA to their system's list of > trusted CAs instead of enabling this option.  */
    public var secure: Bool?
    /** Indicates whether this is an official registry (i.e., Docker Hub / docker.io)  */
    public var official: Bool?

    public init(name: String? = nil, mirrors: [String]? = nil, secure: Bool? = nil, official: Bool? = nil) {
        self.name = name
        self.mirrors = mirrors
        self.secure = secure
        self.official = official
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case mirrors = "Mirrors"
        case secure = "Secure"
        case official = "Official"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(mirrors, forKey: .mirrors)
        try container.encodeIfPresent(secure, forKey: .secure)
        try container.encodeIfPresent(official, forKey: .official)
    }
}

