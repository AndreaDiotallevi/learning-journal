# app.tenminuteswalk(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
# app.tenminuteswalk(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
# app.tenminuteswalk(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
# app.tenminuteswalk(['w', 's']) # => false

require "app"

describe App do

  describe "#tenminuteswalk" do
    let(:app) { App.new }

    it "should return 'false' when given an empty array" do
      expect(app.tenminuteswalk([])).to eq false
    end

    it "should return true for ['n','n','n','n','n','s','s','s','s','s']" do
      expect(app.tenminuteswalk(['n','n','n','n','n','s','s','s','s','s'])).to eq true
    end

    it "should return false for ['n','n','n','n','n','s','s','s','s','n']" do
      expect(app.tenminuteswalk(['n','n','n','n','n','s','s','s','s','n'])).to eq false
    end

    it "should return false for ['w','w','w','w','w','e','e','e','e','w']"
    expect(app.tenminuteswalk())
    end

  end

end