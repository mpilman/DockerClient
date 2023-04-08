//
// ContainerWaitResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** OK response to ContainerWait operation */
public struct ContainerWaitResponse: Codable, JSONEncodable, Hashable {

    /** Exit code of the container */
    public var statusCode: Int64
    public var error: ContainerWaitExitError?

    public init(statusCode: Int64, error: ContainerWaitExitError? = nil) {
        self.statusCode = statusCode
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case statusCode = "StatusCode"
        case error = "Error"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(error, forKey: .error)
    }
}
