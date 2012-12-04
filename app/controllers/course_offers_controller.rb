class CourseOffersController < ApplicationController
  # GET /course_offers
  # GET /course_offers.json
  def index
    @course_offers = CourseOffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_offers }
    end
  end

  # GET /course_offers/1
  # GET /course_offers/1.json
  def show
    @course_offer = CourseOffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_offer }
    end
  end

  # GET /course_offers/new
  # GET /course_offers/new.json
  def new
    @course_offer = CourseOffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_offer }
    end
  end

  # GET /course_offers/1/edit
  def edit
    @course_offer = CourseOffer.find(params[:id])
  end

  # POST /course_offers
  # POST /course_offers.json
  def create
    @course_offer = CourseOffer.new(params[:course_offer])

    respond_to do |format|
      if @course_offer.save
        format.html { redirect_to @course_offer, notice: 'Course offer was successfully created.' }
        format.json { render json: @course_offer, status: :created, location: @course_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @course_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_offers/1
  # PUT /course_offers/1.json
  def update
    @course_offer = CourseOffer.find(params[:id])

    respond_to do |format|
      if @course_offer.update_attributes(params[:course_offer])
        format.html { redirect_to @course_offer, notice: 'Course offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_offers/1
  # DELETE /course_offers/1.json
  def destroy
    @course_offer = CourseOffer.find(params[:id])
    @course_offer.destroy

    respond_to do |format|
      format.html { redirect_to course_offers_url }
      format.json { head :no_content }
    end
  end
end
