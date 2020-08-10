require 'pry'
require 'require_all'

require_all '../models'


shiny_gallery = Gallery.new("Shiny Gallery", "NYC")
high_gallery = Gallery.new("High Gallery", "NYC")
low_gallery = Gallery.new("Low Gallery", "NJ")
rich_gallery = Gallery.new("Rich Gallery", "CA")

laugh_at_me = Painting.new("Laugh at me", 14.00)
monkey_see = Painting.new("Monkey See", 12.00)
by_the_water = Painting.new("By the water", 23.00)
clash_of_war = Painting.new("Clash of war", 13.00)
dog_out = Painting.new("Dog out", 53.00)
cat_out = Painting.new("Cat out", 53.00)
rat_out = Painting.new("Rat out", 54.00)
high_five = Painting.new("High Five", 30.00)

mike = Artist.new("Mike", 3)
susan = Artist.new("Susan", 1)
jeff = Artist.new("Jeff", 4)
nike = Artist.new("Nike", 7)
rin = Artist.new("Rin", 2)

laugh_at_me.artist = rin
monkey_see.artist = rin
by_the_water.artist = mike
clash_of_war.artist = susan
dog_out.artist = nike
cat_out.artist = nike
rat_out.artist = nike
high_five.artist = jeff

laugh_at_me.gallery = shiny_gallery
monkey_see.gallery = high_gallery
by_the_water.gallery = high_five
clash_of_war.gallery = low_gallery
dog_out.gallery = shiny_gallery
cat_out.gallery = rich_gallery
rat_out.gallery = shiny_gallery
high_five.gallery = rich_gallery

Painting.total_price
Painting.all

nike.cities
Artist.total_experience
Artist.most_prolific

susan.creating_painting("New Work", 12.00, low_gallery)

shiny_gallery.paintings
shiny_gallery.artists
shiny_gallery.artists_names
shiny_gallery.most_expensive_painting

binding.pry
0