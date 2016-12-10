.class public final Landroid/nfc/cardemulation/CardEmulation;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"

.field public static final CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "component"

.field public static final SELECTION_MODE_ALWAYS_ASK:I = 0x1

.field public static final SELECTION_MODE_ASK_IF_CONFLICT:I = 0x2

.field public static final SELECTION_MODE_PREFER_DEFAULT:I = 0x0

.field static final TAG:Ljava/lang/String; = "CardEmulation"

.field static sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/CardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z

.field static sService:Landroid/nfc/INfcCardEmulation;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcCardEmulation;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 136
    sput-object p2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 134
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 8
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    const-class v6, Landroid/nfc/cardemulation/CardEmulation;

    monitor-enter v6

    .line 146
    if-nez p0, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NfcAdapter is null"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 149
    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "NfcAdapter context is null."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 152
    :cond_1
    sget-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    if-nez v5, :cond_4

    .line 153
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 154
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_2

    .line 155
    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "Cannot get PackageManager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_2
    :try_start_2
    const-string/jumbo v5, "android.hardware.nfc.hce"

    invoke-interface {v3, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 160
    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "This device does not support card emulation"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "PackageManager query failed."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 167
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    .line 169
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/CardEmulation;

    .line 170
    .local v2, "manager":Landroid/nfc/cardemulation/CardEmulation;
    if-nez v2, :cond_6

    .line 172
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v4

    .line 173
    .local v4, "service":Landroid/nfc/INfcCardEmulation;
    if-nez v4, :cond_5

    .line 174
    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "This device does not implement the INfcCardEmulation interface."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 177
    :cond_5
    new-instance v2, Landroid/nfc/cardemulation/CardEmulation;

    .end local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    invoke-direct {v2, v0, v4}, Landroid/nfc/cardemulation/CardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V

    .line 178
    .restart local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "service":Landroid/nfc/INfcCardEmulation;
    :cond_6
    monitor-exit v6

    .line 180
    return-object v2
.end method

.method public static isValidAid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 384
    if-nez p0, :cond_0

    .line 385
    return v3

    .line 388
    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 389
    const-string/jumbo v0, "CardEmulation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid AID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v3

    .line 394
    :cond_1
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 395
    const-string/jumbo v0, "CardEmulation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid AID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v3

    .line 400
    :cond_2
    const-string/jumbo v0, "[0-9A-Fa-f]{10,32}\\*?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    const-string/jumbo v0, "CardEmulation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid AID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v3

    .line 405
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public categoryAllowsForegroundPreference(Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string/jumbo v2, "payment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "preferForeground":Z
    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 269
    const-string/jumbo v3, "nfc_payment_foreground"

    .line 268
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 272
    :goto_0
    return v1

    .line 268
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 275
    .end local v1    # "preferForeground":Z
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 270
    .restart local v1    # "preferForeground":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getSelectionModeForCategory(Ljava/lang/String;)I
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string/jumbo v1, "payment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 294
    const-string/jumbo v2, "nfc_payment_default_component"

    .line 293
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "defaultComponent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 296
    const/4 v1, 0x0

    return v1

    .line 298
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 301
    .end local v0    # "defaultComponent":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method public getServices(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 355
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 356
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 359
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    .line 360
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-object v4

    .line 364
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 365
    :catch_1
    move-exception v1

    .line 366
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-object v4
.end method

.method public isDefaultServiceForAid(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 235
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 236
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 239
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    .line 240
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v4

    .line 244
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 245
    :catch_1
    move-exception v1

    .line 246
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v4
.end method

.method public isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 204
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 208
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    .line 209
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v4

    .line 213
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 215
    :catch_1
    move-exception v1

    .line 216
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v4
.end method

.method recoverService()V
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 410
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 408
    return-void
.end method

.method public setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 333
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 337
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    .line 338
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v4

    .line 342
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 343
    :catch_1
    move-exception v1

    .line 344
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v4
.end method

.method public setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 310
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 314
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    .line 315
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return v4

    .line 319
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 321
    :catch_1
    move-exception v1

    .line 322
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v4
.end method
