class NounPhrasesController < ApplicationController
  before_action :set_noun_phrase, only: [:show, :edit, :update, :destroy]

  # GET /noun_phrases
  # GET /noun_phrases.json
  def index
    @noun_phrases = NounPhrase.all
  end

  # GET /noun_phrases/1
  # GET /noun_phrases/1.json
  def show
  end

  # GET /noun_phrases/new
  def new
    @noun_phrase = NounPhrase.new
  end

  # GET /noun_phrases/1/edit
  def edit
  end

  # POST /noun_phrases
  # POST /noun_phrases.json
  def create
    @noun_phrase = NounPhrase.new(noun_phrase_params)

    respond_to do |format|
      if @noun_phrase.save
        format.html { redirect_to @noun_phrase, notice: 'Noun phrase was successfully created.' }
        format.json { render action: 'show', status: :created, location: @noun_phrase }
      else
        format.html { render action: 'new' }
        format.json { render json: @noun_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noun_phrases/1
  # PATCH/PUT /noun_phrases/1.json
  def update
    respond_to do |format|
      if @noun_phrase.update(noun_phrase_params)
        format.html { redirect_to @noun_phrase, notice: 'Noun phrase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @noun_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noun_phrases/1
  # DELETE /noun_phrases/1.json
  def destroy
    @noun_phrase.destroy
    respond_to do |format|
      format.html { redirect_to noun_phrases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noun_phrase
      @noun_phrase = NounPhrase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noun_phrase_params
      params.require(:noun_phrase).permit(:noun_phrase)
    end
end
