class CartoonsController < ApplicationController

  def index
    @cartoons = Cartoon.all
  end

  def show
    @cartoon = Cartoon.find(params[:id])
  end

  def new
    @cartoon = Cartoon.new(onair: true)
  end

  def create
       @cartoon = Cartoon.new(cartoon_params)

    if @cartoon.save
      redirect_to cartoons_path, notice: "Cartoon Added"
    else
      # Cartoon is invalid
      render :new
    end
  end

  def edit
    @cartoon = Cartoon.find(params[:id])
  end

  def update
    @cartoon = Cartoon.find(params[:id])

    if @cartoon.update(cartoon_params)
      redirect_to cartoons_path, notic: "Cartoon Updated"
    else
      render :edit
    end

  end

  def destroy
    @cartoon = Cartoon.find(params[:id])
    @cartoon.destroy
    redirect_to cartoons_path, notice: "Cartoon Destroy"
  end

  def cartoon_params
    params.require(:cartoon).permit(:name, :characters, :photo_url, :onair, :dvd_price)
  end

end
