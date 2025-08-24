# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def about
    @team_members = TeamMember.all

    @values = [
      {
        icon: :sustainability,
        title: "Sustainability",
        description: "We commit to eco-friendly practices that protect natural habitats.",
        color: "green"
      },
      {
        icon: :authenticity,
        title: "Authenticity", 
        description: "Genuine local experiences, not tourist traps.",
        color: "amber"
      },
      # Add other values...
    ]
    
  end

  def contact 
  end
end