// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .


angular.module("gardenApp", []).controller("gardenCtrl", ['$scope', '$http', function($scope, $http){
  // alert("this is angular!");

  $scope.variety_count = 0;
  $scope.variety = false;

  $scope.varietyToggle = function(){
    if ($scope.variety_count % 2 == 0) {
      $scope.variety = true;
      console.log("show");
    }
    else {
      $scope.variety = false;
      console.log("hide");
    }
    $scope.variety_count += 1;
    console.log("adding");
  };

  // $scope.varietyHide = function() {
  //   $scope.newVarity = false;
  // }


}])