class Post < ApplicationRecord
  # Заголовок поста должен:
  validates :title,
            presence: true # существовать

  # Наполнение поста должно:
  validates :content,
            presence: true # существовать

  # Автор поста должен:
  validates :author,
            presence: true # существовать
end
