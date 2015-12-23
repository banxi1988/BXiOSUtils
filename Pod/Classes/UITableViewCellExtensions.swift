//
//  UITableViewCellExtensions.swift
//  Pods
//
//  Created by Haizhen Lee on 15/12/18.
//
//

import UIKit

public extension UITableViewCell{
  public func bx_removeSeperatorInset(){
    separatorInset = UIEdgeInsetsZero
    if #available(iOS 8.0, *) {
      preservesSuperviewLayoutMargins = false
      layoutMargins = UIEdgeInsetsZero
    }
  }
  
  public func bx_removeSeparator(){
      separatorInset = UIEdgeInsets(top: 0, left: 3600, bottom: 0, right: 0)
  }
}
