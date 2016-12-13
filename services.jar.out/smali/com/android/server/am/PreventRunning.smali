.class public Lcom/android/server/am/PreventRunning;
.super Ljava/lang/Object;
.source "PreventRunning.java"

# interfaces
.implements Lcom/android/server/am/PreventRunningHook;


# static fields
.field private static APKS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Prevent"

.field public static final VERSION:I = 0x133a200


# instance fields
.field private mPreventRunning:Lcom/android/server/am/PreventRunningHook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/data/app/me.piebridge.prevent-1/base.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/data/app/me.piebridge.prevent-2/base.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/data/app/me.piebridge.prevent-3/base.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/data/app/me.piebridge.prevent-1.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/data/app/me.piebridge.prevent-2.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/data/app/me.piebridge.prevent-3.apk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/PreventRunning;->APKS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v1, Lcom/android/server/am/PreventRunning;->APKS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 37
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/am/PreventRunning;->initPreventRunning(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    :cond_0
    return-void

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initPreventRunning(Ljava/io/File;)Z
    .locals 5

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 47
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/cache"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 48
    const-string v0, "Prevent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading PreventRunning(20161024) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "me.piebridge.prevent.framework.PreventRunning"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreventRunningHook;

    iput-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    .line 50
    const v0, 0x133a200

    invoke-virtual {p0, v0}, Lcom/android/server/am/PreventRunning;->setVersion(I)V

    .line 51
    const-string v0, "native"

    invoke-virtual {p0, v0}, Lcom/android/server/am/PreventRunning;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 52
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "Prevent"

    const-string v2, "cannot find class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    const-string v1, "Prevent"

    const-string v2, "cannot instance class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 57
    :catch_2
    move-exception v0

    .line 58
    const-string v1, "Prevent"

    const-string v2, "cannot access class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 59
    :catch_3
    move-exception v0

    .line 60
    const-string v1, "Prevent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load PreventRunning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public hookBindService(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->hookBindService(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/PreventRunningHook;->hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hookStartService(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->hookStartService(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExcludingStopped(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->isExcludingStopped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/server/am/PreventRunningHook;->match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I

    move-result p1

    .line 150
    :cond_0
    return p1
.end method

.method public onAppDied(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onAppDied(Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onBroadcastIntent(Landroid/content/Intent;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onCleanUpRemovedTask(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onCleanUpRemovedTask(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onDestroyActivity(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onDestroyActivity(Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onLaunchActivity(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onLaunchActivity(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onMoveActivityTaskToBack(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onMoveActivityTaskToBack(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onResumeActivity(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onResumeActivity(Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onStartHomeActivity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onStartHomeActivity(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onUserLeavingActivity(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onUserLeavingActivity(Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->setMethod(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->setSender(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setVersion(I)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->setVersion(I)V

    .line 159
    :cond_0
    return-void
.end method
