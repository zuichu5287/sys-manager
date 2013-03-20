#!/usr/bin/ruby

path = ARGV[0]
fail "specify filename to create" unless path

File.open(path,"w"){|f| f.puts "#!/usr/bin/ruby"}
File.chmod(0755,path)
system "vim",path

