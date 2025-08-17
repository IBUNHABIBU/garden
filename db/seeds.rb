# Clear existing data
[RoutesSection, HeroSection, WhyUsSection, CtaSection, Testimonial, Service].each do |model|
  model.destroy_all
end

# ========== HERO SECTION ==========
hero = HeroSection.create!(
  title: "Conquer Kilimanjaro With Local Experts",
  subtitle: "Authentic Tanzanian safari experiences since 2010. 98% summit success rate."
)

hero.image.attach(
  io: File.open(Rails.root.join("app/assets/images/nyumbu.jpg")),
  filename: "hero.jpg",
  content_type: "image/jpg"
)

# ========== ROUTES SECTION ==========
routes = RoutesSection.create!(
  title: "Our Kilimanjaro Routes",
  description: "Carefully curated itineraries for all experience levels"
)

# Individual Routes
# klimanjaro = Route.create!(
#   name: "klimanjaro Route",
#   days: 5,
#   price: 1999,
#   difficulty: "Moderate",
#   short_description: "The 'Coca-Cola' route with hut accommodations"
# )

# klimanjaro.image.attach(
#   io: File.open(Rails.root.join("app/assets/images/klimanjaro.jpg")),
#   filename: "klimanjaro.jpg",
#   content_type: "image/jpg"
# )

# lions = Route.create!(
#   name: "lions Route",
#   days: 6,
#   price: 2299,
#   difficulty: "Challenging",
#   short_description: "Scenic 'Whiskey' route with diverse landscapes"
# )

# lions.image.attach(
#   io: File.open(Rails.root.join("app/assets/images/lions.jpg")),
#   filename: "lions.jpg",
#   content_type: "image/jpg"
# )

# ========== WHY US SECTION ==========
why_us = WhyUsSection.create!(
  title: "Why Marvellous Safaris?",
  description: "We go beyond standard tours to deliver authentic experiences"
)

# ========== SERVICES ==========
Service.create!(
  [
    {
      title: "Local Mountain Guides",
      description: "Our Chagga guides have 10+ years average experience on Kilimanjaro",
      icon: "fas fa-mountain"
    },
    {
      title: "Safety First",
      description: "Medical oxygen, pulse oximeters, and full emergency protocols",
      icon: "fas fa-shield-alt"
    }
  ]
)

# ========== TESTIMONIALS ==========
jioni = Testimonial.create!(
  author_name: "jioni Smith",
  author_title: "Summitted 2023",
  content: "The most incredible experience of my life. Our guide knew every step of the mountain."
)

jioni.avatar.attach(
  io: File.open(Rails.root.join("app/assets/images/jioni.jpg")),
  filename: "jioni.jpg",
  content_type: "image/jpg"
)

# ========== CTA SECTION ==========
cta = CtaSection.create!(
  title: "Ready for Your Adventure?",
  description: "Our team is standing by to help you plan your climb"
)

cta.background.attach(
  io: File.open(Rails.root.join("app/assets/images/faru.jpg")),
  filename: "faru.jpg",
  content_type: "image/jpg"
)

puts "Seeding completed successfully!"