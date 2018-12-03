const client = algoliasearch('Q1EW8YXW9L', ENV['ALGOLIA_API_KEY']);
const index = client.initIndex('Hexagone');
index.search('something', { hitsPerPage: 10, page: 0 })
  .then(function searchDone(content) {
    console.log(content)
  })
  .catch(function searchFailure(err) {
    console.error(err);
  });
