require 'net/http'
require 'json'
require 'faker'

# Fetch data from the API
url = URI.parse('https://dog.ceo/api/breeds/list')
response = Net::HTTP.get(url)
breeds_data = JSON.parse(response)

# Extract the breed names from the API response
breed_names = breeds_data['message']

# Create breed records in the database
breed_names.each do |breed_name|
  gender = Faker::Creature::Dog.gender
  size = Faker::Creature::Dog.size
  breed = Breed.create(name: breed_name, gender: gender, size: size)
end


existing_breeds = Breed.all

# Create two images for each existing breed
existing_breeds.each do |breed|
  # Fetch images for the current breed
  breed_url = URI.parse("https://dog.ceo/api/breed/#{breed.name}/images")
  breed_response = Net::HTTP.get(breed_url)
  images_data = JSON.parse(breed_response)

  # Extract the first two image URLs from the API response
  image_urls = images_data['message'].first(2)

  # Create image records associated with the current breed
  image_urls.each do |url|
    breed.images.create(url: url)
  end
end

# Create 20 fake owners
50.times do
  address =Faker::Address.full_address
  name =Faker::Name.name
  owner = Owner.create(name: name, address: address)
  2.times do
  breed = existing_breeds.sample
  owner.breeds << breed unless owner.breeds.include?(breed)
  end
end


