class FuncionariosController < ApplicationController 
  
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy] 
 

 
  def index 
        @funcionarios = Funcionario.search(params[:search], params[:page]) 
  end 
 
  def show 
  end 
 
  def new 
        @funcionario = Funcionario.new 
  end 
 
  def edit 
  end 
 
  def create 
       @funcionario = Funcionario.new(funcionario_params) 
       render action: :new unless @funcionario.save 
  end 
 
  def update 
        render action: :edit unless @funcionario.update_attributes(funcionario_params) 
  end 
 
  def destroy 
       @funcionario.destroy 
  end 
 
  private 
  # Use callbacks to share common setup or constraints between actions. 
  def set_funcionario 
       @funcionario = Funcionario.find(params[:id]) 
  end 
 
  # Never trust parameters from the scary internet, only allow the white list through. 
  def funcionario_params         
    params.require(:funcionario).permit(:nombres, :apellidos, :tipodoc_id, :identificacion, :genero, :telefono, :mail, :cargo, :centro_id, :codigo, :eps, :afp, :arl, :lugar_de_expedicion, :lugar_de_nacimiento, :fecha_de_nacimiento, :edad, :area, :fecha_de_ingreso, :antiguedad, :funciones_principales) 
  end 

 
end 





















