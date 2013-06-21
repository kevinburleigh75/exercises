require 'spec_helper'

describe "exercise_collaborator_requests/new" do
  before(:each) do
    assign(:exercise_collaborator_request, stub_model(ExerciseCollaboratorRequest,
      :exercise_collaborator_id => 1,
      :requester_id => 1,
      :toggle_is_author => false,
      :toggle_is_copyright_holder => false
    ).as_new_record)
  end

  it "renders new exercise_collaborator_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_collaborator_requests_path, "post" do
      assert_select "input#exercise_collaborator_request_exercise_collaborator_id[name=?]", "exercise_collaborator_request[exercise_collaborator_id]"
      assert_select "input#exercise_collaborator_request_requester_id[name=?]", "exercise_collaborator_request[requester_id]"
      assert_select "input#exercise_collaborator_request_toggle_is_author[name=?]", "exercise_collaborator_request[toggle_is_author]"
      assert_select "input#exercise_collaborator_request_toggle_is_copyright_holder[name=?]", "exercise_collaborator_request[toggle_is_copyright_holder]"
    end
  end
end
