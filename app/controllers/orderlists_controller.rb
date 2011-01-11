class OrderlistsController < ApplicationController
  # GET /orderlists
  # GET /orderlists.xml
  def index
    @orderlists = Orderlist.all
    respond_with(@orderlists)
  end

  # GET /orderlists/1
  # GET /orderlists/1.xml
  def show
    @orderlist = Orderlist.find(params[:id])
    respond_with(@orderlist)
  end

  # GET /orderlists/new
  # GET /orderlists/new.xml
  def new
    @orderlist = Orderlist.new
    respond_with(@orderlist)
  end

  # GET /orderlists/1/edit
  def edit
    @orderlist = Orderlist.find(params[:id])
  end

  # POST /orderlists
  # POST /orderlists.xml
  def create
    @orderlist = Orderlist.new(params[:orderlist])
    @orderlist.save
    respond_with(@orderlist)
  end

  # PUT /orderlists/1
  # PUT /orderlists/1.xml
  def update
    @orderlist = Orderlist.find(params[:id])
    @orderlist.update_attributes(params[:orderlist])
    respond_with(@orderlist)
  end

  # DELETE /orderlists/1
  # DELETE /orderlists/1.xml
  def destroy
    @orderlist = Orderlist.find(params[:id])
    @orderlist.destroy
    respond_with(@orderlist)
  end
end
