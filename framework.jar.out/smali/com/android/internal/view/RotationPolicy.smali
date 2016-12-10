.class public final Lcom/android/internal/view/RotationPolicy;
.super Ljava/lang/Object;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    }
.end annotation


# static fields
.field private static final CURRENT_ROTATION:I = -0x1

.field private static final NATURAL_ROTATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RotationPolicy"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areAllRotationsAllowed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getRotationLockOrientation(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->areAllRotationsAllowed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 76
    .local v1, "size":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 78
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 79
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v3, v4, :cond_0

    .line 80
    const/4 v3, 0x1

    .line 79
    :goto_0
    return v3

    .line 80
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RotationPolicy"

    const-string/jumbo v4, "Unable to get the display size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_1
    return v5
.end method

.method public static isRotationLockToggleVisible(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 93
    const v4, 0x1120039

    .line 92
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 94
    .local v0, "forceSupportRotationLock":Z
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 96
    const-string/jumbo v4, "hide_rotation_lock_toggle_for_accessibility"

    .line 97
    const/4 v5, -0x2

    .line 95
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 95
    goto :goto_0

    :cond_2
    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public static isRotationLocked(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 105
    const-string/jumbo v2, "accelerometer_rotation"

    const/4 v3, -0x2

    .line 104
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRotationSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 58
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "android.hardware.screen.portrait"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v1, "android.hardware.screen.landscape"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    const v2, 0x1120038

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 58
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .prologue
    .line 167
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 166
    return-void
.end method

.method public static registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "accelerometer_rotation"

    .line 176
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 178
    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    .line 176
    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    .line 179
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    iget-object v2, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    .line 179
    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    return-void
.end method

.method public static setRotationLock(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    const-string/jumbo v2, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v3, 0x0

    .line 114
    const/4 v4, -0x2

    .line 112
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 116
    invoke-static {p0}, Lcom/android/internal/view/RotationPolicy;->areAllRotationsAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    .line 117
    .local v0, "rotation":I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    .line 111
    return-void

    .line 116
    .end local v0    # "rotation":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rotation":I
    goto :goto_0
.end method

.method private static setRotationLock(ZI)V
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "rotation"    # I

    .prologue
    .line 138
    new-instance v0, Lcom/android/internal/view/RotationPolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/RotationPolicy$1;-><init>(ZI)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public static setRotationLockForAccessibility(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    const-string/jumbo v3, "hide_rotation_lock_toggle_for_accessibility"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 128
    :goto_0
    const/4 v4, -0x2

    .line 126
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 130
    invoke-static {p1, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V

    .line 125
    return-void

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public static unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 188
    return-void
.end method
