class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

def create
  @list = List.new(list_params)
  respond_to do |format|
    if @list.save
      format.html { redirect_to @list, notice: 'La liste a été créée avec succès.' }
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end
end

private

def list_params
  params.require(:list).permit(:name)
end
end
