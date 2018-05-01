package components;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.intl.IntlShape;
import react.intl.ReactIntl.defineMessages;
import react.intl.ReactIntl.injectIntl;

private typedef Props = {
	var intl:IntlShape;
}

@:jsxStatic('WithIntl')
class LocalesMenu extends ReactComponentOfProps<Props> {
	public static var WithIntl = injectIntl(LocalesMenu);
	static var messages = defineMessages({
		enUSDescription: {
			id: 'menu.item_en_us_description',
			defaultMessage: 'The default locale of this example app.',
		},
		enUPPERDescription: {
			id: 'menu.item_en_upper_description',
			defaultMessage: 'The fake, all uppercase "locale" for this example app.',
		}
	});

	override public function render() {
		return jsx('
			<menu>
				<li>
					<a
						href="/?locale=en-US"
						title=${props.intl.formatMessage(messages.enUSDescription)}
					>
						en-US
					</a>
				</li>

				<li>
					<a
						href="/?locale=en-UPPER"
						title=${props.intl.formatMessage(messages.enUPPERDescription)}
					>
						en-UPPER
					</a>
				</li>
			</menu>
		');
	}
}
