class ZebraController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end

  def square_new
    render({ :template => "game_templates/square_new"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2
  
    render({ :template => "game_templates/square_results"})
  end

  def square_root_new
    render({ :template => "game_templates/square_root_new"})
  end

  def square_root_results
    @the_num = params.fetch("users_number").to_f

    @the_result = Math.sqrt(@the_num) 
    render({ :template => "game_templates/square_root_results"})

  end

  def payment_new
    render({ :template => "game_templates/payment_new"})
  end

  def payment_results
    @the_apr = params.fetch("user_apr").to_f

    @the_years = params.fetch("user_years").to_f
  
    @the_principal = params.fetch("user_pv").to_f
  
    @numerator = (@the_apr/1200) * @the_principal
  
    @denominator = 1 - (1 + (@the_apr/1200))**(-@the_years*12)
  
    @the_payment = (@numerator/@denominator)
    render({ :template => "game_templates/payment_results"})
  end

  def random_new
    render({ :template => "game_templates/random_new"})
  end

  def random_results
    @user_min = params.fetch("user_min").to_f

    @user_max = params.fetch("user_max").to_f

    @random = rand(@user_min..@user_max)
    render({ :template => "game_templates/random_results"})
  end

end
