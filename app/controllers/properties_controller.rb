class PropertiesController < ApplicationController

	def new
		@property = Property.new
	end

	def create
		@property = Property.new
		@property.promoter = current_user.promoter

		if @property.save
	      flash[:notice] = 'Ha sido creada la propiedad con exito. La administración revisara su solicitud, y pronto le dará una respuesta, este atento!'
	      redirect_to property_path(@property)
	    else
	      flash[:alert] = 'Algo fallo, la propiedad no ha sido creado con éxito'
	      render :new
	    end
	end


end
