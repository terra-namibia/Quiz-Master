require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
  let!(:quiz1) { FactoryGirl.create(:quiz) }
  let(:params) { {} }  

  describe 'GET #answer_json' do
    context '正常系' do
      subject { get :answer_json, params: params }
      it 'quizzezが取得できていること' do
        is_expected.to be_success
        r = JSON.parse(response.body).first.to_json
        expect(r).to eq Quiz.first.to_json
      end
    end
  end

end
