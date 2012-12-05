# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Course.delete_all
Course.create(title: 'ECE314 Signals and Systems',
  description: 
    %{<p>
        Development of analytical and computer-based skills for the analysis and
synthesis of signals, linear systems, and communications.
      </p>},  
  credit: 3)
# . . .
Course.create(title: 'ECE432 Introduction to Parallel Processing',
  description: 
    %{<p>
        Machine taxonomy and introduction to parallel programming. 
		Performance issues, speed-up, and efficiency. Interconnection networks and embeddings. 
		Parallel programming issues and models: control parallel, data parallel, and data flow. 
		Programming assignments on massively parallel machines.
      </p>},  
  credit: 3)
# . . .

Course.create(title: 'ECE442 Wireless Communications',
  description: 
    %{<p>
        The course is an introduction to cellular telephone systems and wireless networks, drawing upon a diversity of electrical engineering areas. 
		Topics include cellular concepts, radio propagation, modulation methods and multiple access techniques.
      </p>},
  credit: 3)
  
Program.delete_all
Program.create(title: 'Computer Engineering',
  description: 
    %{<p>
        ECE Computer Engineering
      </p>},
  dept: 'ECE',
  degree: 'MS',
  year: 2012)
# . . .
Program.create(title: 'Electrical Engineering',
  description: 
    %{<p>
        ECE Electrical Engineering
      </p>},
  dept: 'ECE',
  degree: 'BS',
  year: 2012)
# . . .


