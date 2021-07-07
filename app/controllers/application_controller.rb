class ApplicationController < ActionController::API
    include Response
    include ExceptionHandler

    before_action :authenticate!

    attr_reader :current_user

    def authenticate!
        @current_user = AuthorizeApiRequest.new(request.headers).perform!
    end
end
