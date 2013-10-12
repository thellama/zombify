class ZomNounsController < ApplicationController
  before_action :set_zom_noun, only: [:show, :edit, :update, :destroy]

  # GET /zom_nouns
  # GET /zom_nouns.json
  def index
    @zom_nouns = ZomNoun.all
  end

  # GET /zom_nouns/1
  # GET /zom_nouns/1.json
  def show
  end

  # GET /zom_nouns/new
  def new
    @zom_noun = ZomNoun.new
  end

  # GET /zom_nouns/1/edit
  def edit
  end

  # POST /zom_nouns
  # POST /zom_nouns.json
  def create
    @zom_noun = ZomNoun.new(zom_noun_params)

    respond_to do |format|
      if @zom_noun.save
        format.html { redirect_to @zom_noun, notice: 'Zom noun was successfully created.' }
        format.json { render action: 'show', status: :created, location: @zom_noun }
      else
        format.html { render action: 'new' }
        format.json { render json: @zom_noun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zom_nouns/1
  # PATCH/PUT /zom_nouns/1.json
  def update
    respond_to do |format|
      if @zom_noun.update(zom_noun_params)
        format.html { redirect_to @zom_noun, notice: 'Zom noun was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @zom_noun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zom_nouns/1
  # DELETE /zom_nouns/1.json
  def destroy
    @zom_noun.destroy
    respond_to do |format|
      format.html { redirect_to zom_nouns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zom_noun
      @zom_noun = ZomNoun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zom_noun_params
      params.require(:zom_noun).permit(:zom_noun)
    end
end
