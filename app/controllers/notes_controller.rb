class NotesController < ApplicationController
  def create
    @exhibitor = Exhibitor.find(params[:exhibitor_id])
    @expo = @exhibitor.expo
    @note = Note.create! params.require(:message).permit(:title, :content)
    redirect_to message
  end
end
