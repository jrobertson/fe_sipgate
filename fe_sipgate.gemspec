Gem::Specification.new do |s|
  s.name = 'fe_sipgate'
  s.version = '0.2.0'
  s.summary = 'Uses Ferrum to login to Sipgate with your credentials to ' + 
      'query the account balance.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/fe_sipgate.rb']
  s.add_runtime_dependency('ferrumwizard', '~> 0.1', '>=0.1.0')  
  s.signing_key = '../privatekeys/fe_sipgate.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/fe_sipgate'
end
