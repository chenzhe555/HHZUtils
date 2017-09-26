#
#  Be sure to run `pod spec lint HHZUtils.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "HHZUtils"
  s.version      = "0.0.3.5"
  s.summary      = "工具类"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "陈哲是个好孩子-工具类"

  s.homepage     = "https://github.com/chenzhe555/HHZUtils"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "chenzhe555" => "376811578@qq.com" }
  # Or just: s.author    = "chenzhe555"
  # s.authors            = { "chenzhe555" => "376811578@qq.com" }
  # s.social_media_url   = "http://twitter.com/chenzhe555"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/chenzhe555/HHZUtils.git", :tag => "#{s.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  s.subspec 'HHZUtils' do |one|
      one.subspec 'http' do |three|
        three.source_files = 'HHZUtils/classes/http/*.{h,m}'
      end

      one.subspec 'file' do |three|
        three.source_files = 'HHZUtils/classes/file/*.{h,m}'
      end

      one.subspec 'json' do |three|
        three.source_files = 'HHZUtils/classes/json/*.{h,m}'
      end

      one.subspec 'kit' do |three|
        three.source_files = 'HHZUtils/classes/kit/*.{h,m}'
      end

      one.subspec 'device' do |three|
        three.source_files = 'HHZUtils/classes/device/*.{h,m}'
      end

      one.subspec 'encryption' do |three|
        three.subspec 'GTMBase64' do |four|
          four.source_files = 'HHZUtils/classes/encryption/GTMBase64/*.{h,m}'
        end
        three.source_files = 'HHZUtils/classes/encryption/*.{h,m}'
      end

      one.subspec 'plist' do |three|
        three.source_files = 'HHZUtils/classes/plist/*.{h,m}'
      end

      one.subspec 'date' do |three|
        three.source_files = 'HHZUtils/classes/date/*.{h,m}'
      end

      one.subspec 'calculate' do |three|
        three.source_files = 'HHZUtils/classes/calculate/*.{h,m}'
      end

      one.subspec 'archive' do |three|
        three.source_files = 'HHZUtils/classes/archive/*.{h,m}'
      end

      one.subspec 'application' do |three|
        three.source_files = 'HHZUtils/classes/application/*.{h,m}'
      end

      one.subspec 'cookie' do |three|
        three.source_files = 'HHZUtils/classes/cookie/*.{h,m}'
      end

      one.subspec 'numerical' do |three|
        three.source_files = 'HHZUtils/classes/numerical/*.{h,m}'
      end

      one.subspec 'system' do |three|
        three.source_files = 'HHZUtils/classes/system/*.{h,m}'
      end

      one.subspec 'exception' do |three|
        three.source_files = 'HHZUtils/classes/exception/*.{h,m}'
      end

      one.subspec 'sectionIndex' do |three|
        three.source_files = 'HHZUtils/classes/sectionIndex/*.{h,m}'
      end
end


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  s.frameworks = "UIKit", "Foundation"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
