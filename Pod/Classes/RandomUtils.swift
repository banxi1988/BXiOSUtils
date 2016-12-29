//
//  RandomUtils.swift
//  Pods
//
//  Created by Haizhen Lee on 12/8/16.
//
//

import Foundation
import Darwin

public func choice<T>(_ s:[T]) -> T{
  assert(!s.isEmpty)
  srandom(UInt32(clock()))
  let index = Int(arc4random_uniform(UInt32(s.count)))
  return s[index]
}

extension RandomAccessCollection{
  public func random() -> Iterator.Element?{
    if isEmpty{
      return nil
    }
    srandom(UInt32(clock()))
    let offset = arc4random_uniform(numericCast(count))
    let i = index(startIndex, offsetBy: numericCast(offset))
    return self[i]
  }
}
