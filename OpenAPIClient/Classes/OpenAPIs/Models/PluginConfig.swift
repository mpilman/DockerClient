//
// PluginConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The config of a plugin. */
public struct PluginConfig: Codable, JSONEncodable, Hashable {

    /** Docker Version used to create the plugin */
    public var dockerVersion: String?
    public var description: String
    public var documentation: String
    public var interface: PluginConfigInterface
    public var entrypoint: [String]
    public var workDir: String
    public var user: PluginConfigUser?
    public var network: PluginConfigNetwork
    public var linux: PluginConfigLinux
    public var propagatedMount: String
    public var ipcHost: Bool
    public var pidHost: Bool
    public var mounts: [PluginMount]
    public var env: [PluginEnv]
    public var args: PluginConfigArgs
    public var rootfs: PluginConfigRootfs?

    public init(dockerVersion: String? = nil, description: String, documentation: String, interface: PluginConfigInterface, entrypoint: [String], workDir: String, user: PluginConfigUser? = nil, network: PluginConfigNetwork, linux: PluginConfigLinux, propagatedMount: String, ipcHost: Bool, pidHost: Bool, mounts: [PluginMount], env: [PluginEnv], args: PluginConfigArgs, rootfs: PluginConfigRootfs? = nil) {
        self.dockerVersion = dockerVersion
        self.description = description
        self.documentation = documentation
        self.interface = interface
        self.entrypoint = entrypoint
        self.workDir = workDir
        self.user = user
        self.network = network
        self.linux = linux
        self.propagatedMount = propagatedMount
        self.ipcHost = ipcHost
        self.pidHost = pidHost
        self.mounts = mounts
        self.env = env
        self.args = args
        self.rootfs = rootfs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dockerVersion = "DockerVersion"
        case description = "Description"
        case documentation = "Documentation"
        case interface = "Interface"
        case entrypoint = "Entrypoint"
        case workDir = "WorkDir"
        case user = "User"
        case network = "Network"
        case linux = "Linux"
        case propagatedMount = "PropagatedMount"
        case ipcHost = "IpcHost"
        case pidHost = "PidHost"
        case mounts = "Mounts"
        case env = "Env"
        case args = "Args"
        case rootfs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dockerVersion, forKey: .dockerVersion)
        try container.encode(description, forKey: .description)
        try container.encode(documentation, forKey: .documentation)
        try container.encode(interface, forKey: .interface)
        try container.encode(entrypoint, forKey: .entrypoint)
        try container.encode(workDir, forKey: .workDir)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encode(network, forKey: .network)
        try container.encode(linux, forKey: .linux)
        try container.encode(propagatedMount, forKey: .propagatedMount)
        try container.encode(ipcHost, forKey: .ipcHost)
        try container.encode(pidHost, forKey: .pidHost)
        try container.encode(mounts, forKey: .mounts)
        try container.encode(env, forKey: .env)
        try container.encode(args, forKey: .args)
        try container.encodeIfPresent(rootfs, forKey: .rootfs)
    }
}

