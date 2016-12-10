.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x75

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x65

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x66

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x27

.field static final TRANSACTION_disableLocationUpdates:I = 0x24

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x25

.field static final TRANSACTION_enableDataConnectivity:I = 0x26

.field static final TRANSACTION_enableLocationUpdates:I = 0x22

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x23

.field static final TRANSACTION_enableVideoCalling:I = 0x73

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_factoryReset:I = 0x7f

.field static final TRANSACTION_getActivePhoneType:I = 0x2f

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x30

.field static final TRANSACTION_getAllCellInfo:I = 0x45

.field static final TRANSACTION_getAtr:I = 0x82

.field static final TRANSACTION_getAtrUsingSubId:I = 0x83

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x57

.field static final TRANSACTION_getCallState:I = 0x2b

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2c

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x67

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x64

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x31

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x32

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x33

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x34

.field static final TRANSACTION_getCdmaEriText:I = 0x35

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x36

.field static final TRANSACTION_getCdmaMdn:I = 0x62

.field static final TRANSACTION_getCdmaMin:I = 0x63

.field static final TRANSACTION_getCellLocation:I = 0x29

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x5b

.field static final TRANSACTION_getDataActivity:I = 0x2d

.field static final TRANSACTION_getDataEnabled:I = 0x5f

.field static final TRANSACTION_getDataNetworkType:I = 0x3d

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x3e

.field static final TRANSACTION_getDataState:I = 0x2e

.field static final TRANSACTION_getDefaultSim:I = 0x47

.field static final TRANSACTION_getDeviceId:I = 0x7d

.field static final TRANSACTION_getIccOperatorNumericForData:I = 0x40

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x6a

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x69

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x80

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x43

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x44

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x6b

.field static final TRANSACTION_getModemActivityInfo:I = 0x81

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2a

.field static final TRANSACTION_getNetworkType:I = 0x3b

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3c

.field static final TRANSACTION_getPcscfAddress:I = 0x60

.field static final TRANSACTION_getPreferredNetworkType:I = 0x58

.field static final TRANSACTION_getRadioAccessFamily:I = 0x72

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x7e

.field static final TRANSACTION_getTetherApnRequired:I = 0x59

.field static final TRANSACTION_getVoiceMessageCount:I = 0x39

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3a

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x3f

.field static final TRANSACTION_handlePinMmi:I = 0x19

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1a

.field static final TRANSACTION_hasIccCard:I = 0x41

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x42

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4a

.field static final TRANSACTION_iccCloseLogicalChannelUsingSubId:I = 0x4b

.field static final TRANSACTION_iccExchangeSimIO:I = 0x50

.field static final TRANSACTION_iccExchangeSimIOUsingSubId:I = 0x51

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x48

.field static final TRANSACTION_iccOpenLogicalChannelUsingSubId:I = 0x49

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4e

.field static final TRANSACTION_iccTransmitApduBasicChannelUsingSubId:I = 0x4f

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4c

.field static final TRANSACTION_iccTransmitApduLogicalChannelUsingSubId:I = 0x4d

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x6e

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x28

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x78

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x79

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isSimPinEnabled:I = 0x10

.field static final TRANSACTION_isTtyModeSupported:I = 0x77

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x74

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x7c

.field static final TRANSACTION_isVolteAvailable:I = 0x7b

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x7a

.field static final TRANSACTION_isWorldPhone:I = 0x76

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x6f

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x37

.field static final TRANSACTION_nvReadItem:I = 0x53

.field static final TRANSACTION_nvResetConfig:I = 0x56

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x55

.field static final TRANSACTION_nvWriteItem:I = 0x54

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x52

.field static final TRANSACTION_setCellInfoListRate:I = 0x46

.field static final TRANSACTION_setDataEnabled:I = 0x5e

.field static final TRANSACTION_setImsRegistrationState:I = 0x61

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x68

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x5a

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x5c

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x6c

