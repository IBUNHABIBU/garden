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
        title: "Sustainable Travel",
        icon: "leaf.svg",
        description: "We minimize environmental impact and support local conservation."
      },
      # ... more values
    ]
  end
end