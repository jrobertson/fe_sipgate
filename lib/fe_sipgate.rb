#!/usr/bin/env ruby

# file: fe_sipgate.rb

require 'ferrumwizard'


class FeSipgate

  def initialize(debug: false, headless: true, cookies: nil)

    @fw = FerrumWizard.new('https://login.sipgate.com/', headless: headless,
                           cookies: cookies, debug: debug)
  end

  def login(usernamex=nil, passwordx=nil, username: usernamx, password: passwordx)
    @fw.login(username, password)
  end

  def balance()
    @fw.account.balance
  end

  def quit()
    @fw.quit
  end
end
