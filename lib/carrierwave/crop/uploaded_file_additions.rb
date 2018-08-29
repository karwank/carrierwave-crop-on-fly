class ActionDispatch::Http::UploadedFile
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h, :output_w, :output_h

  alias_method :old_initialize, :initialize

  def initialize(hash)
    parameters = hash.with_indifferent_access
    @crop_x = parameters[:crop_x]
    @crop_y = parameters[:crop_y]
    @crop_w = parameters[:crop_w]
    @crop_h = parameters[:crop_h]
    @output_w = parameters[:output_w]
    @output_h = parameters[:output_h]

    old_initialize(hash)
  end
end