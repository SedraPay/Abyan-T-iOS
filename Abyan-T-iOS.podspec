
#
# Be sure to run `pod lib lint SedraCheck.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
 s.name             = 'Abyan-T-iOS'
  s.version          = '0.1.10'
s.summary          = 'Find the liveness of your app user and to check if the ID image is similar to the photo of the user, extract info from ID and passport.'

s.homepage         = 'https://github.com/SedraPay/Abyan-T-iOS'

s.license          = { :type => 'MIT', :file => 'LICENSE' }

s.author           = { 'mob@sedrapay.com' => 'mob@sedrapay.com' }
s.source           = { :git => 'https://github.com/SedraPay/Abyan-T-iOS.git', :tag => s.version.to_s }
#s.source_files     = 'Abyan/Classes/**/*.{h,m,swift}'
s.swift_version      = "5.3"
s.ios.deployment_target = '11.0'
s.static_framework = false

# Use the xcframework
  s.vendored_frameworks = "Abyan.xcframework"
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

s.ios.vendored_frameworks = 'Abyan.xcframework'
s.frameworks = 'UIKit', 'AVFoundation', 'Foundation', 'AVKit'
s.dependency 'Alamofire'
s.dependency 'GoogleMLKit/FaceDetection'
s.dependency 'lottie-ios'
end
