# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Stadiums"

Park.destroy_all


puts "Rebuilding new Stadiums"

angels = Park.create!(name: "Angels Stadium", description: "Home of the Los Angeles Angels of Anaheim", address: "2000 E Gene Autry Way, Anaheim, CA 92806, USA", remote_image_url:"http://image.nj.com/home/advance-media/width600/img/nj-lvl_eagles_syndication/photo/2017/12/04/seattle-mariners-v-los-angeles-angels-of-anaheim-264f6763ad9233c8.jpg", latitude: 33.800308, longitude: -117.882732 )
dodgers = Park.create!(name: "Dodgers Stadium", description: "Home of the Los Angeles Dodgers", address: "1000 Vin Scully Ave, Los Angeles, CA 90012, USA", remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ2SNeSs7BWgKWIvq-D12zpBVrfsJVspXKaijyKemk_Jvck7It", latitude: 34.0739, longitude: -118.2400)
padres = Park.create!(name: "Petco Park", description: "Home of the San Deigo Padres", address: "100 Park Blvd, San Diego, CA 92101, USA", latitude: 32.708282, longitude: -117.155739, remote_image_url: "http://images.performgroup.com/di/library/omnisport/80/27/petco-park-062517-usnews-getty-ftr_1tj6z938pzqnh1s5irw35rpsx8.jpg?t=-522564500&w=960&quality=70")
as = Park.create!(name: "Oakland Alameda Coliseum", description: "Home of the Oakland A's....and the Raiders", address: "7000 Coliseum Way, Oakland, CA 94621, USA", latitude: 37.7516, longitude:-122.2005 , remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaWvyRb-douOObK61Y328sBYCAJUTL0uZzU4tfPINitogMEkA_Eg")
giants = Park.create!(name: "AT&T Park", description: "Home of the San Francisco Giants", address: "24 Willie Mays Plaza, San Francisco, CA 94107, USA", latitude:37.773663572, longitude: -122.386998452, remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM-qIViRVGRHrLFuBqD21X0U3Uhr0VzIC5lnKQ5UNKbkyDhGWfJA")
rockies = Park.create!(name: "Coors Field", description: "Home of the Colorado Rockies", address: "2001 Blake St, Denver, CO 80205, USA", latitude: 39.753663652, longitude: -104.989829374, remote_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcTxcBGfmCm7rX3JZErh_HHUycMDfWiDG88LTQatajTS1GpYK71g")
