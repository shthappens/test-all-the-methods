require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# YOUR TEST CODE HERE

RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

RSpec.describe "average" do
  it "returns 78 with grades of 80 and 76" do
    grade_list = [80, 76]
    expect(average(grade_list)).to eq(78)
  end

  it "returns 86 with grades of 84, 86, and 88" do
    expect(average([84, 86, 88])).to eq(86)
  end
end

RSpec.describe "rankings" do
  it "returns an ordered list of students" do
    students = ["Sam", "Gabrielle"]
    expect(rankings(students)).to eq("1. Sam\n2. Gabrielle\n")
  end
end

RSpec.describe "greet" do
  it "returns greetings in each language" do
    name = "Seth"
    language = "spanish"
    expect(greet(name, language)).to eq("Hola Seth!")
  end

  it "returns greetings in each language" do
    expect(greet("Seth", "italian")).to eq("Ciao Seth!")
  end

  it "returns greetings in each language" do
    expect(greet("Seth", "french")).to eq("Bonjour Seth!")
  end

  it "returns greetings in each language" do
    expect(greet("Seth", "english")).to eq("Hi Seth!")
  end
end

RSpec.describe "create_puzzle" do
  it "returns guesses in the puzzle" do
    word = "cat"
    guesses = ["b", "d", "t"]
    expect(create_puzzle(word, guesses)).to eq("_ _ t")
  end
end

RSpec.describe "divisible_by_three" do
  it "returns true/false if a number is divisble by three" do
    number = 9
    expect(divisible_by_three(number)).to eq(true)
  end

  it "returns true/false if a number is divisble by three" do
    number = 5
    expect(divisible_by_three(number)).to eq(false)
  end
end

RSpec.describe "perfect_square?" do
  it "returns ArgumentError if the number is less than 1" do
    expect{ perfect_square?(0) }.to raise_error(ArgumentError)
  end

  it "returns ArgumentError if the number is less than 1" do
    expect(perfect_square?(2)).to eq(false)
  end

  it "returns ArgumentError if the number is less than 1" do
    expect(perfect_square?(36)).to eq(true)
  end
end
