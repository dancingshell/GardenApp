class Note
  include Mongoid::Document
  field :note, type: String
  field :health_score, type: String
  field :date, type: String
  belongs_to :plant

  #  def note
  #   @note = Note.new
  # end

  # def note_attribites=(attributes)
  #   @note = @plant.notes.new(params.require(:note).permit(:note, :date, :plant_id))
  # end




end
