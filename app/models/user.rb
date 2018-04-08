class User < ApplicationRecord
  # Шифрование пароля
  has_secure_password

  # Никнейм пользователя должен:
  validates :name,
            presence: true,                   # существовать
            uniqueness: true,                 # быть единственным
            format: { with: /\A[a-z]+\z/ }    # содержать разрешенные символы

  # Почта пользователя должна:
  validates :email,
            presence: true, # существовать
            uniqueness: true, # быть единственным
            email_format: { message: 'is not looking good' } # быть валидной согласно гему

  # Пароль пользователя должен:
  validates :password_digest,
            presence: true,                   # существовать
            confirmation: true                # должен быть введён 2 раза при регистр.
end
