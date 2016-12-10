.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_disable:I = 0x7

.field static final TRANSACTION_disableNdefPush:I = 0xa

.field static final TRANSACTION_dispatch:I = 0x10

.field static final TRANSACTION_enable:I = 0x8

.field static final TRANSACTION_enableNdefPush:I = 0x9

.field static final TRANSACTION_getNfcAccessExtrasInterface:I = 0x4

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcAdapterVendorInterface:I = 0x5

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getSeRouting:I = 0xd

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_isNdefPushEnabled:I = 0xb

.field static final TRANSACTION_setAppCallback:I = 0xf

.field static final TRANSACTION_setForegroundDispatch:I = 0xe

.field static final TRANSACTION_setP2pModes:I = 0x12

.field static final TRANSACTION_setReaderMode:I = 0x11

.field static final TRANSACTION_setSeRouting:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 240
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    .line 45
    :sswitch_0
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v22, 0x1

    return v22

    .line 50
    :sswitch_1
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v19

    .line 52
    .local v19, "_result":Landroid/nfc/INfcTag;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    const/16 v22, 0x1

    return v22

    .line 53
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 58
    .end local v19    # "_result":Landroid/nfc/INfcTag;
    :sswitch_2
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v18

    .line 60
    .local v18, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    const/16 v22, 0x1

    return v22

    .line 61
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 66
    .end local v18    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v17

    .line 70
    .local v17, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    const/16 v22, 0x1

    return v22

    .line 71
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 76
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_4
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->getNfcAccessExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAccessExtras;

    move-result-object v16

    .line 80
    .local v16, "_result":Landroid/nfc/INfcAccessExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/nfc/INfcAccessExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_3
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 82
    const/16 v22, 0x1

    return v22

    .line 81
    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    .line 86
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v16    # "_result":Landroid/nfc/INfcAccessExtras;
    :sswitch_5
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    .line 90
    .local v20, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 92
    const/16 v22, 0x1

    return v22

    .line 96
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v15

    .line 98
    .local v15, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/16 v22, 0x1

    return v22

    .line 104
    .end local v15    # "_result":I
    :sswitch_7
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4

    const/4 v8, 0x1

    .line 107
    .local v8, "_arg0":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v21

    .line 108
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v21, :cond_5

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/16 v22, 0x1

    return v22

    .line 106
    .end local v8    # "_arg0":Z
    .end local v21    # "_result":Z
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_4

    .line 109
    .restart local v21    # "_result":Z
    :cond_5
    const/16 v22, 0x0

    goto :goto_5

    .line 114
    .end local v8    # "_arg0":Z
    .end local v21    # "_result":Z
    :sswitch_8
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v21

    .line 116
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v21, :cond_6

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/16 v22, 0x1

    return v22

    .line 117
    :cond_6
    const/16 v22, 0x0

    goto :goto_6

    .line 122
    .end local v21    # "_result":Z
    :sswitch_9
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v21

    .line 124
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v21, :cond_7

    const/16 v22, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/16 v22, 0x1

    return v22

    .line 125
    :cond_7
    const/16 v22, 0x0

    goto :goto_7

    .line 130
    .end local v21    # "_result":Z
    :sswitch_a
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v21

    .line 132
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v21, :cond_8

    const/16 v22, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/16 v22, 0x1

    return v22

    .line 133
    :cond_8
    const/16 v22, 0x0

    goto :goto_8

    .line 138
    .end local v21    # "_result":Z
    :sswitch_b
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v21

    .line 140
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v21, :cond_9

    const/16 v22, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/16 v22, 0x1

    return v22

    .line 141
    :cond_9
    const/16 v22, 0x0

    goto :goto_9

    .line 146
    .end local v21    # "_result":Z
    :sswitch_c
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->setSeRouting(I)Z

    move-result v21

    .line 150
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v21, :cond_a

    const/16 v22, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/16 v22, 0x1

    return v22

    .line 151
    :cond_a
    const/16 v22, 0x0

    goto :goto_a

    .line 156
    .end local v2    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_d
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getSeRouting()I

    move-result v15

    .line 158
    .restart local v15    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/16 v22, 0x1

    return v22

    .line 164
    .end local v15    # "_result":I
    :sswitch_e
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_b

    .line 167
    sget-object v22, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 173
    :goto_b
    sget-object v22, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/IntentFilter;

    .line 175
    .local v11, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_c

    .line 176
    sget-object v22, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/nfc/TechListParcel;

    .line 181
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v13}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/16 v22, 0x1

    return v22

    .line 170
    .end local v11    # "_arg1":[Landroid/content/IntentFilter;
    :cond_b
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/app/PendingIntent;
    goto :goto_b

    .line 179
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    .restart local v11    # "_arg1":[Landroid/content/IntentFilter;
    :cond_c
    const/4 v13, 0x0

    .local v13, "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_c

    .line 187
    .end local v11    # "_arg1":[Landroid/content/IntentFilter;
    .end local v13    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_f
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v4

    .line 190
    .local v4, "_arg0":Landroid/nfc/IAppCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/16 v22, 0x1

    return v22

    .line 196
    .end local v4    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_10
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_d

    .line 199
    sget-object v22, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/Tag;

    .line 204
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/16 v22, 0x1

    return v22

    .line 202
    :cond_d
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/nfc/Tag;
    goto :goto_d

    .line 210
    .end local v5    # "_arg0":Landroid/nfc/Tag;
    :sswitch_11
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 214
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v10

    .line 216
    .local v10, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 218
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_e

    .line 219
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 224
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v12, v14}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/16 v22, 0x1

    return v22

    .line 222
    :cond_e
    const/4 v14, 0x0

    .local v14, "_arg3":Landroid/os/Bundle;
    goto :goto_e

    .line 230
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v12    # "_arg2":I
    .end local v14    # "_arg3":Landroid/os/Bundle;
    :sswitch_12
    const-string/jumbo v22, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 235
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/16 v22, 0x1

    return v22

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
