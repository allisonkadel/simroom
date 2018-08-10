module TrainingsHelper

    def admin_edit_button
        button_to "Edit Training", edit_training_path, 
        method: :get if current_user.id == @training.user_id
    end

    def admin_cancel_button
        button_to "Cancel Training", {action: "destroy", id: @training.id},
        method: :delete if current_user.id == @training.user_id
    end

end
