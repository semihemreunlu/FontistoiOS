#
# Be sure to run `pod lib lint FontistoiOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'FontistoiOS'
s.version          = '0.1.0'
s.summary          = 'Fontisto icon font library for iOS Framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
Fontisto gives you scalable vector icons that can instantly be customized: size, color, drop shadow and anything that can be done with the power of Font.

- Fontisto is completely free for commercial use. Check out the license.
- Fontisto icons are vectors, which mean they’re gorgeous on high-resolution displays.
- Fontisto loves screen readers and helps make your icons accessible on the mobile.
- Scalable vector graphics means every icon looks good at any size

Usage

label.font = UIFont().Fontisto(size: 48)
label.text = ":fontName:".fontistoIcon

DESC

s.homepage         = 'https://github.com/semihemreunlu/FontistoiOS'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'semihemreunlu' => 'semihemreunlu@gmail.com' }
s.source           = { :git => 'https://github.com/semihemreunlu/FontistoiOS.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/semihemreunlu'

s.ios.deployment_target = '8.0'

s.source_files = 'FontistoiOS/Classes/**/*'
s.resource_bundle = { 'FontistoiOS' => ['FontistoiOS/Fonts/fontisto.ttf'] }

#.resource_bundles = {
#   'FontistoiOS' => ['FontistoiOS/Assets/*.ttf']
#}

# s.public_header_files = 'Pod/Classes/**/*.h'
s.frameworks = 'UIKit'
# s.dependency 'AFNetworking', '~> 2.3'

end
