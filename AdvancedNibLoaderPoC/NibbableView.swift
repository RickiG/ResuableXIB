//
//  NibbableView.swift
//  AdvancedNibLoaderPoC
//
//  Created by Ricki Gregersen on 16/06/15.
//  Copyright (c) 2015 youandthegang.com. All rights reserved.
//

import UIKit

extension UINib {
    
    class func instantiateView<T>(fromNib name: String) ->T? {
        
        if let view = UINib(nibName: name, bundle: nil).instantiateWithOwner(nil, options: nil).first as? T {
            return view
        }
        return nil
    }
}

class NibbableView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject? {
        if subviews.count == 0 {
            if let className = _stdlib_getDemangledTypeName(self).componentsSeparatedByString(".").last {
                if let view: NibbableView = UINib.instantiateView(fromNib: className) {
                    
                    view.setTranslatesAutoresizingMaskIntoConstraints(false)
                    let contraints = self.constraints()
                    self.removeConstraints(contraints)
                    view.addConstraints(contraints)
                    
                    return view
                }
            }
        }
        return self
    }
}
