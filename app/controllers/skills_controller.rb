class SkillsController < ApplicationController

    def index 
        @skills = Skill.all 
    end

    def show 
        @skill = Skill.find(params[:id])
        @courses = Course.all
    end
end