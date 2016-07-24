cities = {

	landmarks: {
	san_francisco: {
		sf_landmarks: [
			'Golden Gate Bridge', 'AT&T Park', 
			sf_slogan: 'The best city ever!'
		],
		'about_hash' => ['This is the hilliest city in California.']
		},
	new_york: {
		ny_landmarks: [
			'Empire State', 'Statue of Liberty',
			ny_slogan: 'The best city ever!'
		]
		},
	austin: {
		austin_landmarks: [
			'SRV Grave Site', 'State Capital',
			austin_slogan: 'The best city ever!'
		]
	},
	berkeley: {
		berk_landmarks: [
			'UC Berkeley', 'Indian Rock',
			berk_slogan: 'The best city ever!'
		]
	},
	san_diego: {
		sd_landmarks: [
			'US Border', 'Ocean Beach',
			sd_slogan: 'The best city ever!'
		]
	}
	}

}

p cities[:landmarks][:san_francisco]['about_hash'][0]

p cities[:landmarks][:san_francisco][:sf_landmarks][2][:sf_slogan] = 'home of the giants'.upcase

p cities[:landmarks][:san_diego][:sd_landmarks]

p cities[:landmarks][:san_francisco][:sf_landmarks][2][:sf_slogan]