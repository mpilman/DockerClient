//
// Limit.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An object describing a limit on resources which can be requested by a task.  */
public struct Limit: Codable, JSONEncodable, Hashable {

    public var nanoCPUs: Int64?
    public var memoryBytes: Int64?
    /** Limits the maximum number of PIDs in the container. Set `0` for unlimited.  */
    public var pids: Int64? = 0

    public init(nanoCPUs: Int64? = nil, memoryBytes: Int64? = nil, pids: Int64? = 0) {
        self.nanoCPUs = nanoCPUs
        self.memoryBytes = memoryBytes
        self.pids = pids
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nanoCPUs = "NanoCPUs"
        case memoryBytes = "MemoryBytes"
        case pids = "Pids"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nanoCPUs, forKey: .nanoCPUs)
        try container.encodeIfPresent(memoryBytes, forKey: .memoryBytes)
        try container.encodeIfPresent(pids, forKey: .pids)
    }
}
