Pod::Spec.new do |s|

    s.name          = 'GZHKit'
    s.version       = '0.0.1'
    s.summary       = '个人开发iOS所用的工具包'
    s.description   = <<-DESC
                        个人开发iOS所用的工具包
                      DESC
    s.homepage      = 'https://github.com/guzhenhuaGitHub/GZHKit'
    s.license       = 'MIT'
    s.author        = { 'guzhenhuaGitHub' => '514668826@qq.com' }
    s.platform      = :ios ,'7.0'
    s.source        = { :git => 'https://github.com/guzhenhuaGitHub/GZHKit.git', :tag => s.version }
    s.source_files  = 'GZHKit/*.{h,m}'
#s.exclude_files = 'GZHKit/GZHKit.h'
    s.public_header_files = 'GZHKit/*.h'
#s.frameworks    = 'UIKit', 'Foundation'
    s.requires_arc  = true
    s.dependency 'SDWebImage'
    s.dependency 'MBProgressHUD'

end
