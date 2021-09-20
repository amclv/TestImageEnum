//
//  CustomImages.swift
//  TestImageEnum
//
//  Created by Aaron Cleveland on 9/20/21.
//

import Foundation
import UIKit

// METHOD EXAMPLE: UIImage.customImage(.testImage)
// MARK: - Custom Color -
enum CustomImage: String, CaseIterable {
    case testImage = "test image"
    
}

extension UIImage {
    /// Extends the call of images from XCAssets, if you add a new image to XCAssets add the enum here.
    /// - Parameter image: Select a image that is from available enum.
    /// - Returns: Return's color from XCAssets
    static func customImage(_ image: CustomImage) -> UIImage! {
        return UIImage(named: image.rawValue)
    }
}
