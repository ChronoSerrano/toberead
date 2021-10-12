class Characteristic
    class << self
        def select(characteristic) = send(characteristic).sample
        
        private
        def letter = ('A'..'Z').to_a
        def color = %w(red yellow blue brown orange green black pink white gray purple)
        def high_low = %w(highest lowest)
        def old_new = %w(oldest newest)
        def most_least = %w(most least)
        def past_future = %w(past future)
        def genre = %w(romance fantasy contemporary adult nonfiction thriller horror rom-com mystery self-help Adaptation
            Poetry revenge indie mythology Dystopian
            sapphic\ romance
            adult\ fantasy
            childrens\ classic
            young\ adult
            middle\ grade
            science\ fiction
            historical\ fiction
            graphic\ novel)
        def author_type = %w(new favorite asian black female LGBTQ+
            new\ to\ you)
        def title_word_count = %w(one two three 4+)
        def setting = ["North America", "South America", "Europe", "Asia", "Africa", "Australia", "Sea"]
        def item_type = %w(story book cover novella)
        def topic = %w(cooking travel music)
        def length = %w(<300 300-400 400-500 500-600 600+)
        def trope = [
            "enemies to lovers",
            "animal sidekick",
            "friends to lovers",
            "marriage of convenience"
        ]
        def source = %w(bookstagram booktube twitter goodreads)
        def first_last = %w(first last)
        def year = (["Before 2015"] << (2016..2021).to_a).flatten!
        def format = %w(paperback hardcover audiobook ebook)
        def on_the_cover = %w(person animal weapon hand person bird nature water)
        def representation = %w(POC LGBTQ+ Disability Asian Female Black)
    end
end
