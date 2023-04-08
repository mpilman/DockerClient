//
// SwarmSpecRaft.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Raft configuration. */
public struct SwarmSpecRaft: Codable, JSONEncodable, Hashable {

    /** The number of log entries between snapshots. */
    public var snapshotInterval: Int?
    /** The number of snapshots to keep beyond the current snapshot.  */
    public var keepOldSnapshots: Int?
    /** The number of log entries to keep around to sync up slow followers after a snapshot is created.  */
    public var logEntriesForSlowFollowers: Int?
    /** The number of ticks that a follower will wait for a message from the leader before becoming a candidate and starting an election. `ElectionTick` must be greater than `HeartbeatTick`.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed.  */
    public var electionTick: Int?
    /** The number of ticks between heartbeats. Every HeartbeatTick ticks, the leader will send a heartbeat to the followers.  A tick currently defaults to one second, so these translate directly to seconds currently, but this is NOT guaranteed.  */
    public var heartbeatTick: Int?

    public init(snapshotInterval: Int? = nil, keepOldSnapshots: Int? = nil, logEntriesForSlowFollowers: Int? = nil, electionTick: Int? = nil, heartbeatTick: Int? = nil) {
        self.snapshotInterval = snapshotInterval
        self.keepOldSnapshots = keepOldSnapshots
        self.logEntriesForSlowFollowers = logEntriesForSlowFollowers
        self.electionTick = electionTick
        self.heartbeatTick = heartbeatTick
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case snapshotInterval = "SnapshotInterval"
        case keepOldSnapshots = "KeepOldSnapshots"
        case logEntriesForSlowFollowers = "LogEntriesForSlowFollowers"
        case electionTick = "ElectionTick"
        case heartbeatTick = "HeartbeatTick"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(snapshotInterval, forKey: .snapshotInterval)
        try container.encodeIfPresent(keepOldSnapshots, forKey: .keepOldSnapshots)
        try container.encodeIfPresent(logEntriesForSlowFollowers, forKey: .logEntriesForSlowFollowers)
        try container.encodeIfPresent(electionTick, forKey: .electionTick)
        try container.encodeIfPresent(heartbeatTick, forKey: .heartbeatTick)
    }
}
