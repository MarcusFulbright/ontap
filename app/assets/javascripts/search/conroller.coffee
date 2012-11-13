@SearchCtrl = ($scope, $http) ->
  # window.scope = $scope
  $scope.query = null
  $scope.results = []


  $scope.searchNow = -> 
    $http.get("/searches?query=#{$scope.query}")
    .success (json) ->
      $scope.results = json

@SearchCtrl.$inject = ['$scope', '$http']

