require 'bundler/setup'
require 'sinatra'

get %r"/(ja|en|fr|de)" do |lang|
  hello   = {
    ja: "こんにちは",
    en: "Hello",
    fr: "Bonjour",
    de: "Hallo"
  }
  @hello  = hello[lang.to_sym]
  headers "Content-Language" => lang
  erb :index
end

get "/" do
  @hello = "(´･ω･`)"
  erb :index
end
