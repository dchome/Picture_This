require 'faker'

prompts = [
  "rapid",
  "miscreant",
  "dreary",
  "jolly",
  "three",
  "possessive",
  "solid",
  "bustling",
  "dead",
  "nippy",
  "hilarious",
  "breakable",
  "lucky",
  "electric",
  "earthy",
  "elated" ]

def random_prompt(prompts)
  prompts.shuffle
  return prompts.pop
end

# Decks seed

deck1 = Deck.create(name: "Strike A Pose")
deck2 = Deck.create(name: "Celebrity Impressions")
deck3 = Deck.create(name: "Find Something")
deck4 = Deck.create(name: "Out And About")
deck5 = Deck.create(name: "Pets")
deck6 = Deck.create(name: "Act It Out")

selfies_prompts = [
  'Duck Face', # Could be wittier, cooler, etc...
  "Lookin' Fly",
  "New Outfit", # Could be wittier, cooler, etc...
  "Goofy",
  "Food", # Rethink? Should this be here or can it be its own deck? Later...
  "Groupie"
]

celeb_impressions_prompts = [
  "Robert De Niro",
  "Al Pacino",
  "Batman", # More references to pop culture?
  "Zoolander",
  "Sean Connery" # 'Just like your mother, Tribek.'
]

find_something_prompts = [
  "What's That Smell",
  "Next Greatest Trend",
  "Next Best Thing",
  "Inspiration Du Jour"
]

out_and_about_prompts = [
  "Landmark",
  "Scenery",
  "Sunrise/Sunset"
]

pets_prompts = [
  "Cute",
  "Chillin'",
  "Playing with its favourite toy"
]

act_it_out_prompts = [
  "Dab!",
  "Handstand!",
  "Star jump!"
]

selfies_prompts.length.times do
  Prompt.create(body: random_prompt(selfies_prompts), deck_id: 1)
end

selfies_prompts.length.times do
  Prompt.create(body: random_prompt(selfies_prompts), deck_id: 1)
end

selfies_prompts.length.times do
  Prompt.create(body: random_prompt(selfies_prompts), deck_id: 1)
end

selfies_prompts.length.times do
  Prompt.create(body: random_prompt(selfies_prompts), deck_id: 1)
end

selfies_prompts.length.times do
  Prompt.create(body: random_prompt(selfies_prompts), deck_id: 5)
end

act_it_out_prompts.length.times do
  Prompt.create(body: random_prompt(selfies_prompts), deck_id: 6)
end

noah = User.create(first_name: "Noah", last_name: "Schutte", email: "noah@email.com", phone: "6023016624", password: "noah")
theo = User.create(first_name: "Theo", last_name: "Paul", email: "theo@email.com", phone: "9293348660", password: "theo")
dan = User.create(first_name: "Dan", last_name: "Homer", email: "dan@email.com", phone: "3022427822", password: "dan")

# Prompts Seed -- 15 prompts in total
# Deck.all.each do |deck|
#   5.times do
#     Prompt.create(deck_id: deck.id, body: random_prompt(prompts))
#   end
# end
#
#
# [1,2,3,4,5].each do |num|
#   round = Round.create(creator_id: 1 + rand(3), prompt_id: 1 + rand(15), end_time: DateTime.now - 15)
#   round.participants << noah
#   round.participants << theo
#   round.participants << dan
# end
#
# [1,2,3,4,5].each do |num|
#   round = Round.create(creator_id: 1 + rand(3), prompt_id: 1 + rand(15), end_time: DateTime.now + 15)
#   round.participants << noah
#   round.participants << theo
#   round.participants << dan
# end
