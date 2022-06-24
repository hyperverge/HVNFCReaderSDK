Pod::Spec.new do |s|
    s.name         = 'HVNFCReaderSDK'
    s.version      = '0.0.1'
    s.summary      = "HyperVerge's iOS Framework for scanning NFC enabled smart chip IDs"
    s.description  = <<-DESC
                    HVNFCReader SDK is used to scan and get the data from smart ID cards using NFC technology.
                    DESC
                    
    s.homepage     = 'https://github.com/hyperverge/HVNFCReaderSDK'
    s.author       = 'HyperVerge'
    s.license      = {
                        :type => 'Custom',
                        :file => 'LICENSE'
                     }
    s.platform     = :ios
    s.swift_version = '5.4'
    s.ios.deployment_target  = '9.0'
    
    s.source       = {
                        :git => "https://github.com/hyperverge/HVNFCReaderSDK.git",
                        :tag => "#{s.version}"
                     }
    s.vendored_frameworks = 'HVNFCReaderSDK.xcframework'
    s.ios.resource = 'HVNFCResources.bundle'
    s.static_framework = true
    s.dependency "OpenSSL-Universal", "~> 1.1.180"'
    s.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }

    s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
