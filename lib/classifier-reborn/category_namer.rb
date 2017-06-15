# Author::    Lucas Carlson  (mailto:lucas@rufy.com)
# Copyright:: Copyright (c) 2005 Lucas Carlson
# License::   LGPL

require 'fast_stemmer'
require 'classifier-reborn/extensions/hasher'

module ClassifierReborn
  module CategoryNamer
    module_function

    def prepare_name(name)
      return name if name.is_a?(Symbol)

      name.encode('UTF-8').to_s.tr('_', ' ').capitalize.intern
    end
  end
end
