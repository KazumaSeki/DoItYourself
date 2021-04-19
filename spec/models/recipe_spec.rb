require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:image_path) {File.join(Rails.root, 'spec/support,sample.png') }
  let(:image) {Rack::Test::UploadedFile.new(iamge_path)}

end
