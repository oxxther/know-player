
Pod::Spec.new do |spec|
  spec.name                 = "OXXKnowPlayer"
  spec.version              = "0.0.1"
  spec.summary              = "AVFoundation Learn"
  spec.homepage             = "https://github.com/oxxther/know-player"
  spec.license              = "MIT"
  spec.author               = { "oxxther" => "508131409@qq.com" }
  spec.platform             = :ios, "9.0"
  spec.source               = { :git => "https://github.com/oxxther/know-player.git", :tag => "#{spec.version}" }
  spec.source_files         = "OXXKnowPlayer/*.swift"
  spec.swift_versions       = "5.0"
end
