class GameEventsController < ApplicationController
  # GET /game_events
  # GET /game_events.json
  def index
    @game_events = GameEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_events }
    end
  end

  # GET /game_events/1
  # GET /game_events/1.json
  def show
    @game_event = GameEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_event }
    end
  end

  # GET /game_events/new
  # GET /game_events/new.json
  def new
    @game_event = GameEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_event }
    end
  end

  # GET /game_events/1/edit
  def edit
    @game_event = GameEvent.find(params[:id])
  end

  # POST /game_events
  # POST /game_events.json
  def create
    @game_event = GameEvent.new(params[:game_event])

    respond_to do |format|
      if @game_event.save
        format.html { redirect_to @game_event, notice: 'Game event was successfully created.' }
        format.json { render json: @game_event, status: :created, location: @game_event }
      else
        format.html { render action: "new" }
        format.json { render json: @game_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_events/1
  # PUT /game_events/1.json
  def update
    @game_event = GameEvent.find(params[:id])

    respond_to do |format|
      if @game_event.update_attributes(params[:game_event])
        format.html { redirect_to @game_event, notice: 'Game event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_events/1
  # DELETE /game_events/1.json
  def destroy
    @game_event = GameEvent.find(params[:id])
    @game_event.destroy

    respond_to do |format|
      format.html { redirect_to game_events_url }
      format.json { head :no_content }
    end
  end
end
