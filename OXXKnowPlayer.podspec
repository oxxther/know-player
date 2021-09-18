Pod::Spec.new do |s|
    s.name                      = 'OXXKnowPlayer'
    s.version                   = '0.0.1'
    s.authors                   = { "oxxther" => "508131409@qq.com" }
    s.homepage                  = 'https://github.com/oxxther/know-player'
    s.summary                    = '研究AVFoundation'
    s.source                    = { :git => "https://github.com/oxxther/know-player.git", :tag => "#{s.version}" }
    s.license                   = { :type => "MIT", :file => "LICENSE" }
    s.platform                  = :ios, '9.0'
    s.source_files              = 'OXXKnowPlayer/*'
    s.swift_version             = '5.0'
    s.dependency                "SnapKit"
end
