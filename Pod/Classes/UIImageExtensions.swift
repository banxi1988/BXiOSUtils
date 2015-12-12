//
//  UIImageExtensions.swift
//  Pods
//
//  Created by Haizhen Lee on 15/12/6.
//
//

import UIKit

extension UIImage{
  
  public class func bx_image(hex:Int,alpha:Double=1.0) -> UIImage{
    return bx_image(UIColor(hex: hex, alpha: alpha))
  }
  
  public class func bx_transparentImage(size:CGSize=CGSize(width: 1, height: 1)) -> UIImage{
    let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    let ctx = UIGraphicsGetCurrentContext()
    UIColor.clearColor().setFill()
    CGContextFillRect(ctx, rect)
    let img = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return img
  }
  
  
  public static func bx_circleImage(color:UIColor,radius:CGFloat) -> UIImage{
    let size = CGSize(width: radius * 2, height: radius * 2)
    let cornerRadius = radius
    return bx_roundImage(color, size: size, cornerRadius: cornerRadius)
  }
  
  public static func bx_roundImage(color:UIColor,size:CGSize=CGSize(width: 16, height: 16),cornerRadius:CGFloat = 8) -> UIImage{
    let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
    UIGraphicsBeginImageContextWithOptions(size, false, 0)
    let ctx = UIGraphicsGetCurrentContext()
    UIColor.clearColor().setFill()
    CGContextFillRect(ctx, rect)
    color.setFill()
    let path = UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius)
    path.lineWidth  = 2
    path.fill()
    let img = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return img
  }
  
  public class func bx_image(color:UIColor,width:CGFloat) -> UIImage{
    return bx_image(color, size: CGSize(width: width, height: width))
  }
  
  public class func bx_image(color:UIColor,size:CGSize=CGSize(width: 1, height: 1)) -> UIImage{
    let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
    UIGraphicsBeginImageContextWithOptions(size, true, 0)
    let ctx = UIGraphicsGetCurrentContext()
    color.setFill()
    CGContextFillRect(ctx, rect)
    let img = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return img
  }
  
  @nonobjc
  public static func bx_placeholder(width:CGFloat) -> UIImage{
    return bx_placeholder(CGSize(width: width, height: width))
  }
  
  @nonobjc
  public static func bx_placeholder(size:CGSize) -> UIImage{
    return bx_image(UIColor.whiteColor(), size: size)
  }
  
  
}