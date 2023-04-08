//
// Reachability.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Reachability represents the reachability of a node. */
public enum Reachability: String, Codable, CaseIterable {
    case unknown = "unknown"
    case unreachable = "unreachable"
    case reachable = "reachable"
}