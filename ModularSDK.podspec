Pod::Spec.new do |s|
  s.name             = 'ModularSDK'
  s.version          = '1.0.15'
  s.summary          = 'Modular SDK example.'
  s.description      = <<-DESC
                        Um SDK modular simples contendo apenas uma classe ModularSDK.start()
                       DESC
  s.homepage         = 'https://example.com/ModularSDK'
  s.license          = 'MIT'     # Pode ser simples assim, sem arquivo
  s.author           = { 'YourName' => 'you@example.com' }
  s.source           = { :git => 'https://example.com/ModularSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version         = '5.0'
  s.xcconfig = {
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO',
  }
  
  s.subspec 'Core' do |sp|
    sp.source_files = 'Sources/Core/**/*.{swift,h,m}'
    # sp.pod_target_xcconfig = {
    #   'CODE_SIGNING_ALLOWED' => 'NO',
    #   'CODE_SIGNING_REQUIRED' => 'NO'
    # }
  end

  s.subspec 'Chat' do |sp|
  sp.dependency 'ModularSDK/Core'
  sp.source_files = 'Sources/Chat/**/*.{swift,h,m}'
  # sp.pod_target_xcconfig = {
  #   'INFOPLIST_FILE' => 'SuperSDK_Chat/Info.plist',
  #   'CODE_SIGNING_ALLOWED' => 'NO',
  #   'CODE_SIGNING_REQUIRED' => 'NO'
  # }
  end

  s.subspec 'Network' do |sp|
  sp.dependency 'ModularSDK/Core'
  sp.source_files = 'Sources/Network/**/*.{swift,h,m}'
  # sp.pod_target_xcconfig = {
  #   'INFOPLIST_FILE' => 'SuperSDK_Chat/Info.plist',
  #   'CODE_SIGNING_ALLOWED' => 'NO',
  #   'CODE_SIGNING_REQUIRED' => 'NO'
  # }
  end
end
