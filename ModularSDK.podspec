Pod::Spec.new do |s|
  s.name             = 'ModularSDK'
  s.version          = '1.0.14'
  s.summary          = 'Modular SDK example.'
  s.description      = <<-DESC
                        Um SDK modular simples contendo apenas uma classe ModularSDK.start()
                       DESC
  s.homepage         = 'https://example.com/ModularSDK'
  s.license          = 'MIT'
  s.author           = { 'YourName' => 'you@example.com' }
  s.source           = { :git => 'https://example.com/ModularSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version         = '5.0'

  s.xcconfig = {
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO',
  }
  
  # -----------------------------
  # CORE
  # -----------------------------
  s.subspec 'Core' do |sp|
    sp.source_files = 'Sources/Core/**/*.{swift}'
    sp.module_name  = 'CoreModule'
  end

  # -----------------------------
  # CHAT
  # -----------------------------
  s.subspec 'Chat' do |sp|
    sp.dependency 'ModularSDK/Core'
    sp.source_files = 'Sources/Chat/**/*.{swift}'
    sp.module_name  = 'ChatModule'
  end

  # -----------------------------
  # NETWORK
  # -----------------------------
  s.subspec 'Network' do |sp|
    sp.dependency 'ModularSDK/Core'
    sp.source_files = 'Sources/Network/**/*.{swift}'
    sp.module_name  = 'NetworkModule'
  end
end
