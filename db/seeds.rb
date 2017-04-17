10.times do |blog|
  Blog.create!(
  	title: "My Blog Post #{blog}", body: "Aenean lacinia bibendum nulla sed consectetur. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas faucibus mollis interdum. Cras justo odio, dapibus ac facilisis in, egestas eget quam."
  	)
end

puts "10 blog post created"

5.times do |skill|
	Skill.create!(
 		title: "Rails #{skill}", 
 		percent_utilized: 15
		)
end

puts "5 skills created"

9.times do |portfolio_item|
	Portfolio.create!(
title: "Portfolio title: #{portfolio_item}",
subtitle: "My great service",
body: 'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec ullamcorper nulla non metus auctor fringilla.' ,
main_image: "http://placehold.it/600x400",
thumb_image: "http://placehold.it/350x150"
		)
end

puts "9 portfolio items created"
