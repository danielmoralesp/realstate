class PropertiesController < ApplicationController
	before_action :authenticate_user!, except: [ :index, :show ]
	before_action :is_promoter?, except: [ :index, :show ]

	def new
		@property = Property.new
	end

	def create
		@property = Property.new(property_params)
		@property.promoter = current_user.promoter

		if @property.save
	      flash[:notice] = 'Ha sido creada la propiedad con exito. La administración revisara su solicitud, y pronto le dará una respuesta, este atento!'
	      redirect_to property_path(@property)
	    else
	      flash[:alert] = 'Algo fallo, la propiedad no ha sido creado con éxito'
	      render :new
	    end
	end

	def show
		@property = Property.find(params[:id])
	end

	def edit
	    @property = Property.find(params[:id])
	end

	def update
	    @property = Property.find(params[:id])

	    if @property.update(property_params)
	      flash[:notice] = 'La propiedad ha sido actualizada con éxito'
	      redirect_to property_path(@property)
	    else
	      flash[:alert] = 'Algo fallo, la propiedad no ha sido actualizada con éxito'
	      render :edit
	    end
	end

	private
		def property_params
	      params.require(:property).permit(:promoter_id, :city_id, :feature_id, :rent_sale, :title, :price, :bedrooms, :bathrooms, :area, :location, :address )
	    end

	    def is_promoter?
	      unless current_user.promoter?
	       flash[:alert] = 'No tienes permisos para acceder a esta ruta, debes estar registrado como promotor'
	       redirect_to new_promoter_path
	      end
	    end


end
