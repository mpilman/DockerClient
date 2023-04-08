//
// SystemVersion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Response of Engine API: GET \&quot;/version\&quot;  */
public struct SystemVersion: Codable, JSONEncodable, Hashable {

    public var platform: SystemVersionPlatform?
    /** Information about system components  */
    public var components: [SystemVersionComponentsInner]?
    /** The version of the daemon */
    public var version: String?
    /** The default (and highest) API version that is supported by the daemon  */
    public var apiVersion: String?
    /** The minimum API version that is supported by the daemon  */
    public var minAPIVersion: String?
    /** The Git commit of the source code that was used to build the daemon  */
    public var gitCommit: String?
    /** The version Go used to compile the daemon, and the version of the Go runtime in use.  */
    public var goVersion: String?
    /** The operating system that the daemon is running on (\"linux\" or \"windows\")  */
    public var os: String?
    /** The architecture that the daemon is running on  */
    public var arch: String?
    /** The kernel version (`uname -r`) that the daemon is running on.  This field is omitted when empty.  */
    public var kernelVersion: String?
    /** Indicates if the daemon is started with experimental features enabled.  This field is omitted when empty / false.  */
    public var experimental: Bool?
    /** The date and time that the daemon was compiled.  */
    public var buildTime: String?

    public init(platform: SystemVersionPlatform? = nil, components: [SystemVersionComponentsInner]? = nil, version: String? = nil, apiVersion: String? = nil, minAPIVersion: String? = nil, gitCommit: String? = nil, goVersion: String? = nil, os: String? = nil, arch: String? = nil, kernelVersion: String? = nil, experimental: Bool? = nil, buildTime: String? = nil) {
        self.platform = platform
        self.components = components
        self.version = version
        self.apiVersion = apiVersion
        self.minAPIVersion = minAPIVersion
        self.gitCommit = gitCommit
        self.goVersion = goVersion
        self.os = os
        self.arch = arch
        self.kernelVersion = kernelVersion
        self.experimental = experimental
        self.buildTime = buildTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case platform = "Platform"
        case components = "Components"
        case version = "Version"
        case apiVersion = "ApiVersion"
        case minAPIVersion = "MinAPIVersion"
        case gitCommit = "GitCommit"
        case goVersion = "GoVersion"
        case os = "Os"
        case arch = "Arch"
        case kernelVersion = "KernelVersion"
        case experimental = "Experimental"
        case buildTime = "BuildTime"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(components, forKey: .components)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(apiVersion, forKey: .apiVersion)
        try container.encodeIfPresent(minAPIVersion, forKey: .minAPIVersion)
        try container.encodeIfPresent(gitCommit, forKey: .gitCommit)
        try container.encodeIfPresent(goVersion, forKey: .goVersion)
        try container.encodeIfPresent(os, forKey: .os)
        try container.encodeIfPresent(arch, forKey: .arch)
        try container.encodeIfPresent(kernelVersion, forKey: .kernelVersion)
        try container.encodeIfPresent(experimental, forKey: .experimental)
        try container.encodeIfPresent(buildTime, forKey: .buildTime)
    }
}
