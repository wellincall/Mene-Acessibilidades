class CategoriasController < ApplicationController
  def index
    @categorias = Categoria.all
  end

  def show
    @categoria = Categoria.find(params[:id])
  end

  def new
    @categoria = Categoria.new
    3.times{@categoria.caracteristicas.build}
  end

  def create
    @categoria = Categoria.new(params[:categoria])
    @categoria.save!
    redirect_to categorias_path
  end

  def edit
    @categoria = Categoria.find(params[:id])
  end

  def update
    @categoria = Categoria.find(params[:id])
    @categoria.update_attributes!(params[:categoria])
    redirect_to categorias_path
  end

  def delete
    @categoria = Categoria.find(params[:id])
    @categoria.destroy
  end

  def criar_caracteristica
  end

  def remover_caracteristica
  end
end

