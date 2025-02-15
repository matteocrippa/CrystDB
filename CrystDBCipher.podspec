
Pod::Spec.new do |s|
  s.name             = 'CrystDBCipher'
  s.version          = '0.1.12'
  s.summary          = 'CrystDBCipher is a thread-safe Object Relational Mapping database that stores object based on SQLite Chiper.'
  s.description      = <<-DESC
  CrystDB has these features:
    * It can automatically transform the property type of an object to storage sqlite type  for each object 
   to get better performance.
    * Uses the class to sort object and is not affected by modifying the class structure.
    * Supports filtering by conditions.
                       DESC
  s.homepage         = 'https://github.com/matteocrippa/CrystDB.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matteo Crippa' => '' }
  s.source           = { :git => 'https://github.com/matteocrippa/CrystDB.git', :tag => s.version.to_s }
  s.requires_arc = true 
  s.ios.deployment_target = '12.0'

  s.source_files = 'CrystDB/*.{h,m}'
  s.public_header_files = 'CrystDB/*.{h}'

  s.dependency 'SQLCipher' 

    s.xcconfig = {
      'OTHER_SWIFT_FLAGS' => '$(inherited) -D SQLITE_HAS_CODEC -D GRDBCIPHER -D SQLITE_ENABLE_FTS5',
      'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DGRDBCIPHER -DSQLITE_ENABLE_FTS5',
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SQLITE_HAS_CODEC=1 GRDBCIPHER=1 SQLITE_ENABLE_FTS5=1'
    }

  s.frameworks = 'UIKit', 'CoreFoundation', 'Security'

end
