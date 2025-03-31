# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  content title: "Dashboard" do

    panel "User Role Distribution" do
      div do
        pie_chart User.group(:role).count,
                  colors: ["#3498db", "#e74c3c", "#f1c40f"], # Blue, Red, Yellow
                  donut: true
      end
    end

    para "Welcome to the Admin Dashboard!"
  end


  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    show do 
      attributes_table do
         row :created_at
         row :updated_at
         row :category
         row :user 
      end
       
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
