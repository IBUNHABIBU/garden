# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def about
    @team_members = [
      {
        name: "Alex Johnson",
        title: "Founder & Chief Explorer",
        bio: "20+ years guiding adventures across 6 continents",
        photo: "mavelogo.jpeg"
      },
      # ... more team members
    ]

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