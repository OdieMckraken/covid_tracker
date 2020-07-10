class Animation 
     def self.animating
        10.times do
          i = 0
          while i < 14
           print "\033[2J"
           File.foreach("ascii_covid/#{i}.rb") { |f| puts f }
           sleep(0.05)
           i += 1
         end
       end
    end
end
