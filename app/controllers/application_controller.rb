class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SessionSource
    include CurrentUserConcern
    include SetPageDefaults
end
