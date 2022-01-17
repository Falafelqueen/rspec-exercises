
class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    if @middle_name == nil
      "#{@first_name} #{@last_name}"
    else
     "#{@first_name} #{@middle_name} #{@last_name}"
    end
  end

end

RSpec.describe Person do
  describe "full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
        person = Person.new(
          first_name: "Adam",
          middle_name: "Nothing",
          last_name: "Person")

        expect(person.full_name).to eq("Adam Nothing Person")
    end
    it "does not add extra spaces if middle name is missing" do
         person = Person.new(
          first_name: "Adam",
          last_name: "Person")

        expect(person.full_name).to eq("Adam Person")
    end
  end
end
