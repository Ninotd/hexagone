AlgoliaSearch.configuration = {
  application_id: 'Q1EW8YXW9L',
  api_key: ENV['ALGOLIA_API_KEY']
}
index = Algolia::Index.new('Hexagone')
