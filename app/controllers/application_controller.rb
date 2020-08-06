class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SessionSource
    include CurrentUserConcern
    include SetPageDefaults

    before_action :set_copyright

    def set_copyright
        @copyright = MfernandesViewTool::Renderer.copyright "Marcos Fernandes", "All rights reserved"
    end
end

module MfernandesViewTool
    class Renderer
        def self.copyright name, msg
            "&copy; #{Time.now.year} | #{name} #{msg}".html_safe
        end
    end
end