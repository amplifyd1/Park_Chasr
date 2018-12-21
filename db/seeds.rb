# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Stadiums and Users"
User.destroy_all
Park.destroy_all
Visit.destroy_all

puts "Rebuilding new Stadiums"

angels = Park.create!(name: "Angels Stadium", description: "Home of the Los Angeles Angels of Anaheim", address: "2000 E Gene Autry Way, Anaheim, CA 92806, USA", remote_image_url:"http://image.nj.com/home/advance-media/width600/img/nj-lvl_eagles_syndication/photo/2017/12/04/seattle-mariners-v-los-angeles-angels-of-anaheim-264f6763ad9233c8.jpg", latitude: 33.800308, longitude: -117.882732 )
dodgers = Park.create!(name: "Dodgers Stadium", description: "Home of the Los Angeles Dodgers", address: "1000 Vin Scully Ave, Los Angeles, CA 90012, USA", remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ2SNeSs7BWgKWIvq-D12zpBVrfsJVspXKaijyKemk_Jvck7It", latitude: 34.0739, longitude: -118.2400)
astros = Park.create!(name: "Minute Made Park", description: "Home of the Houston Astros", address: "501 Crawford St, Houston, TX 77002, USA", latitude: 29.7573, longitude: -29.7573,remote_image_url:"https://www.google.com/imgres?imgurl=https%3A%2F%2Fs.hdnux.com%2Fphotos%2F27%2F22%2F75%2F6106956%2F3%2F920x920.jpg&imgrefurl=https%3A%2F%2Fwww.chron.com%2Fsports%2Fastros%2Farticle%2FAstros-plans-future-improvements-Minute-Maid-Park-13061261.php&docid=nyzEwW6PHW4pDM&tbnid=fOVFi0dJ7hqRPM%3A&vet=10ahUKEwjx3MyK2a7fAhUFzIMKHc1qC6UQMwhpKAAwAA..i&w=920&h=575&bih=647&biw=1280&q=minute%20maid%20park&ved=0ahUKEwjx3MyK2a7fAhUFzIMKHc1qC6UQMwhpKAAwAA&iact=mrc&uact=8")
padres = Park.create!(name: "Petco Park", description: "Home of the San Deigo Padres", address: "100 Park Blvd, San Diego, CA 92101, USA", latitude: 32.708282, longitude: -117.155739, remote_image_url: "http://images.performgroup.com/di/library/omnisport/80/27/petco-park-062517-usnews-getty-ftr_1tj6z938pzqnh1s5irw35rpsx8.jpg?t=-522564500&w=960&quality=70")
as = Park.create!(name: "Oakland Alameda Coliseum", description: "Home of the Oakland A's....and the Raiders", address: "7000 Coliseum Way, Oakland, CA 94621, USA", latitude: 37.750996996, longitude: -122.200332532, remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaWvyRb-douOObK61Y328sBYCAJUTL0uZzU4tfPINitogMEkA_Eg")
giants = Park.create!(name: "AT&T Park", description: "Home of the San Francisco Giants", address: "24 Willie Mays Plaza, San Francisco, CA 94107, USA", latitude:37.773663572, longitude: -122.386998452, remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM-qIViRVGRHrLFuBqD21X0U3Uhr0VzIC5lnKQ5UNKbkyDhGWfJA")
mariners = Park.create!(name: "Safeco Field", description: "Home of the Seatle Mariners", address: "1250 1st Ave S, Seattle, WA 98134, USA", latitude: 47.5914, longitude: -122.3325, remote_image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.seattletimes.com%2Fwp-content%2Fuploads%2F2018%2F03%2F205761_Mariners_Practice_3_212402-780x520.jpg&imgrefurl=https%3A%2F%2Fwww.seattletimes.com%2Fsports%2Fmariners%2Fanalysis-why-the-mariners-will-end-the-drought-this-season-and-why-they-wont%2F&docid=i-5lvasJn_7bpM&tbnid=glgdaLs6NjQTPM%3A&vet=10ahUKEwj6_4rR167fAhUF74MKHXK6A8YQMwhBKAIwAg..i&w=780&h=520&bih=647&biw=1280&q=mariners%20stadium%20lat%20and%20long&ved=0ahUKEwj6_4rR167fAhUF74MKHXK6A8YQMwhBKAIwAg&iact=mrc&uact=8")
rockies = Park.create!(name: "Coors Field", description: "Home of the Colorado Rockies", address: "2001 Blake St, Denver, CO 80205, USA", latitude: 39.753663652, longitude: -104.989829374, remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcTxcBGfmCm7rX3JZErh_HHUycMDfWiDG88LTQatajTS1GpYK71g")
user1= User.create!(username: "john", email:"john@yahoo.com", password: "password", address: "Los Angeles, CA", latitude: 34, longitude: -118, remote_image_url: "https://res.cloudinary.com/dcectbmzn/image/upload/v1539885292/mru1d5xl6iggrspcxq7a.jpg")
visit = Visit.create!(user: User.first, park: Park.last, date: DateTime.now.to_date)
