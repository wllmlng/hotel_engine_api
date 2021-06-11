# == Schema Information
#
# Table name: characters
#
#  id                          :bigint           not null, primary key
#  char_id                     :integer          not null
#  name                        :string           not null
#  birthday                    :string
#  occupation                  :string           default([]), is an Array
#  img                         :string
#  status                      :string
#  nickname                    :string
#  appearance                  :integer          default([]), is an Array
#  portrayed                   :string
#  category                    :string
#  better_call_saul_appearance :string           default([]), is an Array
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class Character < ApplicationRecord
    validates :char_id, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: true
end
