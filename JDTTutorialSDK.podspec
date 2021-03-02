Pod::Spec.new do |s|
          #1.
          s.name              = "JDTTutorialSDK"
          #2.
          s.version           = "0.0.1"
          #3.  
          s.summary           = "Sort description of 'JDTTutorialSDK' framework"
          #4.
          s.homepage          = "https://cocoapods.org"
          #5.
          s.license           = "MIT"
          #6.
          s.author            = "JustinTsouDeveloper"
          #7.
          s.platform          = :ios, "11.0"
          #8.
          s.source            = { :git => "https://github.com/JustinTsouDeveloper/JDTTutorialSDK.git", :tag => s.version.to_s }
          #9.
          #s.source_files     = "JTDCategoryView", "JTDCategoryView/**/*.{h,m,swift,xib}"
          #10.
          s.swift_version     = '4.2'
          #11.
          #s.resources          = "JTDCategoryView/JTDCategoryView.bundle"
          #12.
          #s.resource_bundles = {'JTDCategoryViewBundle' => ['JTDCategoryView/Assets/*.xcassets']} 
          # *.png
          # *.xcassets

          #s.resources = "JDTTutorialSDK/Resources/*.*"

          s.vendored_frameworks    = 'JDTTutorialSDK.framework'

          s.pod_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64'}
          s.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64'}
    end