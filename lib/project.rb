require 'pry'
class Project

    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        all_backers=ProjectBacker.all.select do |pro|
            pro.project == self
         end
         backer_names=all_backers.map do |name|
            name.backer
         end
         backer_names
    end


    

end