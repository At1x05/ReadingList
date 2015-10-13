 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Genre.destroy_all

fiction= Genre.create!(name: 'Fiction')
non_fiction= Genre.create!(name: 'Non-Fiction')
comedy= Genre.create!(name: 'Comedy')
biography= Genre.create!(name: 'Biography')
business= Genre.create!(name: 'Business')
Book.create!([
	{
		title: "Getting Things Done: The Art of Stress-Free Productivity",
		author: "David Allen",
		description: "In today's world, yesterday's methods just don't work. In Getting Things Done, veteran coach and management consultant David Allen shares the breakthrough methods for stress-free performance that he has introduced to tens of thousands of people across the country. Allen's premise is simple: our productivity is directly proportional to our ability to relax. Only when our minds are clear and our thoughts are organized can we achieve effective productivity and unleash our creative potential.",
		rating: 5,
		finished_on: 1.day.ago,
		thumb_image: 'http://images.contentreserve.com/ImageType-400/1523-1/DE1/FD7/DF/%7BDE1FD7DF-8479-4B09-ADD2-DB366D7923CD%7DImg400.jpg',
		genres: [business],

	},

	{ 
		title: "How I Raised Myself from Failure to Success in Selling",
		author: "Frank Bettger",
		description: "A business classic endorsed by Dale Carnegie, How I Raised Myself from Failure to Success in Selling is for anyone whose job it is to sell. Whether you are selling houses or mutual funds, advertisements or ideas—or anything else—this book is for you ",
		rating: 4,
		finished_on: 11.day.ago,
		thumb_image: 'http://ecx.images-amazon.com/images/I/51tapRZrNLL._SX324_BO1,204,203,200_.jpg',
		genres: [business],
	},

	{ 
		title: "The Alchemist",
		author: "Paulo Coehlo",
		description: "The Alchemist by Paulo Coelho continues to change the lives of its readers forever. With more than two million copies sold around the world, The Alchemist has established itself as a modern classic, universally admired. ",
		rating: 4,
		finished_on: 11.day.ago,
		thumb_image: 'http://graphics8.nytimes.com/images/2010/07/06/arts/alchemist/alchemist-articleInline.jpg',
		genres: [fiction]

	},

	{
		title: "Like a Virgin",
		author: "Richard Branson",
		description: "Looking for advice on setting up your own company, improving your career prospects, or developing your leadership skills? Why not ask Richard Branson?

In Like a Virgin: Secrets They Won't Teach You in Business School, Richard distils and shares the wisdom and experience that have made him one of the world's most recognised and respected entrepreneurs. From his 'Top 5 secrets of Business Success', to hard hitting discussions about the global financial crisis, this book brings together his best advice on all things business. ",
		rating: 6,
		finished_on: nil,
		thumb_image: 'http://ecx.images-amazon.com/images/I/51queAct8EL._SL500_AA300_PIaudible,BottomRight,13,73_AA300_.jpg',
		genres: [biography, business]

	}])

	
	p "Created #{Book.count} books!"