module Admin
  class ImagesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Image.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Image.find_by!(slug: param)
    # end
    def get_image
      @image = Image.find(params[:id])
      send_data(@image.data, :disposition => "inline", :type => "image/jpeg")
    end
    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
