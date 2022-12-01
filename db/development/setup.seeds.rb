# frozen_string_literal: true

p "Seeding: #{__FILE__}"

# Generate questions

10.times do
  question = FactoryBot.create(:question)
  3.times  do
    FactoryBot.create(:answer, question: question)
  end
end

# Generate Asessments

3.times do
  FactoryBot.create(:assessment)
end
