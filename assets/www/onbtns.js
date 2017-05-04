function Ersal(Esm,Khat) {
	var ttt = $("#" + Khat).text();
	var share = new Share();
	share.show({
		subject: 'از هر دری سخنی',
		text: ttt + ' * ' + Esm + ' *'},
		function() {}, // Success function
		function() {alert('ناموفق در به اشتراک گذاری')} // Failure function
	);
};