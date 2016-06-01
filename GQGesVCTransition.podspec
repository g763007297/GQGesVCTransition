Pod::Spec.new do |s|

  s.name         = "GQGesVCTransition"
s.version = "0.0.3"
  s.summary      = "一句话添加滑动手势返回，完美与ScrollView兼容，可自定义滑动返回范围。"

  s.homepage     = "https://github.com/g763007297/GQGesVCTransition"
  # s.screenshots  = "https://github.com/g763007297/GQGesVCTransition/blob/master/Screenshot/demo.gif"

  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "developer_高" => "763007297@qq.com" }

  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/g763007297/GQGesVCTransition.git", :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files  = "GQGesVCTransition/*.{h,m}"

  #s.public_header_files = "GQGesVCTransition/*.h"

end
