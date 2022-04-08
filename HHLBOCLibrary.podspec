

Pod::Spec.new do |s|

  #pod的名称
  s.name         = "HHLBOCLibrary"
  #pod的版本
  s.version      = "0.0.6"
  #pod简介(最多140字符) 实践01
  s.summary      = "HHLBOCLibrary."
  #pod详细描述
  s.description  = <<-DESC

                    this is HHLBOCLibrary develop by HanHan

                   DESC
  #项目主页地址
  s.homepage     = "https://github.com/LeAustinHan/HHLBOCLibrary"

  #spec.screenshots = [ 'http://dl.dropbox.com/u/378729/MBProgressHUD/1.png', 'http://dl.dropbox.com/u/378729/MBProgressHUD/2.png' ]
  #
  #spec.documentation_url = 'http://www.example.com/docs.html'
  #许可证
  s.license      = { :type => "MIT", :file => "LICENSE" }
  #作者
  s.author             = { "HanHan" => "314456527@qq.com" }
  # Or just: s.author    = "HanHan"
  # s.authors            = { "HanHan" => "314456527@qq.com" }
  #社交网址 微薄或者博客
  # s.social_media_url   = "314456527@qq.com"

  #库支持的最低系统版本
  s.platform     = :ios, "9.0"

  #需要系统版本支持平台的最小部署目标。与平台属性不同的是，部署目标属性允许指定多个平台支持该pod，为每个平台指定不同的部署目标。
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  #库索引地址
  s.source       = { :git => "https://github.com/LeAustinHan/HHLBOCLibrary.git", :tag => s.version.to_s }

  #需要包含的源文件
  s.source_files  = ["HHLBOCLibrary/*.{h,m}","HHLBOCLibrary/**/*.{h,m}"]
  #需要移除的文件
  # s.exclude_files = "Classes/Exclude"
  #公开的头文件。如果没有指定公共头文件，那么source文件中的所有头文件都被认为是公开的。
  #s.public_header_files = "HHLBOCLibrary/HHLBOCLibrary/HXHBaseHeader.h"
  #私有头文件
  #s.private_header_files = 'Headers/Private/*.h'

  #资源文件
    #s.resource = "XESTeacher.xcassets"

#s.resources = ["HHLBOCLibrary/Resources/*.plist","CloudLearning_MyInfo/Resources/*.xcassets"]

  # s.resources = "HHLBOCLibrary/Resources/*.plist"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  #需要系统framwork3
  # s.ios.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  #需要的系统libraries
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  #是否支持Arc
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  #依赖库 可以写多个 依赖关系可以指定版本需求
  # s.dependency "BLNetworking"
  # s.dependency "BLAPIManagers"
  # s.dependency "BLMediator"
  #s.dependency 'HHCocoaTestFrameWork', '1.0.3'

  #s.dependency "HHPlayerSDK"
  
  # 验证私有库依赖问题
  # pod lib lint --sources='ttps://github.com/LeAustinHan/HHLBOCLibrary.git,https://github.com/CocoaPods/Specs' --allow-warnings

end
