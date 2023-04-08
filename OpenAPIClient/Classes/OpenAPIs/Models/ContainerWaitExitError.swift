//
// ContainerWaitExitError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** container waiting error, if any */
public struct ContainerWaitExitError: Codable, JSONEncodable, Hashable {

    /** Details of an error */
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message = "Message"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(message, forKey: .message)
    }
}
