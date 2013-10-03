#!/usr/bin/env ruby

gis_keywords = []
func_keywords = []
File.open('dictionary.txt', 'w') do |dout|
  File.open('thesaurus.txt', 'w') do |tout|
    File.open('syntax/postgresql.vim') do |fin|
      fin.each_line do |line|
        next unless line =~ /^\s*syn keyword (\w+) (.+)/
        term = $1
        keywords = $2.chomp.split
        is_gis = (term =~ /^gis/i)
        is_func = (term =~ /Func/)

        keywords.each do |keyword|
          dout.puts keyword.upcase + " " + keyword.downcase
        end

        gis_keywords += keywords if is_gis
        func_keywords += keywords if is_func
      end


      # Populate thesaurus
      tout.puts "gis,#{gis_keywords.join(',')}"
      tout.puts "func,#{func_keywords.join(',')}"
    end
  end
end
