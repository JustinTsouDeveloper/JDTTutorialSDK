//
//  TestLoadNibView.swift
//  JDTTutorialSDK
//
//  Created by Justin Tsou on 2021/4/17.
//

import UIKit

public class TestLoadNibView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public convenience init(text:String, frame:CGRect) {
        self.init(frame: frame)
        self.setupTestLoadNibView(frame:frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        fatalError("init(coder:) has not been implemented")
    }

    private func setupTestLoadNibView(frame:CGRect) {
        
        let path = Bundle.main.resourcePath! + "/JDTTutorialSDKPods.bundle/JDTBundle.bundle"
        let resource_bundle = Bundle(path:path)

        let nib = UINib(nibName: "TestLoadNibView", bundle: resource_bundle)

        contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        contentView.frame = bounds

        addSubview(contentView)
    }
}
