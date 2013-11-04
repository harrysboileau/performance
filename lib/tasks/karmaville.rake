namespace :db do

  desc "populate karma point sum to users table"
  task :populate_karma_point_sum => :environment do 
    User.all.each do |v|
      sum = v.karma_points.sum(:value)
      v.update_attribute(:karma_points_sum, sum) 
    end
  end
end
