class HerosController < ApplicationController
  def index
    @heros = Hero.where(element: 'Light').paginate(page: params[:page], per_page: 25)
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    if @hero.save
      flash[:success] = "Hero was created successfully!"
      redirect_to hero_path(@hero)
    else
      render 'new'
    end
  end

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])

    if @hero.update(hero_params)
      flash[:success] = "Recipe was updated successfully!"
      redirect_to edit_hero_path(@hero)
    else
      render 'edit'
    end
  end

private
  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name, :rarity, :role, :image, :element)
  end


end
