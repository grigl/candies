#!/usr/bin/ruby

def printUsage
	puts 'Usage:'
	puts '	deploy password [from_branch] [to_branch]'
	abort
end

printUsage unless ARGV[0]

password = ARGV[0]
from_branch = (ARGV[1] or 'HEAD^')
to_branch = (ARGV[2] or 'HEAD')
host = 'ftp.thecandies.ru'
login = 'thecand8'
site_root = 'site_root'
ftp_root = '/www'

$files = `git diff --name-only #{from_branch} #{to_branch}`.split "\n"
$files = $files.select { |i| i =~ /^#{site_root}/ }

def confirmFiles
	puts "Files to be uploaded:"
	puts "------------------------------------"
	puts $files
	puts "------------------------------------"
	puts "Upload them? ([u]pload, [e]xit or [s]elect)"
	a = STDIN.gets.chop

	if a == 'u'
		puts 'Excellent!'
		return
	end

	if a == 's'
		puts 'Ok, lets go!'
		puts "------------------------------------"
		$files = $files.select do |f|
			puts "Do you want «#{f}»? (y/n)"
			'y' == STDIN.gets.chop  
		end 
		puts "------------------------------------"
		confirmFiles
		return
	end

	abort 'Exit :-('
end

confirmFiles

puts "------------------------------------"
for file in $files
	ftp_dir = file.gsub "#{site_root}", ftp_root
	ftp_dir = ftp_dir.gsub(/\/[^\/]+?$/, '')
	file = "./#{file}"
	`ncftpput -u #{login} -p #{password} -d deploy-ftp.log -R -S .tmp -v #{host} #{ftp_dir} #{file}`
end