Pod::Spec.new do |s|
  s.name             = 'LRTorchUtil'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LRTorchUtil.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/huawt/LRTorchUtil'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huawt' => 'ghost263sky@163.com' }
  s.source           = { :git => 'https://github.com/huawt/LRTorchUtil.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'LRTorchUtil/Classes/**/*'
  s.frameworks = 'Foundation'
end
