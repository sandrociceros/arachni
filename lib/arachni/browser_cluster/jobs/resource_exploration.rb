=begin
    Copyright 2010-2014 Tasos Laskos <tasos.laskos@gmail.com>
    All rights reserved.
=end

module Arachni
class BrowserCluster
module Jobs

# Loads a {#resource} and {Browser#trigger_events explores} its DOM.
#
# @author Tasos "Zapotek" Laskos <tasos.laskos@gmail.com>
class ResourceExploration < Job

    require_relative 'resource_exploration/result'
    require_relative 'resource_exploration/event_trigger'

    # @return [Page, String, HTTP::Response]
    #   Resource to explore, if given a `String` it will be treated it as a URL
    #   and will be loaded.
    attr_accessor :resource

    # Loads a {#resource} and {Browser#trigger_events explores} its DOM.
    def run
        browser.on_new_page { |page| save_result( page: page ) }

        browser.load resource
        browser.trigger_events
    end

end

end
end
end
