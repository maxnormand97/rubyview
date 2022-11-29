p "Seeding: #{__FILE__}"

# Generate questions

# TODO: not hitting development seeds...

10.times do
  question = FactoryBot.create(:question)
  3.times  do
    FactoryBot.create(:answer, question: question)
  end
end
