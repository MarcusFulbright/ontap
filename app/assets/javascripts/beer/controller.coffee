@BeerCtrl = ($scope, $http, Beer) ->  

  $scope.beers = Beer.index()

  $scope.addBeer = (beerData)->
    beer = new Beer(beerData) 
    beer.$create -> 
      $scope.beers.push(beer)

@BeerCtrl.$inject = ['$scope', '$http', 'Beer']