module App
  class << self
    def root
      File.expand_path(File.dirname(__FILE__)).gsub('lib','')
    end

    def config
      config = YAML.load_file(File.join(root,'config','database.yml'))
    end

    def connect
      if ENV['CLEARDB_DATABASE_URL']
        Sequel.connect(ENV['CLEARDB_DATABASE_URL'])
      else
        options = YAML.load_file("#{File.dirname(__FILE__)}/../config/database.yml")
        Sequel.connect('mysql:/', options)
      end
    end
  end
end
