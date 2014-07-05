class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string   :title
      t.string   :chamber
      t.string   :firstname
      t.string   :nickname
      t.string   :last_name
      t.string   :name_suffix
      t.string   :party
      t.string   :state
      t.string   :state_name
      t.integer  :district
      t.boolean  :in_office
      t.string   :gender
      t.datetime :birthdate
      t.string   :term_start
      t.string   :term_end
      t.integer  :senate_class
      t.string   :bioguide_id
      t.string   :thomas_id
      t.string   :lis_id
      t.string   :votesmart_id
      t.string   :fec_ids
      t.string   :govtrack_id
      t.string   :crp_id
      t.text     :contact_form
      t.string   :facebook_id
      t.string   :fax
      t.string   :leadership_role
      t.string   :ocd_id
      t.text     :office
      t.string   :phone
      t.string   :twitter_id
      t.string   :website

      t.timestamps
    end
  end
end
