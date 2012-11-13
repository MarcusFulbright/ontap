@BeerCtrl = ($scope, $http, Beer) ->  
  # window.scope = $scope
  $scope.query = null
  $scope.results = []


  $scope.searchNow = -> 
    $http.get("/searches?query=#{$scope.query}")
    .success (json) ->
      $scope.results = json


  $scope.beers = Beer.index()

  $scope.addBeer = (beerData)->
    beer = new Beer(beerData) 
    beer.$create -> 
      $scope.beers.push(beer)

@BeerCtrl.$inject = ['$scope', '$http', 'Beer']
