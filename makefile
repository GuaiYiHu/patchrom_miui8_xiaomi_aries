#
## Makefile for xiaomi aries
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-miui-removed-apps := FM
local-miui-modified-apps := TeleService InCallUI SecurityCenter
local-phone-apps := PrintSpooler PacProcessor CertInstaller KeyChain\
	Stk TimeService UserDictionaryProvider Bluetooth BluetoothMidiService telresources webview\

local-phone-priv-apps :=AudioFX Shell FusedLocation ProxyHandler ExternalStorageProvider FMRadio\
	SharedStorageBackup InputDevices CellBroadcastReceiver \
	BackupRestoreConfirmation 

local-density := XHDPI
local-target-bit := 32

local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone
include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
	cp -rf other/system $(ZIP_DIR)/
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
	rm -rf $(ZIP_DIR)/system/lib64
