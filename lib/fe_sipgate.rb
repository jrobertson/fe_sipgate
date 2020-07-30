#!/usr/bin/env ruby

# file: fe_sipgate.rb

require 'ferrumwizard'


class FeSipgate

  def initialize(debug: false)
    @fw = FerrumWizard.new('https://login.sipgate.com/', debug: debug)
  end

  def login(username: nil, password: nil)
    @fw.login(username, password)    
  end
  
  def balance()
    @fw.account.balance
  end

  def quit()
    @fw.quit
  end
end
