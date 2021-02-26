//
//  TutorialView.swift
//  JDTTutorialSDK
//
//  Created by JustinTsou on 2021/2/26.
//

import UIKit

public class TutorialView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textStringLable: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public convenience init(text:String, frame:CGRect) {
        self.init(frame: frame)
        self.setupTutorialView()
        self.textStringLable.text = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTutorialView() {
        
//        let url = Bundle.main.url(forResource: "JDTTutorialSDK", withExtension: "framework") ?? URL(fileURLWithPath: "")
//
//        let bundlePath = Bundle.main.path(forResource: "JDTTutorialSDK", ofType: "framework") ?? ""
//        let bundle = Bundle(path: bundlePath)
        
        let path = Bundle(for: type(of: self)).path(forResource: "JDTTutorialSDK", ofType: "framework")!
        let resource_bundle = Bundle(path: path)
        
        let nib = UINib(nibName: "TutorialView", bundle: resource_bundle)
        
        contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        contentView.frame = bounds
        
        addSubview(contentView)
    }
}
