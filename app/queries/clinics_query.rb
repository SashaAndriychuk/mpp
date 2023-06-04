class ClinicsQuery
  def self.call(params)
    clinics = Clinic.all

    clinics = clinics.where('name LIKE ?', "%#{params[:search]}%") if params[:search].present?
    clinics = clinics.order(name: :asc) if params[:sorting] == "sort1"
    clinics = clinics.order(name: :desc) if params[:sorting] == "sort2"

    clinics = clinics.left_joins(:departments).group(:id).order("COUNT(departments.id) ASC") if params[:sorting] == "sort3"
    clinics = clinics.left_joins(:departments).group(:id).order("COUNT(departments.id) DESC") if params[:sorting] == "sort4"

    clinics = clinics.joins('LEFT JOIN departments ON clinics.id = departments.clinic_id').joins('LEFT JOIN doctors ON departments.id = doctors.department_id').group('clinics.id').order("COUNT(doctors.id) ASC") if params[:sorting] == "sort5"
    clinics = clinics.joins('LEFT JOIN departments ON clinics.id = departments.clinic_id').joins('LEFT JOIN doctors ON departments.id = doctors.department_id').group('clinics.id').order("COUNT(doctors.id) DESC") if params[:sorting] == "sort6"

    return clinics
  end
end

