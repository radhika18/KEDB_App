class SolutionsController < ApplicationController
  
  skip_before_filter :verify_authenticity_token, :only => [:search]

  def solist
    @solutions = Solution.all
  end

  def home
  end

  def about 
  end

  def show
    @solution = Solution.find(params[:id])
    @solutions = Solution.where(:id => params[:id])
  end
  
  def index
    gon.solutions = Solution.all.map(&:error) + Solution.all.map(&:description)
    @query = Solution.search do
        fulltext params[:search]
    end
    @solutions = @query.results
   end
  
  def new
    @solution = Solution.new
  end

  def edit
   @solution = Solution.find(params[:id])
  end

 
  def create
    @solution = Solution.new(solution_params)
    respond_to do |format|
      if @solution.save
        format.html { redirect_to @solution, notice: 'Solution was successfully created for the issue.' }
        format.json { render action: 'show', status: :created, location: @solution }
      else
        format.html { render action: 'new' }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

   def update
     @solution = Solution.find(params[:id])
     respond_to do |format|
      if @solution.update(solution_params)
        format.html { redirect_to @solution, notice: 'Solution was successfully updated.' }
        format.json { render :show, status: :ok, location: @solution }
      else
        format.html { render :edit }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @solution=Solution.where(id: params[:id]).first
    @solution.destroy
    respond_to do |format|
      format.html { redirect_to solutions_path , notice: 'Solution was successfully deleted.' }
      format.json { head :no_content }
    end
  end
    
  private
    
    def set_solution
      @solution = Solution.find(params[:id])
    end

    
    def solution_params
      params.require(:solution).permit(:cause , :Problemno ,:description , :error , :solution , :solver , :logged_date)
    end
end

  
