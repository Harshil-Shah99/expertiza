class CreateWikiTypes < ActiveRecord::Migration[4.2]
  def self.up
    create_table 'wiki_types', id: :integer, auto_increment: true, force: true do |t|
      t.column 'name', :string, default: '', null: false
    end

    execute "INSERT INTO `wiki_types` VALUES (1,'No'),(2,'MediaWiki'),(3,'DokuWiki');"
  end

  def self.down
    drop_table 'wiki_types'
  end
end
