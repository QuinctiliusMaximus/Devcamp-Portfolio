class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include DefaultPageContent
  include CurrentUserConcern
  
  before_filter :set_title
  
  def set_title
    @page_title = "Devcamp Portfolio | My Portfolio Website"
  end
  
 # before_action :set_copyright
  
 # def set_copyright
 #  @copyright = KiwicoViewTool::Renderer.copyright 'Quinctilius Maximus', 'All Rights Reserved'
 # end
end