.field static final TRANSACTION_setPreferredNetworkType:I = 0x5d

.field static final TRANSACTION_setRadio:I = 0x1d

.field static final TRANSACTION_setRadioCapability:I = 0x71

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1e

.field static final TRANSACTION_setRadioPower:I = 0x1f

.field static final TRANSACTION_setRoamingOverride:I = 0x6d

.field static final TRANSACTION_setVoiceMailNumber:I = 0x38

.field static final TRANSACTION_shutdownMobileRadios:I = 0x70

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x11

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x12

.field static final TRANSACTION_supplyPinReportResult:I = 0x15

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x16

.field static final TRANSACTION_supplyPuk:I = 0x13

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x14

.field static final TRANSACTION_supplyPukReportResult:I = 0x17

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x18

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1c

.field static final TRANSACTION_updateServiceLocation:I = 0x20

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 52
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 1480
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 49
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x1

    return v5

    .line 54
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 57
    .local v24, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v5, 0x1

    return v5

    .line 63
    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 67
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 68
    .local v30, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v5, 0x1

    return v5

    .line 74
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v48

    .line 76
    .local v48, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v48, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v5, 0x1

    return v5

    .line 77
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 82
    .end local v48    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 85
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    move-result v48

    .line 86
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v48, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v5, 0x1

    return v5

    .line 87
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 92
    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v5, 0x1

    return v5

    .line 99
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 102
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v5, 0x1

    return v5

    .line 108
    .end local v6    # "_arg0":I
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v5, 0x1

    return v5

    .line 115
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 118
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    move-result v48

    .line 119
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v48, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v5, 0x1

    return v5

    .line 120
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 125
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 129
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 130
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v48

    .line 131
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v48, :cond_3

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v5, 0x1

    return v5

    .line 132
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 137
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 141
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 142
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v48

    .line 143
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v48, :cond_4

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v5, 0x1

    return v5

    .line 144
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 149
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 152
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v48

    .line 153
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v48, :cond_5

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v5, 0x1

    return v5

    .line 154
    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .line 159
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 162
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    move-result v48

    .line 163
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v48, :cond_6

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v5, 0x1

    return v5

    .line 164
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 169
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 174
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v48

    .line 175
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v48, :cond_7

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v5, 0x1

    return v5

    .line 176
    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    .line 181
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 184
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v48

    .line 185
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v48, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v5, 0x1

    return v5

    .line 186
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 191
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 195
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 196
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v48

    .line 197
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v48, :cond_9

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v5, 0x1

    return v5

    .line 198
    :cond_9
    const/4 v5, 0x0

    goto :goto_9

    .line 203
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 206
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled(Ljava/lang/String;)Z

    move-result v48

    .line 207
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v48, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v5, 0x1

    return v5

    .line 208
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 213
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 216
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v48

    .line 217
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v48, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v5, 0x1

    return v5

    .line 218
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 223
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 228
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v48

    .line 229
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v48, :cond_c

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v5, 0x1

    return v5

    .line 230
    :cond_c
    const/4 v5, 0x0

    goto :goto_c

    .line 235
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 239
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 240
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .line 241
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v48, :cond_d

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v5, 0x1

    return v5

    .line 242
    :cond_d
    const/4 v5, 0x0

    goto :goto_d

    .line 247
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 251
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 253
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 254
    .local v35, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .line 255
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v48, :cond_e

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v5, 0x1

    return v5

    .line 256
    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    .line 261
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v35    # "_arg2":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 264
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v50

    .line 265
    .local v50, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 267
    const/4 v5, 0x1

    return v5

    .line 271
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":[I
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 275
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 276
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v50

    .line 277
    .restart local v50    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 279
    const/4 v5, 0x1

    return v5

    .line 283
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":[I
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 287
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 288
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v50

    .line 289
    .restart local v50    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 291
    const/4 v5, 0x1

    return v5

    .line 295
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v50    # "_result":[I
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 299
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 301
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 302
    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v50

    .line 303
    .restart local v50    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 305
    const/4 v5, 0x1

    return v5

    .line 309
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v35    # "_arg2":Ljava/lang/String;
    .end local v50    # "_result":[I
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 312
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v48

    .line 313
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v48, :cond_f

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v5, 0x1

    return v5

    .line 314
    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    .line 319
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 323
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 324
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v48

    .line 325
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v48, :cond_10

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v5, 0x1

    return v5

    .line 326
    :cond_10
    const/4 v5, 0x0

    goto :goto_10

    .line 331
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v5, 0x1

    return v5

    .line 338
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 341
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v5, 0x1

    return v5

    .line 347
    .end local v6    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v26, 0x1

    .line 350
    .local v26, "_arg0":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v48

    .line 351
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v48, :cond_12

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v5, 0x1

    return v5

    .line 349
    .end local v26    # "_arg0":Z
    .end local v48    # "_result":Z
    :cond_11
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_11

    .line 352
    .restart local v48    # "_result":Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_12

    .line 357
    .end local v26    # "_arg0":Z
    .end local v48    # "_result":Z
    :sswitch_1e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 361
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v32, 0x1

    .line 362
    .local v32, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v48

    .line 363
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v48, :cond_14

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v5, 0x1

    return v5

    .line 361
    .end local v32    # "_arg1":Z
    .end local v48    # "_result":Z
    :cond_13
    const/16 v32, 0x0

    .restart local v32    # "_arg1":Z
    goto :goto_13

    .line 364
    .restart local v48    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    goto :goto_14

    .line 369
    .end local v6    # "_arg0":I
    .end local v32    # "_arg1":Z
    .end local v48    # "_result":Z
    :sswitch_1f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v26, 0x1

    .line 372
    .restart local v26    # "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v48

    .line 373
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v48, :cond_16

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v5, 0x1

    return v5

    .line 371
    .end local v26    # "_arg0":Z
    .end local v48    # "_result":Z
    :cond_15
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_15

    .line 374
    .restart local v48    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    goto :goto_16

    .line 379
    .end local v26    # "_arg0":Z
    .end local v48    # "_result":Z
    :sswitch_20
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v5, 0x1

    return v5

    .line 386
    :sswitch_21
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 389
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v5, 0x1

    return v5

    .line 395
    .end local v6    # "_arg0":I
    :sswitch_22
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v5, 0x1

    return v5

    .line 402
    :sswitch_23
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 405
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v5, 0x1

    return v5

    .line 411
    .end local v6    # "_arg0":I
    :sswitch_24
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v5, 0x1

    return v5

    .line 418
    :sswitch_25
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 421
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v5, 0x1

    return v5

    .line 427
    .end local v6    # "_arg0":I
    :sswitch_26
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v48

    .line 429
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v48, :cond_17

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v5, 0x1

    return v5

    .line 430
    :cond_17
    const/4 v5, 0x0

    goto :goto_17

    .line 435
    .end local v48    # "_result":Z
    :sswitch_27
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v48

    .line 437
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v48, :cond_18

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v5, 0x1

    return v5

    .line 438
    :cond_18
    const/4 v5, 0x0

    goto :goto_18

    .line 443
    .end local v48    # "_result":Z
    :sswitch_28
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v48

    .line 445
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v48, :cond_19

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v5, 0x1

    return v5

    .line 446
    :cond_19
    const/4 v5, 0x0

    goto :goto_19

    .line 451
    .end local v48    # "_result":Z
    :sswitch_29
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 454
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v40

    .line 455
    .local v40, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v40, :cond_1a

    .line 457
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v5, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_1a
    const/4 v5, 0x1

    return v5

    .line 461
    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 467
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Landroid/os/Bundle;
    :sswitch_2a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 470
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v46

    .line 471
    .local v46, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 473
    const/4 v5, 0x1

    return v5

    .line 477
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v39

    .line 479
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v5, 0x1

    return v5

    .line 485
    .end local v39    # "_result":I
    :sswitch_2c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 488
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(I)I

    move-result v39

    .line 489
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v5, 0x1

    return v5

    .line 495
    .end local v6    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_2d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v39

    .line 497
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v5, 0x1

    return v5

    .line 503
    .end local v39    # "_result":I
    :sswitch_2e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v39

    .line 505
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v5, 0x1

    return v5

    .line 511
    .end local v39    # "_result":I
    :sswitch_2f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v39

    .line 513
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v5, 0x1

    return v5

    .line 519
    .end local v39    # "_result":I
    :sswitch_30
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 522
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(I)I

    move-result v39

    .line 523
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/4 v5, 0x1

    return v5

    .line 529
    .end local v6    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_31
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 532
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    move-result v39

    .line 533
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v5, 0x1

    return v5

    .line 539
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_32
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 543
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 544
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 545
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v5, 0x1

    return v5

    .line 551
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_33
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 554
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    move-result v39

    .line 555
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v5, 0x1

    return v5

    .line 561
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_34
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 565
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 566
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 567
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v5, 0x1

    return v5

    .line 573
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_35
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 576
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 577
    .local v44, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    const/4 v5, 0x1

    return v5

    .line 583
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 587
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 588
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 589
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    const/4 v5, 0x1

    return v5

    .line 595
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v48

    .line 597
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v48, :cond_1b

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    const/4 v5, 0x1

    return v5

    .line 598
    :cond_1b
    const/4 v5, 0x0

    goto :goto_1b

    .line 603
    .end local v48    # "_result":Z
    :sswitch_38
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 607
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 609
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 610
    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .line 611
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    if-eqz v48, :cond_1c

    const/4 v5, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    const/4 v5, 0x1

    return v5

    .line 612
    :cond_1c
    const/4 v5, 0x0

    goto :goto_1c

    .line 617
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v35    # "_arg2":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_39
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v39

    .line 619
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v5, 0x1

    return v5

    .line 625
    .end local v39    # "_result":I
    :sswitch_3a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 628
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    move-result v39

    .line 629
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v5, 0x1

    return v5

    .line 635
    .end local v6    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_3b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v39

    .line 637
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    const/4 v5, 0x1

    return v5

    .line 643
    .end local v39    # "_result":I
    :sswitch_3c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 647
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 648
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 649
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/4 v5, 0x1

    return v5

    .line 655
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_3d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 658
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    move-result v39

    .line 659
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v5, 0x1

    return v5

    .line 665
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_3e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 669
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 670
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 671
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    const/4 v5, 0x1

    return v5

    .line 677
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_3f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 681
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 682
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 683
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/4 v5, 0x1

    return v5

    .line 689
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_40
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 692
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v44

    .line 693
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 695
    const/4 v5, 0x1

    return v5

    .line 699
    .end local v6    # "_arg0":I
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v48

    .line 701
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v48, :cond_1d

    const/4 v5, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/4 v5, 0x1

    return v5

    .line 702
    :cond_1d
    const/4 v5, 0x0

    goto :goto_1d

    .line 707
    .end local v48    # "_result":Z
    :sswitch_42
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 710
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v48

    .line 711
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v48, :cond_1e

    const/4 v5, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v5, 0x1

    return v5

    .line 712
    :cond_1e
    const/4 v5, 0x0

    goto :goto_1e

    .line 717
    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_43
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 720
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    move-result v39

    .line 721
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    const/4 v5, 0x1

    return v5

    .line 727
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_44
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 731
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 732
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v39

    .line 733
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v5, 0x1

    return v5

    .line 739
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_45
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 742
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v45

    .line 743
    .local v45, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 745
    const/4 v5, 0x1

    return v5

    .line 749
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_46
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 752
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    const/4 v5, 0x1

    return v5

    .line 758
    .end local v6    # "_arg0":I
    :sswitch_47
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v39

    .line 760
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v5, 0x1

    return v5

    .line 766
    .end local v39    # "_result":I
    :sswitch_48
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 769
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v41

    .line 770
    .local v41, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v41, :cond_1f

    .line 772
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    const/4 v5, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 778
    :goto_1f
    const/4 v5, 0x1

    return v5

    .line 776
    :cond_1f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 782
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_49
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 786
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 787
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelUsingSubId(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v41

    .line 788
    .restart local v41    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    if-eqz v41, :cond_20

    .line 790
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    const/4 v5, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 796
    :goto_20
    const/4 v5, 0x1

    return v5

    .line 794
    :cond_20
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 800
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v41    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 803
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    move-result v48

    .line 804
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    if-eqz v48, :cond_21

    const/4 v5, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v5, 0x1

    return v5

    .line 805
    :cond_21
    const/4 v5, 0x0

    goto :goto_21

    .line 810
    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_4b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 814
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 815
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannelUsingSubId(II)Z

    move-result v48

    .line 816
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v48, :cond_22

    const/4 v5, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v5, 0x1

    return v5

    .line 817
    :cond_22
    const/4 v5, 0x0

    goto :goto_22

    .line 822
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_4c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 826
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 828
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 830
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 832
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 834
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 836
    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 837
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 838
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    const/4 v5, 0x1

    return v5

    .line 844
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 848
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 850
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 852
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 854
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 856
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 858
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 860
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, "_arg7":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    .line 861
    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelUsingSubId(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 862
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    const/4 v5, 0x1

    return v5

    .line 868
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 872
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 874
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 876
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 878
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 880
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    .line 881
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 882
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 884
    const/4 v5, 0x1

    return v5

    .line 888
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 892
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 894
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 896
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 898
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 900
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 902
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 903
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelUsingSubId(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 904
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 906
    const/4 v5, 0x1

    return v5

    .line 910
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 914
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 916
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 918
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 920
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 922
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg5":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    .line 923
    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v49

    .line 924
    .local v49, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 926
    const/4 v5, 0x1

    return v5

    .line 930
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v49    # "_result":[B
    :sswitch_51
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 934
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 936
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 938
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 940
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 942
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 944
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg6":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 945
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOUsingSubId(IIIIIILjava/lang/String;)[B

    move-result-object v49

    .line 946
    .restart local v49    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 948
    const/4 v5, 0x1

    return v5

    .line 952
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":Ljava/lang/String;
    .end local v49    # "_result":[B
    :sswitch_52
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 955
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 956
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 958
    const/4 v5, 0x1

    return v5

    .line 962
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 965
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v44

    .line 966
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 968
    const/4 v5, 0x1

    return v5

    .line 972
    .end local v6    # "_arg0":I
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_54
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 976
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 977
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v48

    .line 978
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    if-eqz v48, :cond_23

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/4 v5, 0x1

    return v5

    .line 979
    :cond_23
    const/4 v5, 0x0

    goto :goto_23

    .line 984
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_55
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .line 987
    .local v27, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v48

    .line 988
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    if-eqz v48, :cond_24

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/4 v5, 0x1

    return v5

    .line 989
    :cond_24
    const/4 v5, 0x0

    goto :goto_24

    .line 994
    .end local v27    # "_arg0":[B
    .end local v48    # "_result":Z
    :sswitch_56
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 997
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v48

    .line 998
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    if-eqz v48, :cond_25

    const/4 v5, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v5, 0x1

    return v5

    .line 999
    :cond_25
    const/4 v5, 0x0

    goto :goto_25

    .line 1004
    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_57
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1007
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    move-result v39

    .line 1008
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    const/4 v5, 0x1

    return v5

    .line 1014
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_58
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1017
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    move-result v39

    .line 1018
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v5, 0x1

    return v5

    .line 1024
    .end local v6    # "_arg0":I
    .end local v39    # "_result":I
    :sswitch_59
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    move-result v39

    .line 1026
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    const/4 v5, 0x1

    return v5

    .line 1032
    .end local v39    # "_result":I
    :sswitch_5a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1035
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    const/4 v5, 0x1

    return v5

    .line 1041
    .end local v6    # "_arg0":I
    :sswitch_5b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1044
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v43

    .line 1045
    .local v43, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    if-eqz v43, :cond_26

    .line 1047
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    const/4 v5, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1053
    :goto_26
    const/4 v5, 0x1

    return v5

    .line 1051
    :cond_26
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 1057
    .end local v6    # "_arg0":I
    .end local v43    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_5c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1061
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    .line 1062
    sget-object v5, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/OperatorInfo;

    .line 1068
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v37, 0x1

    .line 1069
    .local v37, "_arg2":Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v48

    .line 1070
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    if-eqz v48, :cond_29

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    const/4 v5, 0x1

    return v5

    .line 1065
    .end local v37    # "_arg2":Z
    .end local v48    # "_result":Z
    :cond_27
    const/16 v29, 0x0

    .local v29, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_27

    .line 1068
    .end local v29    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :cond_28
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_28

    .line 1071
    .restart local v48    # "_result":Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_29

    .line 1076
    .end local v6    # "_arg0":I
    .end local v37    # "_arg2":Z
    .end local v48    # "_result":Z
    :sswitch_5d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1080
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1081
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    move-result v48

    .line 1082
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    if-eqz v48, :cond_2a

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    const/4 v5, 0x1

    return v5

    .line 1083
    :cond_2a
    const/4 v5, 0x0

    goto :goto_2a

    .line 1088
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v48    # "_result":Z
    :sswitch_5e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1092
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v32, 0x1

    .line 1093
    .restart local v32    # "_arg1":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v5, 0x1

    return v5

    .line 1092
    .end local v32    # "_arg1":Z
    :cond_2b
    const/16 v32, 0x0

    .restart local v32    # "_arg1":Z
    goto :goto_2b

    .line 1099
    .end local v6    # "_arg0":I
    .end local v32    # "_arg1":Z
    :sswitch_5f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1102
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v48

    .line 1103
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    if-eqz v48, :cond_2c

    const/4 v5, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v5, 0x1

    return v5

    .line 1104
    :cond_2c
    const/4 v5, 0x0

    goto :goto_2c

    .line 1109
    .end local v6    # "_arg0":I
    .end local v48    # "_result":Z
    :sswitch_60
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1113
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1114
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v51

    .line 1115
    .local v51, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1117
    const/4 v5, 0x1

    return v5

    .line 1121
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":[Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v26, 0x1

    .line 1124
    .restart local v26    # "_arg0":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    const/4 v5, 0x1

    return v5

    .line 1123
    .end local v26    # "_arg0":Z
    :cond_2d
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_2d

    .line 1130
    .end local v26    # "_arg0":Z
    :sswitch_62
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1133
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v44

    .line 1134
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1136
    const/4 v5, 0x1

    return v5

    .line 1140
    .end local v6    # "_arg0":I
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1143
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v44

    .line 1144
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1146
    const/4 v5, 0x1

    return v5

    .line 1150
    .end local v6    # "_arg0":I
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_64
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus()I

    move-result v39

    .line 1152
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    const/4 v5, 0x1

    return v5

    .line 1158
    .end local v39    # "_result":I
    :sswitch_65
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1161
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v39

    .line 1162
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/4 v5, 0x1

    return v5

    .line 1168
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_66
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1171
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v39

    .line 1172
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    const/4 v5, 0x1

    return v5

    .line 1178
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_67
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    .line 1181
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    .line 1187
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1188
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v47

    .line 1189
    .local v47, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1191
    const/4 v5, 0x1

    return v5

    .line 1184
    .end local v7    # "_arg1":I
    .end local v47    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    const/16 v22, 0x0

    .local v22, "_arg0":Landroid/content/Intent;
    goto :goto_2e

    .line 1195
    .end local v22    # "_arg0":Landroid/content/Intent;
    :sswitch_68
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1199
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1201
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1202
    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .line 1203
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    if-eqz v48, :cond_2f

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    const/4 v5, 0x1

    return v5

    .line 1204
    :cond_2f
    const/4 v5, 0x0

    goto :goto_2f

    .line 1209
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v35    # "_arg2":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_69
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1213
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1214
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1215
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1217
    const/4 v5, 0x1

    return v5

    .line 1221
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1225
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1226
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1227
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1229
    const/4 v5, 0x1

    return v5

    .line 1233
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_6b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1236
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v51

    .line 1237
    .restart local v51    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1239
    const/4 v5, 0x1

    return v5

    .line 1243
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":[Ljava/lang/String;
    :sswitch_6c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1246
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v48

    .line 1247
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    if-eqz v48, :cond_30

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    const/4 v5, 0x1

    return v5

    .line 1248
    :cond_30
    const/4 v5, 0x0

    goto :goto_30

    .line 1253
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_6d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v25

    .line 1257
    .local v25, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v31

    .line 1259
    .local v31, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v36

    .line 1261
    .local v36, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v38

    .line 1262
    .local v38, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v31

    move-object/from16 v3, v36

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v48

    .line 1263
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    if-eqz v48, :cond_31

    const/4 v5, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    const/4 v5, 0x1

    return v5

    .line 1264
    :cond_31
    const/4 v5, 0x0

    goto :goto_31

    .line 1269
    .end local v25    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v48    # "_result":Z
    :sswitch_6e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v27

    .line 1273
    .restart local v27    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 1274
    .local v34, "_arg1_length":I
    if-gez v34, :cond_32

    .line 1275
    const/16 v33, 0x0

    .line 1280
    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v39

    .line 1281
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1284
    const/4 v5, 0x1

    return v5

    .line 1278
    .end local v39    # "_result":I
    :cond_32
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v33, v0

    .local v33, "_arg1":[B
    goto :goto_32

    .line 1288
    .end local v27    # "_arg0":[B
    .end local v33    # "_arg1":[B
    .end local v34    # "_arg1_length":I
    :sswitch_6f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v48

    .line 1290
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    if-eqz v48, :cond_33

    const/4 v5, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v5, 0x1

    return v5

    .line 1291
    :cond_33
    const/4 v5, 0x0

    goto :goto_33

    .line 1296
    .end local v48    # "_result":Z
    :sswitch_70
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    const/4 v5, 0x1

    return v5

    .line 1303
    :sswitch_71
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    sget-object v5, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/telephony/RadioAccessFamily;

    .line 1306
    .local v28, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 1307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    const/4 v5, 0x1

    return v5

    .line 1312
    .end local v28    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_72
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1316
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1317
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v39

    .line 1318
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    const/4 v5, 0x1

    return v5

    .line 1324
    .end local v6    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":I
    :sswitch_73
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/16 v26, 0x1

    .line 1327
    .restart local v26    # "_arg0":Z
    :goto_34
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    const/4 v5, 0x1

    return v5

    .line 1326
    .end local v26    # "_arg0":Z
    :cond_34
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Z
    goto :goto_34

    .line 1333
    .end local v26    # "_arg0":Z
    :sswitch_74
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1336
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    move-result v48

    .line 1337
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    if-eqz v48, :cond_35

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    const/4 v5, 0x1

    return v5

    .line 1338
    :cond_35
    const/4 v5, 0x0

    goto :goto_35

    .line 1343
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v48    # "_result":Z
    :sswitch_75
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    move-result v48

    .line 1345
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    if-eqz v48, :cond_36

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    const/4 v5, 0x1

    return v5

    .line 1346
    :cond_36
    const/4 v5, 0x0

    goto :goto_36

    .line 1351
    .end local v48    # "_result":Z
    :sswitch_76
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    move-result v48

    .line 1353
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    if-eqz v48, :cond_37

    const/4 v5, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    const/4 v5, 0x1

    return v5

    .line 1354
    :cond_37
    const/4 v5, 0x0

    goto :goto_37

    .line 1359
    .end local v48    # "_result":Z
    :sswitch_77
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v48

    .line 1361
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    if-eqz v48, :cond_38

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    const/4 v5, 0x1

    return v5

    .line 1362
    :cond_38
    const/4 v5, 0x0

    goto :goto_38

    .line 1367
    .end local v48    # "_result":Z
    :sswitch_78
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v48

    .line 1369
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    if-eqz v48, :cond_39

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    const/4 v5, 0x1

    return v5

    .line 1370
    :cond_39
    const/4 v5, 0x0

    goto :goto_39

    .line 1375
    .end local v48    # "_result":Z
    :sswitch_79
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    move-result v48

    .line 1377
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    if-eqz v48, :cond_3a

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    const/4 v5, 0x1

    return v5

    .line 1378
    :cond_3a
    const/4 v5, 0x0

    goto :goto_3a

    .line 1383
    .end local v48    # "_result":Z
    :sswitch_7a
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    move-result v48

    .line 1385
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    if-eqz v48, :cond_3b

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    const/4 v5, 0x1

    return v5

    .line 1386
    :cond_3b
    const/4 v5, 0x0

    goto :goto_3b

    .line 1391
    .end local v48    # "_result":Z
    :sswitch_7b
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    move-result v48

    .line 1393
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    if-eqz v48, :cond_3c

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    const/4 v5, 0x1

    return v5

    .line 1394
    :cond_3c
    const/4 v5, 0x0

    goto :goto_3c

    .line 1399
    .end local v48    # "_result":Z
    :sswitch_7c
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    move-result v48

    .line 1401
    .restart local v48    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    if-eqz v48, :cond_3d

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    const/4 v5, 0x1

    return v5

    .line 1402
    :cond_3d
    const/4 v5, 0x0

    goto :goto_3d

    .line 1407
    .end local v48    # "_result":Z
    :sswitch_7d
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1410
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1411
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1413
    const/4 v5, 0x1

    return v5

    .line 1417
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_7e
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    .line 1420
    sget-object v5, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telecom/PhoneAccount;

    .line 1425
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v39

    .line 1426
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    const/4 v5, 0x1

    return v5

    .line 1423
    .end local v39    # "_result":I
    :cond_3e
    const/16 v23, 0x0

    .local v23, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_3e

    .line 1432
    .end local v23    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_7f
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1435
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    const/4 v5, 0x1

    return v5

    .line 1441
    .end local v6    # "_arg0":I
    :sswitch_80
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v44

    .line 1443
    .restart local v44    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1445
    const/4 v5, 0x1

    return v5

    .line 1449
    .end local v44    # "_result":Ljava/lang/String;
    :sswitch_81
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    move-result-object v42

    .line 1451
    .local v42, "_result":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    if-eqz v42, :cond_3f

    .line 1453
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    const/4 v5, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/ModemActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1459
    :goto_3f
    const/4 v5, 0x1

    return v5

    .line 1457
    :cond_3f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 1463
    .end local v42    # "_result":Landroid/telephony/ModemActivityInfo;
    :sswitch_82
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v49

    .line 1465
    .restart local v49    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1467
    const/4 v5, 0x1

    return v5

    .line 1471
    .end local v49    # "_result":[B
    :sswitch_83
    const-string/jumbo v5, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1474
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtrUsingSubId(I)[B

    move-result-object v49

    .line 1475
    .restart local v49    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1477
    const/4 v5, 0x1

    return v5

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
