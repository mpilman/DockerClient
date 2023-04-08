//
// ServiceSpecModeReplicatedJob.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The mode used for services with a finite number of tasks that run to a completed state.  */
public struct ServiceSpecModeReplicatedJob: Codable, JSONEncodable, Hashable {

    /** The maximum number of replicas to run simultaneously.  */
    public var maxConcurrent: Int64? = 1
    /** The total number of replicas desired to reach the Completed state. If unset, will default to the value of `MaxConcurrent`  */
    public var totalCompletions: Int64?

    public init(maxConcurrent: Int64? = 1, totalCompletions: Int64? = nil) {
        self.maxConcurrent = maxConcurrent
        self.totalCompletions = totalCompletions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxConcurrent = "MaxConcurrent"
        case totalCompletions = "TotalCompletions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maxConcurrent, forKey: .maxConcurrent)
        try container.encodeIfPresent(totalCompletions, forKey: .totalCompletions)
    }
}
