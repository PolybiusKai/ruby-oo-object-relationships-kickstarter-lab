
class Backer
    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_p = ProjectBacker.all.select{|project|
            project.backer == self
        }
        backed_p.map {|p| p.project}
    end
        
end