class NotesController < ApplicationController
  def create
    @exhibitor = Exhibitor.find(params[:exhibitor_id])
    @expo = @exhibitor.expo
    @note = Note.new(note_params)
    @note.user = current_user
    @note.exhibitor = @exhibitor
    @note.save
    redirect_to expo_exhibitor_path(@expo, @exhibitor)
  end

  private

  def note_params
    params.require(:note).permit(:message, :exhibitor_id, :user_id)
  end
end
