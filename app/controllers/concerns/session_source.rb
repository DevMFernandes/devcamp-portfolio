module SessionSource
    extend ActiveSupport::Concern

    included do
        before_action :source_query
    end

    def source_query
        session[:source] = params[:q] if params[:q]
    end
end