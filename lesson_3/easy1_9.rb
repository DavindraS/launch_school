=begin
  Turn this hash into an array with Barney's name and number
  flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
  flintstones.keep_if{|k, v| k == "Barney"}.to_a.flatten! # my answer

  flintstones.assoc("Barney") # official and better answer
=end
