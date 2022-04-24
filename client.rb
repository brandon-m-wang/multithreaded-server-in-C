require 'socket'
start = Process.clock_gettime(Process::CLOCK_MONOTONIC)

s = TCPSocket.new 'localhost', 8989

s.write("./testfiles/#{ARGV[0]}.txt\n")

s.each_line do |line|
    # puts line
end

s.close
finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = finish - start
puts "Elapsed: #{elapsed} (#{ARGV[0]})"
