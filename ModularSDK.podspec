Pod::Spec.new do |s|
  s.name             = 'ModularSDK'
  s.version          = '1.0.8'
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
  # AJUSTADO PARA SUA ESTRUTURA
  s.source_files = 'Sources/**/*.{swift}'
end
