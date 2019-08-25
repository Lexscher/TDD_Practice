require "rspec/autorun"
require_relative "../lib/person.rb"

describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      bart = Person.new(first_name:  "Bartholomew", middle_name: "JoJo", last_name: "Simpson")
      
      expect(bart.full_name).to eq("Bartholomew JoJo Simpson")
    end

    it "does not add extra spaces if middle name is missing" do
      james = Person.new(first_name:  "james", last_name: "bond")

      expect(james.full_name).to eq("james bond")
    end
  end
  
    describe "#full_name_with_middle_initial" do
      it "contatenates first name, middle initial(with period), and last name with spaces" do
        bart = Person.new(first_name:  "Bartholomew", middle_name: "JoJo", last_name: "Simpson")

        expect(bart.full_name_with_middle_initial).to eq("Bartholomew J. Simpson")
      end 

      it "does not add an extra space or period if middle name is missing" do
        james = Person.new(first_name:  "james", last_name: "bond")
  
        expect(james.full_name_with_middle_initial).to eq("james bond")
      end
    end

    # describe "#initials" do

    # end

end