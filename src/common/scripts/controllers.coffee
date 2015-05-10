controllers =
	'Hi': ($scope) ->
		$scope.hello = 'Hello'
		$scope.goodbye = 'Goodbye'
		$scope.phrase = $scope.hello

		$scope.newUserName = ''

		$scope.say = (phrase) ->
			$scope.phrase = phrase

		$scope.people = [ 
			{
				name: 'Peter'
				surname: 'Kozlov'
			},
			{
				name: 'John'
				surname: 'Konstantin'
			},
			{
				name: 'Segey'
				surname: 'Ivanov'
			}
		]
		$scope.addUser = ->
			return if $scope.newUserName.length < 3
			fullName = $scope.newUserName.split ' '
			$scope.people.push
				name: fullName[0]
				surname: fullName[1] if fullName[1]
				lastname: fullName[2] if fullName[2]

		$scope.removeUser = ->
			$scope.people.splice @$index, 1


module.exports =  controllers
