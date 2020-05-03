RSpec.describe TailwinduiRails::Generators::InstallGenerator, type: :generator  do

  it "has a version number" do
    expect(TailwinduiRails::VERSION).not_to be nil
  end

  describe 'generated files' do
    before do
      run_generator
      let(:file) { 'tailwind.config.js' }
      let(:application_layout) { 'app/views/layouts/application.html.erb' }
    end

    it { expect(file).to be_an_existing_file }
    it { expect(application_layout).to have_file_content('stylesheet_pack_tag') }
  end
end
