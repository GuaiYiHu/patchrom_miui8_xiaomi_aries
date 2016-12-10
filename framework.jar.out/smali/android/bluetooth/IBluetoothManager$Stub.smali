.class public abstract Landroid/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManager"

.field static final TRANSACTION_disable:I = 0x8

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableNoAutoConnect:I = 0x7

.field static final TRANSACTION_getAddress:I = 0xa

.field static final TRANSACTION_getBluetoothGatt:I = 0x9

.field static final TRANSACTION_getName:I = 0xb

.field static final TRANSACTION_isBleAppPresent:I = 0xe

.field static final TRANSACTION_isBleScanAlwaysAvailable:I = 0xc

.field static final TRANSACTION_isEnabled:I = 0x5

.field static final TRANSACTION_registerAdapter:I = 0x1

.field static final TRANSACTION_registerStateChangeCallback:I = 0x3

.field static final TRANSACTION_unregisterAdapter:I = 0x2

.field static final TRANSACTION_unregisterStateChangeCallback:I = 0x4

.field static final TRANSACTION_updateBleAppCount:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 47
    :sswitch_0
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v10, 0x1

    return v10

    .line 52
    :sswitch_1
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    .line 56
    .local v6, "_result":Landroid/bluetooth/IBluetooth;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    :goto_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    const/4 v10, 0x1

    return v10

    .line 57
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v6    # "_result":Landroid/bluetooth/IBluetooth;
    :sswitch_2
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    const/4 v10, 0x1

    return v10

    .line 71
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    :sswitch_3
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v1

    .line 74
    .local v1, "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothManager$Stub;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v10, 0x1

    return v10

    .line 80
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_4
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v10, 0x1

    return v10

    .line 89
    .end local v1    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_5
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isEnabled()Z

    move-result v9

    .line 91
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v10, 0x1

    return v10

    .line 92
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 97
    .end local v9    # "_result":Z
    :sswitch_6
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enable()Z

    move-result v9

    .line 99
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v9, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v10, 0x1

    return v10

    .line 100
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 105
    .end local v9    # "_result":Z
    :sswitch_7
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enableNoAutoConnect()Z

    move-result v9

    .line 107
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v9, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v10, 0x1

    return v10

    .line 108
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 113
    .end local v9    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    .line 116
    .local v3, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->disable(Z)Z

    move-result v9

    .line 117
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v9, :cond_5

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v10, 0x1

    return v10

    .line 115
    .end local v3    # "_arg0":Z
    .end local v9    # "_result":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_4

    .line 118
    .restart local v9    # "_result":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .line 123
    .end local v3    # "_arg0":Z
    .end local v9    # "_result":Z
    :sswitch_9
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v7

    .line 125
    .local v7, "_result":Landroid/bluetooth/IBluetoothGatt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/bluetooth/IBluetoothGatt;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    :goto_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 127
    const/4 v10, 0x1

    return v10

    .line 126
    :cond_6
    const/4 v10, 0x0

    goto :goto_6

    .line 131
    .end local v7    # "_result":Landroid/bluetooth/IBluetoothGatt;
    :sswitch_a
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    const/4 v10, 0x1

    return v10

    .line 139
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getName()Ljava/lang/String;

    move-result-object v8

    .line 141
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    const/4 v10, 0x1

    return v10

    .line 147
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleScanAlwaysAvailable()Z

    move-result v9

    .line 149
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v9, :cond_7

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v10, 0x1

    return v10

    .line 150
    :cond_7
    const/4 v10, 0x0

    goto :goto_7

    .line 155
    .end local v9    # "_result":Z
    :sswitch_d
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 159
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v4, 0x1

    .line 160
    .local v4, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothManager$Stub;->updateBleAppCount(Landroid/os/IBinder;Z)I

    move-result v5

    .line 161
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v10, 0x1

    return v10

    .line 159
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_8

    .line 167
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Z
    :sswitch_e
    const-string/jumbo v10, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleAppPresent()Z

    move-result v9

    .line 169
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v9, :cond_9

    const/4 v10, 0x1

    :goto_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v10, 0x1

    return v10

    .line 170
    :cond_9
    const/4 v10, 0x0

    goto :goto_9

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
