Pod::Spec.new do |spec|
  spec.name                  = "GenomePaymentSdk"

  spec.version               = "1.1.1"

  spec.summary               = "Accept online payments using Genome."
  spec.description           = <<-DESC
  The Genome Payment iOS SDK makes it quick and easy to build a payment screen in your iOS app.
              DESC
  spec.homepage              = "https://genome.eu/docs/"
  spec.license               = { :type => 'MIT', :file => 'LICENSE' }
  spec.author                = { "Genome" => "support@genome.eu" }
  spec.source                = { :git => "https://github.com/genome-eu/payment-sdk-ios.git", :tag => "#{spec.version}" }
  spec.frameworks            = 'Foundation', 'WebKit', 'UIKit'
  spec.ios.deployment_target = '13.0'
  spec.swift_version		     = '5.0'
  spec.source_files          = "GenomePaymentSdk/**/*.swift"
  spec.resource_bundle       = { 'Genome' => 'GenomePaymentSdk/**/*.{lproj,json,png,xcassets}' }
  spec.resources             = "GenomePaymentSdk/**/*.xib"

end
