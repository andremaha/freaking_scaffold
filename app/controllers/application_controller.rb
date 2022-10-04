class ApplicationController < ActionController::Base
  def privet
    render html: "привет, мир!"
  end
end
