class HangpersonGame
  #changes made
  # add the necessary class methods, attributes, etc. here
  # to make the tests in spec/hangperson_game_spec.rb pass.

  # Get a word from remote "random word" service

  # def initialize()
  # end
 
  def initialize(word)
    @word = word
    @guesses = ""
    @wrong_guesses = ""
  end

  def word
    @word
  end

  def guesses
    @guesses
  end

  def wrong_guesses
    @wrong_guesses
  end

  def guess(letter)

    # throws arguement error when letter is empty or not in alphabet
    if(letter == nil || letter == "" || letter.match?(/[^a-zA-Z]/))
      raise ArgumentError
    end

    # returns false when repeated guess
    if guesses.include?(letter.downcase) || wrong_guesses.include?(letter.downcase)
      return false
    end
    
    # correct guesses go to guess list unless the letter is already in the guess list
    if word.include?(letter)
      @guesses += letter unless guesses.include?(letter)
      
    end

    #incorrect guesses go to wrong guesses list unless the letter is already in wrong guesses list
    if word.include?(letter) == false
      @wrong_guesses += letter unless wrong_guesses.include?(letter)
    end

    #returns true when the letter is and is not in the word
    if word.include?(letter)
      return true  
    else 
      return true
    end
    word_with_guesses << "letter"

  end

  def word_with_guesses

    displayed_word = ''
    @word.each_char do |char|         # interate through each letter in the word
      if @guesses.include?(char)      # if the char is in the guesses list then 
        displayed_word += char        # the guess will be displayed on the word with guesses list.
      else
        displayed_word += "-"         # spaces not guessed will be '-'
      end
    end
    displayed_word
  end
  

  def check_win_or_lose
    if wrong_guesses.length >= 7
      :lose
    elsif !word_with_guesses.include?('-')
      :win
    else
      :play
    end
  end
  

  # You can test it by running $ bundle exec irb -I. -r app.rb
  # And then in the irb: irb(main):001:0> HangpersonGame.get_random_word
  #  => "cooking"   <-- some random word
  def self.get_random_word
    require 'uri'
    require 'net/http'
    uri = URI('http://randomword.saasbook.info/RandomWord')
    Net::HTTP.new('randomword.saasbook.info').start { |http|
      return http.post(uri, "").body
    }
  end
end