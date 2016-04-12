//
//  PapersFlowLayout.swift
//  Papers
//
//  Created by David Rothschild on 4/11/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class PapersFlowLayout: UICollectionViewFlowLayout {
    var appearingIndexPath: NSIndexPath?
    
    // override the method that provides the layout
    override func
        initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath:
        NSIndexPath) -> UICollectionViewLayoutAttributes? {
        
        // return a set of layout attributes
        let attributes = super.initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath)
        
        // 1  manipulate the layout attributes if the index path matches the index path of the item being inserted
        if let indexPath = appearingIndexPath {
            // 2
            if let attributes = attributes {
                // 3
                if indexPath == itemIndexPath {
                    // 4
                    attributes.alpha = 1.0
                    attributes.center = CGPoint(x:
                        CGRectGetWidth(collectionView!.frame) - 23.5, y: -24.5)
                    attributes.transform = CGAffineTransformMakeScale(0.15,
                                                                      0.15)
                    // 5
                    attributes.zIndex = 99
                }
            }
        }
        return attributes
        
    }
}
