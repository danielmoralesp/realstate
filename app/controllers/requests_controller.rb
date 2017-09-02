class RequestsController < ApplicationController

	before_action :authenticate_user!

	def new
		@request = Request.new
	end

	def create
		@request = Request.new(request_params)
		@request.user = current_user

		@property = Property.find(params[:property_id])
		@request.property = @property
		@request.promoter = @property.promoter

		if @request.save
	      flash[:notice] = 'Ha sido creado el request con exito. La administración revisara su solicitud, y pronto le dará una respuesta, este atento!'
	      redirect_to request_path(@request)
	    else
	      flash[:alert] = 'Algo fallo, el request no ha sido creado con éxito'
	      render :new
	    end
	end

	private
		def request_params
	      params.require(:request).permit(:user_id, :promoter_id, :property_id, :message )
	    end

end
