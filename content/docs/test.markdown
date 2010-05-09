---
title: Test
author: Your Name, Another Author, Third author
---
person.rb:
    class Person
      include Mongoid::Document
      field :first_name
      field :last_name
      embeds_one :address
      embeds_many :phones
    end

