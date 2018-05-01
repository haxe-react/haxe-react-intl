package;

import js.Browser;
import js.html.URL;
import react.ReactDOM;
import react.ReactMacro.jsx;
import react.intl.ReactIntl.addLocaleData;
import react.intl.comp.IntlProvider;
import components.App;

class Main {
	static var enLocaleData = Webpack.require('react-intl/locale-data/en');
	static var enMessages = Webpack.require('../i18n/messages.json');
	static var upperMessages = Webpack.require('../i18n/messages-upper.json');

	public static function main() {
		addLocaleData(enLocaleData);
		addLocaleData({locale: 'en-UPPER', parentLocale: 'en'});

		var locale = (new URL(Browser.window.location.href)).searchParams.get('locale');
		if (locale == null) locale = 'en-US';
		var messages = locale == 'en-UPPER' ? upperMessages : enMessages;

		ReactDOM.render(
			jsx('
				<$IntlProvider locale=$locale messages=$messages>
					<$App />
				</$IntlProvider>
			'),
			Browser.document.getElementById('root')
		);
	}
}

