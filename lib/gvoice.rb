$:.unshift File.dirname(__FILE__) 

require 'rubygems'
require 'mechanize'

module Gvoice
  extend self
  
  def call
    
  end
  
  private
  def login
    @agent = WWW::Mechanize.new
    
    yml = YAML.load(File.read(File.join('~', '.gvoice')))
    email, password = yml[:email], yml[:password]
    home_page = @agent.get('http://google.com/voice')
    home_page.forms.first.Email, home_page.forms.first.Passwd = email, password
    home_page.forms.first.submit
  end
end