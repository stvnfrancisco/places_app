require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe("#description") do
    it("lets you describe a place") do
      test_place = Place.new("warm")
      expect(test_place.description()).to(eq("warm"))
    end
  end
end

describe(".all") do
  it("is empty at first") do
    expect(Place.all()).to(eq([]))
  end
end

describe("#save") do
  it("adds a place to the list of saves places") do
    test_place = Place.new("London")
    test_place.save()
    expect(Place.all()).to(eq([test_place]))
  end
end

describe(".clear") do
  it("clears all saved places") do
    Place.new("London").save()
    Place.clear()
    expect(Place.all()).to(eq([]))
  end
end
