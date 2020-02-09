//
//  LupiError.swift
//  Lupi
//
//  Created by Tieda Wei on 2020-02-09.
//

import Foundation

public enum LupiError: LocalizedError {
    case videoNotFound(name: String, type: String)

    public var errorDescription: String? {
        switch self {
        case .videoNotFound(let name, let type):
            return "Could not find \(name).\(type)."
        }
    }
}
