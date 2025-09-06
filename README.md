<title><%= full_title(yield(:title)) %></title>
   <title></title>
<meta name="description" content="Book your Tanzania Safari with Kilimanjaro Marvellous Safari – a trusted Arusha safari company. We offer Serengeti Safaris, Kilimanjaro Treks, Ngorongoro Crater Tours & custom Tanzania safari packages at the best prices.">
<meta name="robots" content="index, follow">

 

 def full_title(page_title = '')
    base_title = "Tanzania Safari Tours | Serengeti, Kilimanjaro Treks & Ngorongoro | Arusha"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
end