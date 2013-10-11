#!/usr/bin/env ruby

# Note: you'll have to change the line endings
# to LF for the dot slash shebang to work.



require 'net/http'

url = URI.parse('httP://www.reddit.com/r/ruby')
req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port){
	|http|http.request(req)
					  
}
#puts res.body
conts = res.body.split('<a href="')
conts.shift
f = File.new("reddit.txt", 'w')
conts.each {|x| f.write(x.split('"')[0])}
