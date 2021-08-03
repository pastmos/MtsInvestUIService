#
# Be sure to run `pod lib lint MtsInvestUIService.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MtsInvestUIService'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MtsInvestUIService.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/pastmos/MtsInvestUIService'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pastmos' => 'pastspam@yandex.ru' }
  s.source           = { :git => 'https://github.com/pastmos/MtsInvestUIService.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'MtsInvestUIService/Classes/**/*/*'
  
  # s.resource_bundles = {
  #   'MtsInvestUIService' => ['MtsInvestUIService/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SnapKit'
  s.dependency 'Alamofire'
  s.dependency 'AlamofireImage'
  s.dependency 'MtsInvestGrpcService'
  s.dependency 'SkeletonView'
  
end
