require 'spec_helper'

describe "exercise_derivations/show" do
  before(:each) do
    @exercise_derivation = assign(:exercise_derivation, stub_model(ExerciseDerivation,
      :derived_exercise_id => 1,
      :source_exercise_id => 2,
      :deriver_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end