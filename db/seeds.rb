# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
LightNovel.create([
  {
    title: "Overlord",
    author: "Kugane Maruyama",
    description: "A story of a gamer who finds himself trapped in a virtual world.",
    release_date: "2012-07-30",
    genre: "Fantasy",
    rating: 4.8
  },
  {
    title: "The Rising of the Shield Hero",
    author: "Aneko Yusagi",
    description: "A man is summoned to another world to become the Shield Hero.",
    release_date: "2013-08-22",
    genre: "Fantasy",
    rating: 4.5
  },
  {
    title: "Re:Zero - Starting Life in Another World",
    author: "Tappei Nagatsuki",
    description: "A man is transported to another world and discovers he has the ability to return from death.",
    release_date: "2014-01-25",
    genre: "Fantasy",
    rating: 4.7
  },
  {
    title: "That Time I Got Reincarnated as a Slime",
    author: "Fuse",
    description: "A man is reincarnated in another world as a powerful slime.",
    release_date: "2014-05-30",
    genre: "Fantasy",
    rating: 4.6
  },
  {
    title: "No Game No Life",
    author: "Yuu Kamiya",
    description: "Two genius siblings are transported to a world where games determine everything.",
    release_date: "2012-04-25",
    genre: "Fantasy",
    rating: 4.4
  },
  {
    title: "Sword Art Online",
    author: "Reki Kawahara",
    description: "Players of a virtual reality MMORPG are trapped in the game and must fight their way out.",
    release_date: "2009-04-10",
    genre: "Sci-Fi",
    rating: 4.2
  },
  {
    title: "Mushoku Tensei: Jobless Reincarnation",
    author: "Rifujin na Magonote",
    description: "A man is reincarnated in a fantasy world with all his memories intact.",
    release_date: "2014-01-23",
    genre: "Fantasy",
    rating: 4.7
  },
  {
    title: "Arifureta: From Commonplace to World's Strongest",
    author: "Ryo Shirakome",
    description: "A high school student is transported to another world and must survive in a dangerous labyrinth.",
    release_date: "2013-11-25",
    genre: "Fantasy",
    rating: 4.3
  },
  {
    title: "The Irregular at Magic High School",
    author: "Tsutomu Sato",
    description: "In a world where magic is a skill, a brother and sister enroll in a prestigious magic high school.",
    release_date: "2011-07-10",
    genre: "Sci-Fi",
    rating: 4.1
  },
  {
    title: "DanMachi: Is It Wrong to Try to Pick Up Girls in a Dungeon?",
    author: "Fujino Omori",
    description: "A young adventurer seeks fame and fortune in the dungeon city of Orario.",
    release_date: "2013-01-15",
    genre: "Fantasy",
    rating: 4.6
  },
  {
    title: "Konosuba: God's Blessing on This Wonderful World!",
    author: "Natsume Akatsuki",
    description: "A boy is transported to a fantasy world and forms a dysfunctional adventuring party.",
    release_date: "2013-10-01",
    genre: "Fantasy",
    rating: 4.5
  },
  {
    title: "Grimgar: Ashes and Illusions",
    author: "Ao Jyumonji",
    description: "A group of strangers must band together to survive in a fantasy world.",
    release_date: "2013-06-25",
    genre: "Fantasy",
    rating: 4.4
  },
  {
    title: "The Saga of Tanya the Evil",
    author: "Carlo Zen",
    description: "A ruthless salaryman is reincarnated as a young girl in an alternate universe at war.",
    release_date: "2013-10-31",
    genre: "Fantasy",
    rating: 4.6
  },
  {
    title: "Classroom of the Elite",
    author: "Shougo Kinugasa",
    description: "Students at a prestigious school must navigate a highly competitive environment.",
    release_date: "2015-05-25",
    genre: "Sci-Fi",
    rating: 4.2
  },
  {
    title: "The Devil Is a Part-Timer!",
    author: "Satoshi Wagahara",
    description: "A demon king is forced to work at a fast food restaurant after being transported to modern Tokyo.",
    release_date: "2011-02-10",
    genre: "Fantasy",
    rating: 4.5
  },
  {
    title: "Goblin Slayer",
    author: "Kumo Kagyu",
    description: "A young priestess joins a group of adventurers to hunt goblins.",
    release_date: "2016-02-15",
    genre: "Fantasy",
    rating: 4.3
  },
  {
    title: "My Youth Romantic Comedy Is Wrong, As I Expected",
    author: "Wataru Watari",
    description: "A cynical high school student is forced to join a service club by his teacher.",
    release_date: "2011-03-18",
    genre: "Romance",
    rating: 4.4
  },
  {
    title: "A Certain Magical Index",
    author: "Kazuma Kamachi",
    description: "In a world where magic and science coexist, a high school student meets a young nun with knowledge of forbidden books.",
    release_date: "2004-04-10",
    genre: "Sci-Fi",
    rating: 4.1
  },
  {
    title: "Log Horizon",
    author: "Mamare Touno",
    description: "Thousands of players are trapped in a fantasy MMORPG and must learn to live in the virtual world.",
    release_date: "2011-03-05",
    genre: "Fantasy",
    rating: 4.3
  },
  {
    title: "Ascendance of a Bookworm",
    author: "Miya Kazuki",
    description: "A book-loving girl is reincarnated in a world with low literacy and strives to create books.",
    release_date: "2013-01-25",
    genre: "Fantasy",
    rating: 4.8
  }
])
