require 'nokogiri'
require 'open-uri'



doc = Nokogiri::HTML(URI.open("https://flatironschool.com/"))

 puts "#{doc.css(".site-logo").text.strip}: "

 courses = doc.css(".heading-25-extrabold.color-black")

#  puts courses[0].attributes

 course_info = doc.css(".column-item.col-lg-3.col-sm-6 p")

#  puts course_info[2].text.strip
 

#  courses.each do |course|
#     puts course.text.strip
#  end


    i = 0
    x = 0
    while i < 4 && x < 8 do
        puts "#{courses[i].text.strip} - #{course_info[x].text.strip}"
        i += 1
        x += 2
    end


