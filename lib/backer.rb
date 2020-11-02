require 'pry'
class Backer
    
    attr_reader :name
    
    def initialize(name)
        @name = name
    
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end



   def backed_projects
       all_projects=ProjectBacker.all.select do |pro|
           pro.backer == self
        end
       project_names= all_projects.map do |name|
        name.project
       end
       project_names
   end






end
