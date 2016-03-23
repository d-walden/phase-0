# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative loads a ruby file within the application. require refrences remote gems (libraries).
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # define input as instance variables

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  # passes arguments to predicted_deaths and speed_of_spread methods

  private
  # private methods make it so you cannot call a method outside of a class (user security)

  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    case @population_density
    when 200..
      number_of_deaths = (@population * 0.4).floor
    when 150..199
      number_of_deaths = (@population * 0.3).floor
    when 100..149
      number_of_deaths = (@population * 0.2).floor
    when 50..99
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # calculates deaths based on population density (floor rounds down)

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    case @population_density
    when 200..
      speed += 0.5
    when 150..199
      speed += 1
    when 100..149
      speed += 1.5
    when 50..99
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
  # calculate speed of spread based on population density

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

all_states = STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key,STATE_DATA[key][:population_density], STATE_DATA[key][:population])
    state.virus_effects
end


#=======================================================================
# Reflection Section

# • What are the differences between the two different hash syntaxes shown in the state_data file?
# The main hash uses strings to store values, while the sub-hash uses symbols to store values.

# • What does require_relative do? How is it different from require?
# require_relative loads a ruby file within the application. require refrences remote gems (libraries).

# • What are some ways to iterate through a hash?
# You can iterate through a hash using while loops or iterative methods.

# • When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables in the initial solution weren’t actually being used in the method.

# • What concept did you most solidify in this challenge?
# This challenge helped solidify the concept of using “private” to ensure that certain methods cannot be called outside of a given class. This can be a used as a security feature to protect sensitive data.
