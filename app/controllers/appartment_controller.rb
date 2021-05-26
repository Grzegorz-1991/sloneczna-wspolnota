class AppartmentController < ApplicationController

    def index
        @appartment = Appartment.all
    end
end