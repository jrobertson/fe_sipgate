#!/usr/bin/env ruby

# file: fe_sipgate.rb

require 'ferrumwizard'


class FeSipgateErr < Exception
end

class FeSipgate

  def initialize(debug: false, headless: true, cookies: nil)

    @fw = FerrumWizard.new('https://login.sipgate.com/', headless: headless,
                           cookies: cookies, debug: debug)
    @fw.scan_page if cookies

  end

  def login(usernamex=nil, passwordx=nil, username: usernamex, password: passwordx)
    @fw.login(username, password)
  end

  def save_cookies(file)
    @fw.save_cookies file
  end

  def balance()

   raise FeSipgateErr, 'not logged in?' unless @fw.browser.title == 'sipgate | App'

    r = @fw.links.keys.find {|x| x =~ /Balance:/}
    balance = r[/(?<=Balance: ).*/]

  end

  def quit()
    @fw.quit
  end

end
