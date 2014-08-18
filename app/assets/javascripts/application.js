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
  $scope.plant_submitted = false;

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


  $scope.test = function(){
    $scope.plant_submitted = true
    alert("test!!!");
    console.log("submitted");
  }
  
  

  // $scope.next = function(tab){
  //   $scope.home = false;
  //   $scope.tab = true;
  // }

  $scope.home = true;

  $scope.active = function(tab) {
    $scope.home = false;
    $scope.profile = false;
    $scope.messages = false;
    $scope.settings = false;

    if (tab == "home") {
      $scope.home = true;
      console.log("home");
    }
    else if (tab == "profile") {
      $scope.profile = true;
      console.log("profile");
    }
    else if (tab == "messages") {
      $scope.messages = true;
      console.log("messages");
    }
    else if (tab == "settings") {
      $scope.setting = true;
      console.log("settings");
    }
  }

  // $scope.varietyHide = function() {
  //   $scope.newVarity = false;
  // }


}])