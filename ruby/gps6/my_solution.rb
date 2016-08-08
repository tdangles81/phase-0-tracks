# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

#RELEASE 9: =======================================================================
#The differences between hash syntaxes are string key to a hash, as well as a hash built 
#exclusively w/ symbols.

#Require_relative gives access to files within working directory, whereas require allows a custom path outside of dir.

#Hashes can be iterated through by either using the .each method on the CONSTANT that the hash is placed in.
#Also, it is possible to create a loop that looks for value ranges in a hash, and modify if conditions are met.
#It is also possible to specific which symbol in the hash to iterate through with hash[key].each.

#virus_effects unecessarily used variables instead of the parameter names passed into the argument.
#Variables were already initialized through the class, so passing method parameters named identical to the 
#vars worked just fine.

#I found out that if/else conditions are sometimes the most visual, but always the most efficient
#means of getting a desired outcome.
#Also, I gained a better grasp of hash iteration.

#=======================================================================

require_relative 'state_data'


class VirusPredictor

  #Set intitial values of variables in the class for instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calling two other methods
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  #Classes below cannot be accessed outside of the class
  private

  #Calculates deaths based on population density
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    # puts("OLD")
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


    number_of_deaths = (population * 0.05).floor
      for i in 1..4 
        if population_density.between?(50*i, 50*(i+1)) || population_density >= 200
          number_of_deaths = (0.1 * i * population).floor
        end
      end
      puts "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Calculating speed of disease spread based pop density
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    #  speed = 0.0

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

    speed = 2.5
      for i in 1..4
        if population_density.between?(50*i, 50*(i+1)) || population_density >= 200
          speed -= 0.5
        end
      end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |statename, populationinfo|
  state = VirusPredictor.new(statename, STATE_DATA[statename][:population_density], STATE_DATA[statename][:population])
  state.virus_effects
end
