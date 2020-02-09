#
# Be sure to run `pod lib lint Lupi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Lupi'
  s.version          = '0.1.0'
  s.summary          = 'A one-line configuration video background view for iOS project'
  s.description      = 'Add video background to your view with just one-line of code'
  s.homepage         = 'https://github.com/weitieda/Lupi'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'weitieda' => 'hi@tiedawei.com' }
  s.source           = { :git => 'https://github.com/weitieda/Lupi.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'Lupi/Classes/**/*.swift'
  s.frameworks = 'UIKit', 'AVFoundation'
end
