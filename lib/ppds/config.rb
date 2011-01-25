require 'gconf2'

module Ppds
  class Config
    @@gconf = GConf::Client.default

    def gconf
      @@gconf
    end

    def initialize(app)
      @root = '/apps/%s' % app
      gconf.add_dir(@root)
    end

    def all
      gconf.all_entries(@root)
    end

    def get(name)
      gconf[key_from_name(name)]
    end

    def set(name, value)
      gconf[key_from_name(name)] = value
    end

    def drop(name)
      gconf.unset(key_from_name(name))
    end

    def save
      gconf.suggest_sync
    end

    def destroy
      for one in all
        gconf.unset(one.key)
      end
      save
    end

    private

    def name_from_key(key)
      key.split('/').last
    end

    def key_from_name(name)
      [ @root, name ].join("/")
    end

  end
end
