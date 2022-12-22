#
# Be sure to run `pod lib lint CocoMediaSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CocoMediaSDK'
  s.version          = '0.1.1'
  s.summary          = 'A library to wrap libcocomediasdk.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Swift wrappers around libcocomediasdk.so,
  this wrapper can be used rapid develop of COCO media applications on iOS platform.
  DESC

  s.homepage         = 'https://github.com/danyliak1/CocoMediaSDK'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
                  	 Copyright 2018
                 	 Permission is granted to...
                	 LICENSE
               	       }
  s.authors          = {  'rohan-elear' => 'rohansahay@elear.solutions',
                          'shrinivas-elear' => 'shrinivasgutte@elear.solutions' }
  s.source           = {  :git => 'https://github.com/danyliak1/CocoMediaSDK.git',
                          :tag => "#{s.version}" }

  s.swift_version = '5'
  s.platform = :ios
  s.ios.deployment_target = '12.1'
  s.preserve_paths = "CocoMediaSDK.xcframework/*"

 s.xcconfig = {
        'FRAMEWORK_SEARCH_PATH[sdk=iphoneos*]' => '$(inherited) "$(PODS_ROOT)/CocoMediaSDK"',
        'OTHERCFLAGS[sdk=iphoneos*]' => '$(inherited) -iframework "$(PODS_ROOT)/CocoMediaSDK"',
        'OTHER_LDFLAGS[sdk=iphoneos*]' => '$(inherited) -framework CocoMediaSDK'
    }
end