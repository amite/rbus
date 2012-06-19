class IntendedTripsController < ApplicationController
  # GET /intended_trips
  # GET /intended_trips.json
  def index
    @intended_trips = IntendedTrip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intended_trips }
    end
  end

  # GET /intended_trips/1
  # GET /intended_trips/1.json
  def show
    @intended_trip = IntendedTrip.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @intended_trip }
    end
  end

  # GET /intended_trips/new
  # GET /intended_trips/new.json
  def new
    @intended_trip = IntendedTrip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intended_trip }
    end
  end

  # GET /intended_trips/1/edit
  def edit
    @intended_trip = IntendedTrip.get(params[:id])
  end

  # POST /intended_trips
  # POST /intended_trips.json
  def create
    @intended_trip = IntendedTrip.new(params[:intended_trip])

    respond_to do |format|
      if @intended_trip.save
        format.html { redirect_to @intended_trip, notice: 'Intended trip was successfully created.' }
        format.json { render json: @intended_trip, status: :created, location: @intended_trip }
      else
        format.html { render action: "new" }
        format.json { render json: @intended_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intended_trips/1
  # PUT /intended_trips/1.json
  def update
    @intended_trip = IntendedTrip.get(params[:id])

    respond_to do |format|
      if @intended_trip.update(params[:intended_trip])
        format.html { redirect_to @intended_trip, notice: 'Intended trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @intended_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intended_trips/1
  # DELETE /intended_trips/1.json
  def destroy
    @intended_trip = IntendedTrip.get(params[:id])
    @intended_trip.destroy

    respond_to do |format|
      format.html { redirect_to intended_trips_url }
      format.json { head :no_content }
    end
  end
end
