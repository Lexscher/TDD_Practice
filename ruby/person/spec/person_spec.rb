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

    describe "#initials" do
          it "contatenates first initial, middle initial, and last initial with periods and spaces" do
        ace = Person.new(first_name:  "Ace", middle_name: "D", last_name: "Portogas")

        expect(ace.initials).to eq("A. D. P.")
      end 

      it "does not add an extra space or period if middle name is missing" do
        jack = Person.new(first_name:  "Jack", last_name: "Napier")
  
        expect(jack.initials).to eq("J. N.")
      end
    end

end