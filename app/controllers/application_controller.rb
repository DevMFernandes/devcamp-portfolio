class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SessionSource
end
