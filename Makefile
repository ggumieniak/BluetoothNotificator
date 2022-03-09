SHELL = sh
.ONESHELL:
.SHELLFLAGS = -e

lint:
	swift run --configuration release --package-path ./BluetoothNotificator/Formatter --build-path ./BluetoothNotificator/.formatterCache -- swift-format lint --configuration ./BluetoothNotificator/Formatter/formatterConfig.json --parallel --recursive ./BluetoothNotificator/BluetoothNotificator/

format:
	swift run --configuration release --package-path ./BluetoothNotificator/Formatter --build-path ./BluetoothNotificator/.formatterCache -- swift-format format --configuration ./BluetoothNotificator/Formatter/formatterConfig.json --parallel --recursive --in-place ./BluetoothNotificator/BluetoothNotificator/
