angular.module('app.factories')
    .factory('MobileFactory', function($http, $q, IpService) {
        //  var url='http://192.168.56.1:8080/rest/mobile';
        //   var url='http://192.168.1.109:8080/rest/mobile';
        var url = IpService.getIp();
        return {
            getCall2: function(call) { //Puxa chamados da Unsolved Call
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/search3',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        params: call,
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getCall3: function(call) { // Puxa chamados da Solved Call
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/search4',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        params: call,
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getUN: function(call) { // Puxa chamados da Solved Call
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/searchun',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        params: call,
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getSO: function(call) { // Puxa chamados da Solved Call
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/searchso',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        params: call,
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getBM: function(page) { // Puxa comunicados em massa
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/bm/' + page,
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getBM2: function(page, category) { // Puxa comunicados em massa
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/bm/' + page + '/' + category,
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getReadBM: function(cpf) { // Puxa comunicados em massa
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/read/' + cpf,
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            setReadBM: function(cpf, bmid) { // Puxa comunicados em massa
                var deferred = $q.defer();
                $http({
                        method: 'PUT',
                        url: url + '/read',
                        data: { 'cpf': cpf, 'bmid': bmid },
                        dataType: "json",
                        contentType: "application/json",
                        responseType: 'json',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        }
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getAllCall2: function(cpf) {
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/search/' + cpf,
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getAllCall5: function(token) {
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/search5/' + token,
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getAllCall6: function(filter) {
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/search6',
                        params: filter,
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getCallProgress2: function() {
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/callprogress',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getCitizent: function(token) {
                url = IpService.getIp();
                return $http({
                    method: 'GET',
                    url: url + '/citizent/' + token,
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getCitizenf: function(ftoken) {
                return $http({
                    method: 'GET',
                    url: url + '/citizentf/' + ftoken,
                    dataType: "json",
                    contentType: "application/json",
                    responseType: 'json',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getEntity2: function() {
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/entity',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getEntityCategory2: function() {
                var deferred = $q.defer();
                $http({
                        method: 'GET',
                        url: url + '/entitycategory',
                        headers: {
                            'Content-Type': 'application/json',
                            'Access-Control-Allow-Origin': '*'
                        },
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            getCallClassification: function() {
                return $http({
                    method: 'GET',
                    url: url + '/callclassification',
                    headers: {
                        'Content-Type': 'application/json',
                        'Access-Control-Allow-Origin': '*'
                    },
                    responseType: 'json'
                });
            },
            getEntities: function() {
                return $http({
                    method: 'GET',
                    url: url + '/entity',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getEntityCategory: function() {
                return $http({
                    method: 'GET',
                    url: url + '/entitycategory',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getToken: function() {
                return $http({
                    method: 'GET',
                    url: url + '/token',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getHeader: function() {
                return $http({
                    method: 'GET',
                    url: url + '/header',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getStates: function() {
                return $http({
                    method: 'GET',
                    url: url + '/states',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getCity: function(estado) {
                return $http({
                    method: 'GET',
                    url: url + '/city/' + estado,
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getNeighborhood: function(cidade) {
                return $http({
                    method: 'GET',
                    url: url + '/neighborhood/' + cidade,
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getNeighborhood2: function() {
                return $http({
                    method: 'GET',
                    url: url + '/neighborhood/3551',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getNeighborhoodByName: function(name) {
                return $http({
                    method: 'GET',
                    url: url + '/bairro/' + name,
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            getMedia: function(callId) {
                return $http({
                    method: 'GET',
                    url: url + '/media',
                    headers: {
                        'Content-Type': 'application/json',
                        'Access-Control-Allow-Origin': '*'
                    },
                    params: {
                        'callId': callId
                    },
                    responseType: 'json'
                });
            },
            saveCitizen: function(citizen, header, token) {
                return $http({
                    method: 'POST',
                    url: url + '/citizen',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': token
                    },
                    responseType: 'json',
                    data: citizen
                });
            },
            changePassword: function(oldPass, newPass, token) {
                return $http({
                    method: 'PUT',
                    url: url + '/changepass',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': token
                    },
                    responseType: 'json',
                    params: { 'oldPass': oldPass, 'newPass': newPass, 'token': token }
                });
            },
            getByCoordinates: function(latitude, longitude) {
                return $http({
                    method: 'GET',
                    url: "https://maps.googleapis.com/maps/api/geocode/json?latlng=" + latitude + "," + longitude,
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            },
            saveUnsolvedCall: function(data, token) {
                // var unsolvedCall= JSON.stringify({"mediasPath":["a","b","c"],"callClassificationId":{"callClassificationId":1},"description":{"information":"dddddddd"},"entityEntityCategoryMaps":{"entity":{"entityId":177},"entityCategory":{"entityCategoryId":69}},"addressId":{"neighborhoodId":{"neighborhood_id":1}}});
                //var data=angular.toJson($scope.unsolvedCall);
                // console.log(data);
                var deferred = $q.defer();
                $http({
                        url: url + "/call/" + token,
                        method: "POST",
                        data: data,
                        dataType: "json",
                        contentType: "application/json",
                        responseType: 'json'
                    }).success(deferred.resolve)
                    .error(deferred.resolve);
                return deferred.promise;
            },
            verifyToken: function() {
                console.log("OK");
                var token = window.localStorage.getItem("token");
                $http.get(url + "/token/" + token).success(function(data) {
                    if (data.code === "1") {
                        console.log("O Token e valido");
                        saveCall();
                        //alert("O Token e valido");
                        $state.go('homeLogin');
                    }
                }).error(function() {
                    alert("E necessario autenticar novamente");
                    //solicitar o login novamente sem perder as informações
                });
            },
            evaluation: function(id, eval, token) {
                //console.log("evaluation");
                return $http({
                        url: url + "/eval",
                        method: "PUT",
                        data: {
                            "solvedCallId": id,
                            "evaluation": eval,
                            "token": token
                        },
                        headers: { 'Content-Type': 'application/json' },
                        responseType: 'json'
                    }).success(function() {

                    })
                    .error(function() {

                    });
            },
            removeCitizen: function(id) {
                console.log("delete Citizen");
                return $http({
                    url: url + "/remove",
                    method: "PUT",
                    data: id,
                    headers: { 'Content-Type': 'application/json' },
                    responseType: 'json'
                }).success(function() {

                }).error(function() {

                });
            },
            readCall: function(id) {
                console.log("marcando como lido");
                return $http({
                    url: url + "/readcall",
                    method: "PUT",
                    data: id,
                    headers: { 'Content-Type': 'application/json' },
                    responseType: 'json'
                }).success(function(){

                }).error(function(){
                    
                });
            },
            getSelectCity: function() {
                return $http({
                    method: 'GET',
                    url: 'http://www.souzem.com.br/admin/rest/city',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    responseType: 'json'
                });
            }
        }
    });
