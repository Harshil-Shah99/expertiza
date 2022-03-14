class TeamsUsers < ActiveRecord::Migration[4.2]
  def self.up
    create_table :teams_users, id: :integer, auto_increment: true do |t| # maps users to teams; in rare cases, a single individual is on > 1 team for an assgt.
      t.column :team_id, :integer
      t.column :user_id, :integer
    end
    execute "alter table teams_users
             add constraint fk_users_teams
             foreign key (team_id) references teams(id)"
    execute "alter table teams_users
             add constraint fk_teams_users
             foreign key (user_id) references users(id)"
  end

  def self.down
    drop_table :teams_users
  end
end
