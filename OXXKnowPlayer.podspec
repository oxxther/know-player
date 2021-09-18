
Pod::Spec.new do |s|
  s.name                    = 'OXXKnowPlayer'
  s.version                 = '0.1.0'
  s.summary                 = 'The AVFoundation of OXXKnowPlayer.'
  s.homepage                = 'https://github.com/oxxther/know-player'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'oxxther' => '508131409@qq.com' }
  s.source                  = { :git => 'https://github.com/oxxther/know-player.git', :tag => s.version.to_s }
  s.ios.deployment_target   = '9.0'
  s.source_files            = 'OXXKnowPlayer/Classes/**/*'
  s.swift_versions          = '5.0'
  s.dependency              "SnapKit", "~> 4.2.0"
end
