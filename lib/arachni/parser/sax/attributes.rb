=begin
    Copyright 2010-2016 Tasos Laskos <tasos.laskos@arachni-scanner.com>

    This file is part of the Arachni Framework project and is subject to
    redistribution and commercial restrictions. Please see the Arachni Framework
    web site for more information on licensing and terms of use.
=end

module Arachni
class Parser
module SAX
class Element
class Attributes < Hash

    def []( name )
        super name
    end

    def []=( name, value )
        super name, value
    end

end
end
end
end
end
