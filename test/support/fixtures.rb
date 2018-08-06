require 'yaml'
class Fixtures
  @@records = YAML::load(IO.read(File.dirname(__FILE__) + '/../fixtures/records.yml'))
  def self.record(symbol)
    @@records[symbol]
  end
end