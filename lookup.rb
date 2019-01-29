#!/usr/bin/env ruby
#lookup - List of hostnames to IP addresses in correct format.
#./lookup.rb list_of_hostnames.txt
hostnames = File.readlines(ARGV[0]).map(&:chomp &&:strip)


hostnames.each do |name|
  begin
    puts "#{name}\t#{IPSocket.getaddress(name)}"
  rescue SocketError
    puts "#{name}\tUnable to Resolve"
  end
end
