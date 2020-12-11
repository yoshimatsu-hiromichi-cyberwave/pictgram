class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  
  #パスワードをアルファベット、数字の混合のみ可能にする、正規表現
  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
  
  #メールアドレスの正規表現を追加してください
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  #名前の長さに制限を追加する
  validates :name, presence: true, length: { maximum: 15}
  
  has_secure_password
end
