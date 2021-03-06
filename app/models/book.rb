class Book < ActiveRecord::Base
	has_many :book_genres
	has_many :genres, through: :book_genres
	
	#scope :finished, ->{where('finished_on IS NOT NULL')}
	scope :finished, ->{where.not(finished_on: nil)}
	#scope :recent, ->{where('finished_on > ?', 2.days.ago)}
	#sprawdza, czy ksiazka jest juz przeczytana (jezeli w kolumnie finished_on jest wartosc jakas, to zwraca true)
	scope :search, ->(keyword){where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present?}
	scope :filter, ->(name){
		joins(:genres).where('genres.name= ?', name) if name.present?}

	before_save :set_keywords
	def self.recent
		where('finished_on > ?', 2.days.ago)
	end

	#def self.search(keyword)  --> to jest to samo co scope :search
	#  if keyword.present?
	#  	  where(title: keyword)
	#  	 else 
	#  	 	all
	 # 	 end
	#end

	def finished? 
		finished_on.present?
	end

	protected
	  def set_keywords
	    self.keywords=[title, author, description].map(&:downcase).join(' ')
	  end
end
