<title><%= full_title(yield(:title)) %></title>
    <meta name="description" content="Best Tanzania Safari Company in Arusha. Kilimanjaro marvellous Safari offers Serengeti Safaris, Kilimanjaro Treks & Ngorongoro Crater Tours. Custom Packages & Best Prices. Book Now!">
 

 def full_title(page_title = '')
    base_title = "Kilimarvelous Tour Company"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
end