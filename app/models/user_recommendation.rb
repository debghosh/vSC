class UserRecommendation 
  include Neo4j::ActiveNode

  property :recommendation_text, type: String
end
