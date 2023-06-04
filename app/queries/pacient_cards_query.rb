class PacientCardsQuery
  def self.call(params)
    pacient_cards = PacientCard.where(clinic_id: params[:clinic_id])

    pacient_cards = pacient_cards.joins(:pacient).where('fio LIKE ?', "%#{params[:search_pacient]}%") if params[:search_pacient].present?
    pacient_cards = pacient_cards.joins(:pacient).order(fio: :asc) if params[:sorting] == "sort1"
    pacient_cards = pacient_cards.joins(:pacient).order(fio: :desc) if params[:sorting] == "sort2"

    pacient_cards = pacient_cards.joins(:pacient).where('timestampdiff(YEAR, birth, curdate()) LIKE ?', "%#{params[:search_age]}%") if params[:search_age].present?
    pacient_cards = pacient_cards.left_joins(:pacient).order(birth: :desc) if params[:sorting] == "sort3"
    pacient_cards = pacient_cards.left_joins(:pacient).order(birth: :asc) if params[:sorting] == "sort4"

    return pacient_cards
  end
end


