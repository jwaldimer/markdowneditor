class DocumentsController < ApplicationController
	before_action :set_document, :only => [:show, :update, :destroy]

  def index
  	@documents = Document.all
  end

  def show
  end

  def new
  	
  end

  def create
  	
  end

  def update
  	
  end

  def destroy
  	
  end


  private

  	def set_document
  		@document = Document.find(params[:id])
  	end
end
