class FaveLang

 def self.for_repos(repos)
    if repos.empty?
      nil
    else
      repos.first[:language]
    end
 end

end