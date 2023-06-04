class PacientCardsController < ApplicationController
  before_action :set_pacient_card, only: %i[ show edit update destroy ]

  # GET /pacient_cards or /pacient_cards.json
  def index
    @pacient_cards = PacientCardsQuery.call(params).page(params[:page]).per(15)
  end

  # GET /pacient_cards/1 or /pacient_cards/1.json
  def show
  end

  # GET /pacient_cards/new
  def new
    @pacient_card = PacientCard.new
  end

  # GET /pacient_cards/1/edit
  def edit
  end

  # POST /pacient_cards or /pacient_cards.json
  def create
    @pacient_card = PacientCard.new(pacient_card_params)

    respond_to do |format|
      if @pacient_card.save
        format.html { redirect_to pacient_card_url(@pacient_card), notice: "Pacient card was successfully created." }
        format.json { render :show, status: :created, location: @pacient_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pacient_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacient_cards/1 or /pacient_cards/1.json
  def update
    respond_to do |format|
      if @pacient_card.update(pacient_card_params)
        format.html { redirect_to pacient_card_url(@pacient_card), notice: "Pacient card was successfully updated." }
        format.json { render :show, status: :ok, location: @pacient_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pacient_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacient_cards/1 or /pacient_cards/1.json
  def destroy
    @pacient_card.destroy

    respond_to do |format|
      format.html { redirect_to pacient_cards_url, notice: "Pacient card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacient_card
      @pacient_card = PacientCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pacient_card_params
      params.require(:pacient_card).permit(:clinic_id, :pacient_id)
    end
end
