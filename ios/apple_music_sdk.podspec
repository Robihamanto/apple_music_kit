#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint apple_music_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'apple_music_sdk'
  s.version          = '0.0.1'
  s.summary          = 'Plugin that allows you to play any song from Apple Music'
  s.description      = <<-DESC
Plugin that allows you to play any song from Apple Music
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
