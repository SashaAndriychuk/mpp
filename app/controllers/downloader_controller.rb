class DownloaderController < ApplicationController
  def all_csv
    send_data CsvGenerator.all_csv,
              filename: "clinics.csv",
              type: "application.csv"
  end

  def all_pdf
    send_data PdfGenerator.all_pdf,
              filename: "clinics.pdf",
              type: "application/pdf"
  end

  def clinic_pdf
    send_data PdfGenerator.clinic_pdf(params[:id]),
              filename: "clinic.pdf",
              type: "application/pdf"
  end

  def pacient_pdf
    send_data PdfGenerator.pacient_pdf(params[:id]),
              filename: "patient.pdf",
              type: "application/pdf"
  end
end
