require "basic_betch/version"

class Basicbetch
  attr_reader :name, :starbucks_order, :uggs, :instafood, :north_face, :yoga_pants, :role_model, :tv_show
  attr_accessor :basic_items

  def initialize
    @basic_items = []
    basic_name
    basic_drink
    basic_uggs
    basic_north_face
    basic_instagram
    basic_yoga_pants
    basic_role_model
    basic_tv_show
    is_basic?
  end

  def basic_name
    print "What's your name?: "
    @name = gets.chomp.downcase
    basic_name = /(jessica|lauren|ashley|samantha)/
    if !basic_name.match(name).nil?
      @basic_items.push(name)
    end
  end

  def basic_drink
    print "What is your Starbucks order?: "
    @starbucks_order = gets.chomp.downcase
    basic_starbucks = /pumpkin|spice|soy|triple|foam|extra|skinny|venti/
    if !basic_starbucks.match(starbucks_order).nil?
      @basic_items.push(starbucks_order)
    end
  end

  def basic_uggs
    print "Do you own a pair of Uggs?: "
    @uggs = gets.chomp.downcase
    basic_uggs = /yes|duh|lots|loads|course|yeah/
    if !basic_uggs.match(uggs).nil?
      @basic_items.push("owns uggs")
    end
  end

  def basic_instagram
    print "Do you LOVE instagramming pictures of food?: "
    @instafood = gets.chomp.downcase
    basic_insta = /yes|maybe|duh|everyday|yeah|sometimes/
    if !basic_insta.match(instafood).nil?
      @basic_items.push("instragrams food")
    end
  end

  def basic_north_face
    print "Do you LOVE the North Face?: "
    @north_face = gets.chomp.downcase
    basic_north_face = /yes|maybe|duh|yeah|kinda/
    if !basic_north_face.match(north_face).nil?
      @basic_items.push("north face")
    end
  end

  def basic_yoga_pants
    print "Do you wear yoga pants when not doing yoga?: "
    @yoga_pants = gets.chomp.downcase
    basic_yoga = /yes|maybe|duh|yeah|sometimes|kind*/
    if !basic_yoga.match(yoga_pants).nil?
      @basic_items.push("yoga pants")
    end
  end

  def basic_role_model
    print "Who is your role model?: "
    @role_model = gets.chomp.downcase
    basic_role_model = /oprah|victoria|middelton|kardashian|god|model|selena|swift|lively|gosling/
    if !basic_role_model.match(role_model).nil?
      @basic_items.push(role_model)
    end
  end

  def basic_tv_show
    print "What is your favorite TV show?: "
    @tv_show = gets.chomp.downcase
    basic_tv = /jersey|housewives|view|kardashians|e!|friends|liars|anatomy/
    if !basic_tv.match(tv_show).nil?
      @basic_items.push(tv_show)
    end
  end

  def is_basic?
    if @basic_items.size <= 1
      print "\nCongrats, you're not a basic betch!\n"
    elsif @basic_items.size > 1 && basic_items.size <= 2
      print "\nWhomp whomp, you're kinda basic\n"
    elsif @basic_items.size > 2 && basic_items.size <= 3
      print "\nSorry, you're pretty basic\n"
    elsif @basic_items.size > 3 && basic_items.size <= 4
      print "\nYou're a super basic betch\n"
    else
      print "\nYou couldn't be more of a basic betch...\n"
    end
  end
end

Basicbetch.new
