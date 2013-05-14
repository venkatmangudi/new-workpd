class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      if user.role.role_name == "admin"
        can :manage, :all
      elsif user.role.role_name == "manager"
        cannot :destroy, :all
        can :read, :all
      elsif user.role.role_name == "district_head"
        # can :manage, Employee, :district_id => user.district_id

        can :manage, :all, :district_id=>user.district_id
        # can :manage, :all
        # cannot :index, Employee do |employee|
        #     employee.district_id != user.district_id
        #   end

        # can :read, [:months,:hospital_performas,:performaones,:graph_employee_statuses,:employee_sanction_workings,:graph_employee_status_by_bands,:graph_hospital_vacants,:posting_types,:vw_sanctioned_working_by_hospitals,:employee_cadres,:graph_hospital_vacant_by_bands,:employee_age_by_bands,:emp_tenure_by_bands,:hospital_types,:sanctioned_by_designations,:recruitment_modes,:employee_work_details,:reports,:emp_spec_views,:emp_gen_views,:emp_qual_views,:relationships,:addresses,:additional_charges,:sanctioned_posts,:health_dept_locations,:blocks,:divisions,:employment_types,:hospital_reports,:roles,:user,:hospitals, :users, :promotions,:showcauses,:achievements,:leaveemps,:leave_types,:qualifications,:universities,:specialisations,:qualification_names,:qualification_types,:dependents,:statuses,:relations,:postings,:designations,:institution_masters,:institution_types,:special_cadres,:tempus,:locations,:religions,:categories,:castes,:martial_stats,:blood_groups,:genders,:pincodes,:states,:cities,:districts,:taluks,:emp_edus,:emp_adds,:employees,:posts], :district_id => user.district_id

        # can :manage, [:months,:hospital_performas,:performaones,:graph_employee_statuses,:employee_sanction_workings,:graph_employee_status_by_bands,:graph_hospital_vacants,:posting_types,:vw_sanctioned_working_by_hospitals,:employee_cadres,:graph_hospital_vacant_by_bands,:employee_age_by_bands,:emp_tenure_by_bands,:hospital_types,:sanctioned_by_designations,:recruitment_modes,:employee_work_details,:reports,:emp_spec_views,:emp_gen_views,:emp_qual_views,:relationships,:addresses,:additional_charges,:sanctioned_posts,:health_dept_locations,:blocks,:divisions,:employment_types,:hospital_reports,:roles,:user,:hospitals, :users, :promotions,:showcauses,:achievements,:leaveemps,:leave_types,:qualifications,:universities,:specialisations,:qualification_names,:qualification_types,:dependents,:statuses,:relations,:postings,:designations,:institution_masters,:institution_types,:special_cadres,:tempus,:locations,:religions,:categories,:castes,:martial_stats,:blood_groups,:genders,:pincodes,:states,:cities,:districts,:taluks,:emp_edus,:emp_adds,:employees,:posts], :district_id => user.district_id

        # cannot :read, [:months,:hospital_performas,:performaones,:graph_employee_statuses,:employee_sanction_workings,:graph_employee_status_by_bands,:graph_hospital_vacants,:posting_types,:vw_sanctioned_working_by_hospitals,:employee_cadres,:graph_hospital_vacant_by_bands,:employee_age_by_bands,:emp_tenure_by_bands,:hospital_types,:sanctioned_by_designations,:recruitment_modes,:employee_work_details,:reports,:emp_spec_views,:emp_gen_views,:emp_qual_views,:relationships,:addresses,:additional_charges,:sanctioned_posts,:health_dept_locations,:blocks,:divisions,:employment_types,:hospital_reports,:roles,:user,:hospitals, :users, :promotions,:showcauses,:achievements,:leaveemps,:leave_types,:qualifications,:universities,:specialisations,:qualification_names,:qualification_types,:dependents,:statuses,:relations,:postings,:designations,:institution_masters,:institution_types,:special_cadres,:tempus,:locations,:religions,:categories,:castes,:martial_stats,:blood_groups,:genders,:pincodes,:states,:cities,:districts,:taluks,:emp_edus,:emp_adds,:employees,:posts], :district_id => nil

      else
        cannot :read, :all
      end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
