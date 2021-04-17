//
//  TutorialView.swift
//  JDTTutorialSDK
//
//  Created by JustinTsou on 2021/2/26.
//

import UIKit

public class TutorialView: UIView {
    
    var imageView: UIImageView!
    var imageView1: UIImageView!
    var stringLable: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public convenience init(text:String, frame:CGRect) {
        self.init(frame: frame)
        self.setupTutorialView(frame:frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTutorialView(frame:CGRect) {
        
//        let url = Bundle.main.url(forResource: "JDTTutorialSDK", withExtension: "framework") ?? URL(fileURLWithPath: "")
//
//        let bundlePath = Bundle.main.path(forResource: "JDTTutorialSDK", ofType: "framework") ?? ""
//        let bundle = Bundle(path: bundlePath)
        
//        let path = Bundle(for: type(of: self)).path(forResource: "JDTTutorialSDK", ofType: "framework")!
//        let resource_bundle = Bundle(path: path)
//
//        let nib = UINib(nibName: "TutorialView", bundle: resource_bundle)
//
//        contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView
//        contentView.frame = bounds
//
//        addSubview(contentView)
        
        
        let stackView = UIStackView.init(frame:frame)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        imageView = UIImageView()
        imageView1 = UIImageView()
        stringLable = UILabel()
        stringLable.text = "Test SDK"
        
        //************************************************//
        
//        let path = Bundle.main.path(forResource: "JDTTutorialSDKPods/Frameworks/JDTTutorialSDK.framework/JDTBundle", ofType: "bundle")
//        let bundle = Bundle(path: path ?? "")
//        let image = UIImage(named: "icon_player", in: bundle, compatibleWith: nil)
//
//        print("path 1:\(String(describing: path))")
//        print("bundle 1:\(String(describing: bundle))")
//        print("image 1:\(image ?? UIImage())")
        
        //************************************************//
        
//        let path1 = Bundle.main.path(forResource: "Pods/JDTTutorialSDKPods/Frameworks/JDTTutorialSDK.framework/JDTBundle", ofType: "bundle")
//        let bundle1 = Bundle(path: path ?? "")
//        let image2 = UIImage(named: "icon_player", in: bundle, compatibleWith: nil)
//        print("Pods path :\(String(describing: path1))")
//        print("Pods bundle :\(String(describing: bundle1))")
//        print("Pods image:\(image2 ?? UIImage())")
        
        //************************************************//
        
        print("Test >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
        
//        let podbundle = Bundle(for: type(of: self))
//        let bundleURL = podbundle.url(forResource: "JDTBundle", withExtension: "bundle") ?? URL(fileURLWithPath: "")
//        let bundle = Bundle(url: bundleURL)
//        let image = UIImage(named: "icon_player", in: bundle, compatibleWith: nil)
//
//        print("podbundle:\(podbundle)")
//        print("bundleURL:\(bundleURL)")
//        print("bundle:\(String(describing: bundle))")
//        print("image \n:\(String(describing: image))")
        
        //************************************************//
        
        let path1 = Bundle.main.path(forResource: "JDTTutorialSDKPods", ofType: "bundle")
        let pathAppend1 = path1?.appending("/JDTBundle.bundle")
        let bundle1 = Bundle(path: pathAppend1 ?? "")
        let image1 = UIImage(named: "icon_player", in: bundle1, compatibleWith: nil)

        print("path 1:\(String(describing: path1))")
        print("pathAppend 1:\(String(describing: pathAppend1))")
        print("bundle 1:\(String(describing: bundle1))")
        print("image 1 \n:\(image1 ?? UIImage())")
        
        
        //************************************************//
        
        let path2 = Bundle.main.resourcePath! + "/JDTTutorialSDKPods.bundle/JDTBundle.bundle"
        let bundle2 = Bundle(path:path2)
        let image2 = UIImage(named: "icon_player", in: bundle1, compatibleWith: nil)

        print("path 2:\(String(describing: path2))")
        print("bundle 2:\(String(describing: bundle2))")
        print("image 2 \n:\(image2 ?? UIImage())")
        
        
        imageView.image = image2
        
        
//        print("Image :\(self.bundleImageNamed("icon_player") ?? UIImage())")
        
//        imageView.image = self.bundleImageNamed("icon_player")
        
        let path_nice = Bundle(for: type(of: self)).resourcePath! + "/JDTBundle.bundle"
        let bundle_nice = Bundle(path: path_nice)
        let image_nice = UIImage(named: "icon_player", in: bundle_nice, compatibleWith: nil)
        
        print("path_nice :\(String(describing: path_nice))")
        print("bundle_nice \n:\(String(describing: bundle_nice))")
        print("image_nice \n:\(image_nice ?? UIImage())")
        
        imageView1.image = image_nice
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(stringLable)
        stackView.addArrangedSubview(imageView1)
        
        self.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    
    func bundleImageNamed(_ filename: String) -> UIImage? {
        
        let path = "\(Bundle.main.resourcePath ?? "JDTBundle.bundle")"
        let bundle = Bundle(path: path)
        
        print("path:\(String(describing: path))")
        print("bundle:\(String(describing: bundle))")
        
        return UIImage(named: filename, in: bundle, compatibleWith: nil)
        
    }
}
