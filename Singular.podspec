Pod::Spec.new do |s|
  s.name         = "Singular"
  s.version      = "0.1.0"
  s.summary      = "Singular is a static lib. "

  s.description  = <<-DESC
                  This iOS Static library is used to improve ROI of any business via cocoapods
                   DESC

  s.homepage     = "https://github.com/pawanjat-47billion/Singular/blob/master/README.md"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Animesh Kumar" => "Animesh@singular.net" }

  s.ios.deployment_target = "10.0"

  s.source       = { :git => "https://github.com/pawanjat-47billion/Singular/", :tag => s.version.to_s}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "include/*.h"
  s.public_header_files = "include/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  s.preserve_paths = "libSingular.a"
  s.ios.vendored_library = "libSingular.a"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.libraries = "sqlite3", "Singular"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

   s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

  s.ios.pod_target_xcconfig = {
    	'LIBRARY_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Singular/**',
        'OTHER_LDFLAGS' => '$(inherited) -l"Singular"'
  }

end
