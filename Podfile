
target 'GDFileManagerExample' do
  platform :ios, '9.0'
  pod 'AFNetworking', '~> 1.3'
  pod 'UIAlertView-Blocks'
  pod 'AFKissXMLRequestOperation'
  pod 'ISO8601DateFormatter'
  pod 'QuickDialog'
  pod 'AFOAuth2Client', :podspec => 'Vendor/AFOAuth2Client.podspec'
  pod 'SSKeychain', '~> 1'
end

post_install do |installer_representation|
  installer_representation.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = 'NO'
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '10.0'
    end    
  end
end
