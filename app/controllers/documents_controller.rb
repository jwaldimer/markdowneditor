class DocumentsController < ApplicationController
	before_action :set_document, :only => [:show, :edit, :update, :destroy]

  def index
  	@documents = Document.all
  	@current_document = @documents.first
  end

  def show
  end

  def new
  	@document = Document.new
  end

  def create
  	@document = Document.new(document_params)
  	if @document.description.nil?
  		@document.description = "#{@document.name} description..."
  	end
  	if @document.save
  		@current_document = @document
  		@documents = Document.all
  		render :show, status: :created
  	else
  		render json: @document.errors, status: :unprocessable_entity 
  	end
  end

  def edit  	
  end

  def update
  	if @document.update(document_params)
  		@documents = Document.all
  		@current_document = @document
  		render :show, status: :ok
  	else
  		render json: @document.errors, status: :unprocessable_entity 
  	end
  end

  def destroy
  	@document.destroy
  	@documents = Document.all
  	@current_document = Document.first
  end


  private

  	def set_document
  		@document = Document.find(params[:id])
  	end

  	def document_params
  		params.require(:document).permit(:name, :description)  		
  	end
end
