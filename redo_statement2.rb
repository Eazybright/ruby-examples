# redo-statement2.rb
require "net/http"

http = nil
uris = [URI("https://www.google.com:81/"), URI("https://www.google.com/")] # one url that will timeout and another that won't

for uri in uris
    begin
        attempts ||= 1
        puts "Opening TCP connection to #{uri.to_s}"
        http = Net::HTTP.start(uri.host, uri.port, open_timeout: 5)
        puts "Connection Object: #{http}"
    rescue Net::OpenTimeout => e # catching timeout exception
        puts "Timeout: #{e} (attempt ##{ attempts })"
        if (attempts += 1) < 5 # redo if condition ok
            puts "<redoing..>"
            redo # ⤴
        else
            puts "--------------------------"
            puts "Redo attempts exceeded. Moving on."
        end
    ensure
        if http # if the request is successful
            puts "Closing the TCP connection..."
            puts "--------------------------"
            http.finish
        end
    end
end
