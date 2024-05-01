Pod::Spec.new do |s|
	s.name = "ATInternet-Apple-SDK-AppExtension"
	s.version = '2.23.10-bbc'
	s.summary = "AT Internet mobile analytics solution for Apple devices"
	s.homepage = "https://github.com/bbc/atinternet-apple-sdk"
	s.documentation_url	= 'https://developers.atinternet-solutions.com/apple-en/getting-started-apple-en/operating-principle-apple-en/'
	s.license = "MIT"
	s.author = "AT Internet"
	s.requires_arc = true
	s.source = { :git => "https://github.com/bbc/atinternet-apple-sdk.git", :tag => s.version}
	s.module_name = 'TrackerAppExtension'
	s.swift_version = '5.0'
	s.ios.deployment_target	= '13.0'
	s.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '-DAT_EXTENSION' }
	s.source_files = "ATInternetTracker/Sources/*.{h,m,swift}"
	s.exclude_files = ["ATInternetTracker/Sources/BackgroundTask.swift","ATInternetTracker/Sources/Debugger.swift","ATInternetTracker/Sources/TrackerTests-Bridging-Header.h"]
	s.platform = :ios, "13.0"
	s.resource_bundles = {"ATInternet-Apple-SDK-AppExtension" => ["ATInternetTracker/Sources/DefaultConfiguration*", "ATInternetTracker/Sources/TrackerBundle.bundle", "ATInternetTracker/Sources/PrivacyInfo.xcprivacy"]}
end
