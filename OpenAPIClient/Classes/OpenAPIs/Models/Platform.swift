//
// Platform.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Platform represents the platform (Arch/OS).  */
public struct Platform: Codable, JSONEncodable, Hashable {

    /** Architecture represents the hardware architecture (for example, `x86_64`).  */
    public var architecture: String?
    /** OS represents the Operating System (for example, `linux` or `windows`).  */
    public var OS: String?

    public init(architecture: String? = nil, OS: String? = nil) {
        self.architecture = architecture
        self.OS = OS
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case architecture = "Architecture"
        case OS
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(architecture, forKey: .architecture)
        try container.encodeIfPresent(OS, forKey: .OS)
    }
}

