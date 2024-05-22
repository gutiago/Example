// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Macros

public protocol DataMapper {
  func transform() -> Data
}
