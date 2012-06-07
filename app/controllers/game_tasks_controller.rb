class GameTasksController < ApplicationController
  # GET /game_tasks
  # GET /game_tasks.json
  def index
    @game_tasks = GameTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_tasks }
    end
  end

  # GET /game_tasks/1
  # GET /game_tasks/1.json
  def show
    @game_task = GameTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_task }
    end
  end

  # GET /game_tasks/new
  # GET /game_tasks/new.json
  def new
    @game_task = GameTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_task }
    end
  end

  # GET /game_tasks/1/edit
  def edit
    @game_task = GameTask.find(params[:id])
  end

  # POST /game_tasks
  # POST /game_tasks.json
  def create
    @game_task = GameTask.new(params[:game_task])

    respond_to do |format|
      if @game_task.save
        format.html { redirect_to @game_task, notice: 'Game task was successfully created.' }
        format.json { render json: @game_task, status: :created, location: @game_task }
      else
        format.html { render action: "new" }
        format.json { render json: @game_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_tasks/1
  # PUT /game_tasks/1.json
  def update
    @game_task = GameTask.find(params[:id])

    respond_to do |format|
      if @game_task.update_attributes(params[:game_task])
        format.html { redirect_to @game_task, notice: 'Game task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_tasks/1
  # DELETE /game_tasks/1.json
  def destroy
    @game_task = GameTask.find(params[:id])
    @game_task.destroy

    respond_to do |format|
      format.html { redirect_to game_tasks_url }
      format.json { head :no_content }
    end
  end
end
