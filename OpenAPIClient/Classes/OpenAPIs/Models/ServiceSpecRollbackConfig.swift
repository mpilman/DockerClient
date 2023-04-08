//
// ServiceSpecRollbackConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Specification for the rollback strategy of the service. */
public struct ServiceSpecRollbackConfig: Codable, JSONEncodable, Hashable {

    public enum FailureAction: String, Codable, CaseIterable {
        case _continue = "continue"
        case pause = "pause"
    }
    public enum Order: String, Codable, CaseIterable {
        case stopFirst = "stop-first"
        case startFirst = "start-first"
    }
    /** Maximum number of tasks to be rolled back in one iteration (0 means unlimited parallelism).  */
    public var parallelism: Int64?
    /** Amount of time between rollback iterations, in nanoseconds.  */
    public var delay: Int64?
    /** Action to take if an rolled back task fails to run, or stops running during the rollback.  */
    public var failureAction: FailureAction?
    /** Amount of time to monitor each rolled back task for failures, in nanoseconds.  */
    public var monitor: Int64?
    /** The fraction of tasks that may fail during a rollback before the failure action is invoked, specified as a floating point number between 0 and 1.  */
    public var maxFailureRatio: Double?
    /** The order of operations when rolling back a task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.  */
    public var order: Order?

    public init(parallelism: Int64? = nil, delay: Int64? = nil, failureAction: FailureAction? = nil, monitor: Int64? = nil, maxFailureRatio: Double? = nil, order: Order? = nil) {
        self.parallelism = parallelism
        self.delay = delay
        self.failureAction = failureAction
        self.monitor = monitor
        self.maxFailureRatio = maxFailureRatio
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case parallelism = "Parallelism"
        case delay = "Delay"
        case failureAction = "FailureAction"
        case monitor = "Monitor"
        case maxFailureRatio = "MaxFailureRatio"
        case order = "Order"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(parallelism, forKey: .parallelism)
        try container.encodeIfPresent(delay, forKey: .delay)
        try container.encodeIfPresent(failureAction, forKey: .failureAction)
        try container.encodeIfPresent(monitor, forKey: .monitor)
        try container.encodeIfPresent(maxFailureRatio, forKey: .maxFailureRatio)
        try container.encodeIfPresent(order, forKey: .order)
    }
}
