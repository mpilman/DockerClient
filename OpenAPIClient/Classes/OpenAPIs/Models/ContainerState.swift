//
// ContainerState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ContainerState stores container&#39;s running state. It&#39;s part of ContainerJSONBase and will be returned by the \&quot;inspect\&quot; command.  */
public struct ContainerState: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case created = "created"
        case running = "running"
        case paused = "paused"
        case restarting = "restarting"
        case removing = "removing"
        case exited = "exited"
        case dead = "dead"
    }
    /** String representation of the container state. Can be one of \"created\", \"running\", \"paused\", \"restarting\", \"removing\", \"exited\", or \"dead\".  */
    public var status: Status?
    /** Whether this container is running.  Note that a running container can be _paused_. The `Running` and `Paused` booleans are not mutually exclusive:  When pausing a container (on Linux), the freezer cgroup is used to suspend all processes in the container. Freezing the process requires the process to be running. As a result, paused containers are both `Running` _and_ `Paused`.  Use the `Status` field instead to determine if a container's state is \"running\".  */
    public var running: Bool?
    /** Whether this container is paused. */
    public var paused: Bool?
    /** Whether this container is restarting. */
    public var restarting: Bool?
    /** Whether this container has been killed because it ran out of memory.  */
    public var oOMKilled: Bool?
    public var dead: Bool?
    /** The process ID of this container */
    public var pid: Int?
    /** The last exit code of this container */
    public var exitCode: Int?
    public var error: String?
    /** The time when this container was last started. */
    public var startedAt: String?
    /** The time when this container last exited. */
    public var finishedAt: String?
    public var health: Health?

    public init(status: Status? = nil, running: Bool? = nil, paused: Bool? = nil, restarting: Bool? = nil, oOMKilled: Bool? = nil, dead: Bool? = nil, pid: Int? = nil, exitCode: Int? = nil, error: String? = nil, startedAt: String? = nil, finishedAt: String? = nil, health: Health? = nil) {
        self.status = status
        self.running = running
        self.paused = paused
        self.restarting = restarting
        self.oOMKilled = oOMKilled
        self.dead = dead
        self.pid = pid
        self.exitCode = exitCode
        self.error = error
        self.startedAt = startedAt
        self.finishedAt = finishedAt
        self.health = health
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status = "Status"
        case running = "Running"
        case paused = "Paused"
        case restarting = "Restarting"
        case oOMKilled = "OOMKilled"
        case dead = "Dead"
        case pid = "Pid"
        case exitCode = "ExitCode"
        case error = "Error"
        case startedAt = "StartedAt"
        case finishedAt = "FinishedAt"
        case health = "Health"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(running, forKey: .running)
        try container.encodeIfPresent(paused, forKey: .paused)
        try container.encodeIfPresent(restarting, forKey: .restarting)
        try container.encodeIfPresent(oOMKilled, forKey: .oOMKilled)
        try container.encodeIfPresent(dead, forKey: .dead)
        try container.encodeIfPresent(pid, forKey: .pid)
        try container.encodeIfPresent(exitCode, forKey: .exitCode)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(startedAt, forKey: .startedAt)
        try container.encodeIfPresent(finishedAt, forKey: .finishedAt)
        try container.encodeIfPresent(health, forKey: .health)
    }
}
