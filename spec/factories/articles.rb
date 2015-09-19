FactoryGirl.define do
  factory :article do
     title "Article title"
     text "Article text"

    #создаём фабрику с названием artocle_woth_comments
    #для созданием статьи с несколькими комментариями
    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|# После создания :create
        #создаём список из 3 комментариев
        create_list :comment, 3, article: article #это хеш article: article - берётся из do |article,
      end
    end
  end
end