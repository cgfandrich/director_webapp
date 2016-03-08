class AdminController < ApplicationController
  
  before_filter :admin_required
  
  def index
    logger.info "AdminController, index"
    @admins = Admin.all
  end

  def create
    logger.info "AdminController, create"
  end

  def show
    logger.info "AdminController, show"
  end
end
