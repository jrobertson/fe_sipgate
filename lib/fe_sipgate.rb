#!/usr/bin/env ruby

# file: fe_sipgate.rb

require 'ferrum'


class FeSipgate

  def initialize()

    @browser = Ferrum::Browser.new headless: true

  end

  def login(username: nil, password: nil)

    @browser.goto('https://login.sipgate.com/')
    @browser.network.wait_for_idle
    sleep 2 

    a = @browser.xpath('//input')
    a[0].focus.type(username)
    a[1].focus.type(password, :Enter)
    sleep 1 
    @browser.network.wait_for_idle
    sleep 2 

  end

  def balance()

    links = @browser.xpath('//a')
    links[6].click # Account & Invoices
    sleep 2 
    @browser.at_css('.balance').text

  end

  def quit()
    @browser.quit
  end

end
