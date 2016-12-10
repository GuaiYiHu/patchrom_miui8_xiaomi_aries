.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 174
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 326
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 327
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 328
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 325
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Lmiui/patchrom/ClassHook;->initServerHook()V

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 309
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 312
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 315
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 316
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 308
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 312
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 304
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 198
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 210
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 230
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 235
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 236
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 245
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 249
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 253
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 257
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 260
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 264
    const/4 v0, -0x2

    .line 263
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 265
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 266
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 269
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 276
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 279
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 280
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 284
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 286
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :catch_0
    move-exception v6

    .line 288
    .local v6, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 342
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 345
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 346
    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 345
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 347
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 348
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 354
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 358
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 361
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 365
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 368
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 371
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 381
    :cond_0
    :goto_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Package Manager"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 383
    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 382
    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 384
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 385
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 387
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 391
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 394
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 398
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 338
    return-void

    .line 375
    :cond_1
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Device encrypted - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 383
    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 409
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 410
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 411
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 410
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 413
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 416
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 404
    return-void
.end method

.method private startOtherServices()V
    .locals 102

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 425
    .local v3, "context":Landroid/content/Context;
    const/16 v30, 0x0

    .line 426
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v46, 0x0

    .line 427
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    const/16 v95, 0x0

    .line 428
    .local v95, "vibrator":Lcom/android/server/VibratorService;
    const/16 v32, 0x0

    .line 429
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const/16 v76, 0x0

    .line 430
    .local v76, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 431
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 432
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v77, 0x0

    .line 433
    .local v77, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v42, 0x0

    .line 434
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v78, 0x0

    .line 435
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v87, 0x0

    .line 436
    .local v87, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v101, 0x0

    .line 437
    .local v101, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v94, 0x0

    .line 438
    .local v94, "usb":Lcom/android/server/usb/UsbService;
    const/16 v85, 0x0

    .line 439
    .local v85, "serial":Lcom/android/server/SerialService;
    const/16 v81, 0x0

    .line 440
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v39, 0x0

    .line 441
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v65, 0x0

    .line 442
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v90, 0x0

    .line 443
    .local v90, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v44, 0x0

    .line 444
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v35, 0x0

    .line 445
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v75, 0x0

    .line 446
    .local v75, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v60, 0x0

    .line 447
    .local v60, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v38, 0x0

    .line 449
    .local v38, "cameraService":Lcom/android/server/camera/CameraService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 450
    .local v55, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 451
    .local v50, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 452
    .local v51, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 453
    .local v56, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 454
    .local v54, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 455
    .local v52, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 456
    .local v53, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    .line 457
    .local v67, "isEmulator":Z
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 460
    .local v49, "disableAtlas":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 463
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 468
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v91, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3d

    .line 470
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v91, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 472
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v61, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v61

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3e

    .line 475
    .local v61, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 477
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 483
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 485
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3f

    move-object/from16 v30, v31

    .line 490
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    const/4 v4, 0x1

    .line 491
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v46

    .line 494
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 497
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v96, Lcom/android/server/VibratorService;

    move-object/from16 v0, v96

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 499
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .local v96, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 501
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v45, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_40

    .line 503
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string/jumbo v4, "consumer_ir"

    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v45

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 507
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 506
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v32

    .line 509
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v100

    .line 511
    .local v100, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v100

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 513
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v66, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_41

    .line 516
    .local v66, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    const/4 v4, 0x1

    move v5, v4

    .line 519
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 517
    move-object/from16 v0, v66

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v101

    .line 520
    .local v101, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v101

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 521
    const-string/jumbo v4, "input"

    move-object/from16 v0, v66

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v101

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 525
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 526
    invoke-virtual/range {v66 .. v66}, Lcom/android/server/input/InputManagerService;->start()V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 534
    if-eqz v67, :cond_29

    .line 535
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_4
    move-object/from16 v60, v61

    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v60, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v90, v91

    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v90, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v95, v96

    .line 552
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    .end local v101    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_5
    const/16 v88, 0x0

    .line 553
    .local v88, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v83, 0x0

    .line 554
    .local v83, "notification":Landroid/app/INotificationManager;
    const/16 v63, 0x0

    .line 555
    .local v63, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v98, 0x0

    .line 556
    .local v98, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v68, 0x0

    .line 557
    .local v68, "location":Lcom/android/server/LocationManagerService;
    const/16 v47, 0x0

    .line 558
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v92, 0x0

    .line 559
    .local v92, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v70, 0x0

    .line 560
    .local v70, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v33, 0x0

    .line 561
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v72, 0x0

    .line 564
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 566
    :try_start_9
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v64, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v64

    move-object/from16 v1, v101

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 568
    .end local v63    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v64, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string/jumbo v4, "input_method"

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3c

    move-object/from16 v63, v64

    .line 574
    .end local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string/jumbo v4, "accessibility"

    .line 576
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 575
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 583
    :cond_0
    :goto_7
    :try_start_c
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 588
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 589
    if-nez v55, :cond_1

    .line 590
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 607
    .end local v76    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 610
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 616
    :goto_a
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 617
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 618
    const v8, 0x1040385

    .line 617
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 619
    const/4 v8, 0x0

    .line 616
    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3b

    .line 623
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    .line 624
    if-nez v54, :cond_3

    .line 626
    :try_start_f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v71, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 628
    .end local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v71, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_10
    const-string/jumbo v4, "lock_settings"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3a

    move-object/from16 v70, v71

    .line 633
    .end local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_c
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 637
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 644
    :cond_3
    if-nez v56, :cond_4

    .line 646
    :try_start_11
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v89, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v89

    move-object/from16 v1, v101

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 648
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v89, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_12
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_39

    move-object/from16 v88, v89

    .line 654
    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_d
    if-nez v54, :cond_5

    .line 656
    :try_start_13
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string/jumbo v4, "clipboard"

    .line 658
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    .line 664
    :cond_5
    :goto_e
    if-nez v52, :cond_6

    .line 666
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 668
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b

    .line 674
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_6
    :goto_f
    if-nez v54, :cond_7

    .line 676
    :try_start_15
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v93, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v93

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_c

    .line 678
    .end local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v93, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_16
    const-string/jumbo v4, "textservices"

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_38

    move-object/from16 v92, v93

    .line 684
    .end local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_10
    if-nez v52, :cond_32

    .line 686
    :try_start_17
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v79, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    .line 688
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v79, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_18
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_37

    move-object/from16 v78, v79

    .line 694
    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_19
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v80, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v80

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    .line 696
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v80, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_36

    move-object/from16 v6, v80

    .line 702
    .end local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 705
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 703
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    .line 707
    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_35

    .line 712
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 715
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    .line 714
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 719
    if-eqz v4, :cond_9

    .line 721
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 725
    :cond_9
    :try_start_1d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v43, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    .line 728
    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1e
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 729
    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 730
    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_34

    move-object/from16 v42, v43

    .line 736
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    :try_start_1f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v87

    .line 739
    .local v87, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 738
    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_11

    .line 745
    .end local v87    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_15
    if-nez v54, :cond_a

    .line 747
    :try_start_20
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string/jumbo v4, "updatelock"

    .line 749
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 748
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    .line 760
    :cond_a
    :goto_16
    if-eqz v76, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_2e

    .line 768
    :cond_b
    :goto_17
    if-eqz v30, :cond_c

    .line 769
    :try_start_21
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_14

    .line 775
    :cond_c
    :goto_18
    if-eqz v46, :cond_d

    .line 776
    :try_start_22
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_15

    .line 781
    :cond_d
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 783
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 782
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v83

    .line 784
    .local v83, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v83

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 788
    if-nez v51, :cond_e

    .line 790
    :try_start_23
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v69, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_16

    .line 792
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .local v69, "location":Lcom/android/server/LocationManagerService;
    :try_start_24
    const-string/jumbo v4, "location"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_33

    move-object/from16 v68, v69

    .line 798
    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_25
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v48, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_17

    .line 800
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_26
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_32

    move-object/from16 v47, v48

    .line 806
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1b
    if-nez v54, :cond_f

    .line 808
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string/jumbo v4, "search"

    .line 810
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 809
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    .line 817
    :cond_f
    :goto_1c
    :try_start_28
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string/jumbo v4, "dropbox"

    .line 819
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 818
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_19

    .line 824
    :goto_1d
    if-nez v54, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 825
    const v5, 0x112004f

    .line 824
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 827
    :try_start_29
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v99, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    .line 829
    .end local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v99, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2a
    const-string/jumbo v4, "wallpaper"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_31

    move-object/from16 v98, v99

    .line 836
    .end local v99    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1e
    :try_start_2b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v36, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    .line 838
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2c
    const-string/jumbo v4, "audio"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_30

    move-object/from16 v35, v36

    .line 843
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1f
    if-nez v54, :cond_11

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 848
    :cond_11
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v65

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 850
    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1c

    .line 856
    :goto_20
    if-nez v54, :cond_15

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 862
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 864
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 863
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 862
    if-eqz v4, :cond_14

    .line 866
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 870
    :cond_14
    :try_start_2e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v86, Lcom/android/server/SerialService;

    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    .line 873
    .end local v85    # "serial":Lcom/android/server/SerialService;
    .local v86, "serial":Lcom/android/server/SerialService;
    :try_start_2f
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_2f

    move-object/from16 v85, v86

    .line 879
    .end local v86    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 883
    if-nez v54, :cond_19

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 888
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 892
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 896
    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 897
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 903
    :cond_19
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    .line 914
    :goto_22
    :try_start_31
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string/jumbo v4, "samplingprofiler"

    .line 916
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 915
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1f

    .line 921
    :goto_23
    if-nez v52, :cond_1a

    if-eqz v53, :cond_2f

    .line 931
    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_24
    :try_start_32
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v40, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_21

    .line 933
    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_33
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_2e

    move-object/from16 v39, v40

    .line 938
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_25
    if-nez v52, :cond_1b

    .line 940
    :try_start_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v37, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_22

    .line 947
    :cond_1b
    :goto_26
    if-nez v54, :cond_1c

    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 952
    :cond_1c
    if-nez v54, :cond_1d

    if-eqz v49, :cond_30

    .line 962
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_27
    if-nez v54, :cond_1e

    .line 963
    const-string/jumbo v4, "graphicsstats"

    .line 964
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 963
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 967
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 971
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 975
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 979
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 983
    :cond_21
    if-nez v54, :cond_22

    .line 985
    :try_start_35
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v73, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_24

    .line 987
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v73, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_36
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_2c

    move-object/from16 v72, v73

    .line 992
    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 997
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_25

    .line 1005
    :cond_22
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1008
    .end local v83    # "notification":Landroid/app/INotificationManager;
    :goto_2a
    if-nez v54, :cond_23

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1013
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1014
    const-string/jumbo v8, "service.adb.tcp.port"

    const-string/jumbo v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1013
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1018
    const-string/jumbo v5, "adb_port"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1019
    new-instance v8, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/4 v9, 0x0

    .line 1017
    invoke-virtual {v4, v5, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1023
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v84

    .line 1024
    .local v84, "safeMode":Z
    if-eqz v84, :cond_31

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1027
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1034
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v75

    .end local v75    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v75, Lcom/android/server/MmsServiceBroker;

    .line 1039
    .local v75, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_38
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_26

    .line 1044
    :goto_2c
    if-eqz v70, :cond_24

    .line 1046
    :try_start_39
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_27

    .line 1053
    :cond_24
    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1058
    :try_start_3a
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_28

    .line 1063
    :goto_2e
    if-eqz v84, :cond_25

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1070
    :cond_25
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v41

    .line 1071
    .local v41, "config":Landroid/content/res/Configuration;
    new-instance v74, Landroid/util/DisplayMetrics;

    invoke-direct/range {v74 .. v74}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1072
    .local v74, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/view/WindowManager;

    .line 1073
    .local v97, "w":Landroid/view/WindowManager;
    invoke-interface/range {v97 .. v97}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1074
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v41

    move-object/from16 v1, v74

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1078
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_29

    .line 1084
    :goto_2f
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_2a

    .line 1091
    :goto_30
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v84

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_2b

    .line 1097
    :goto_31
    move-object v12, v7

    .line 1098
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1099
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1100
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v42

    .line 1101
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v78

    .line 1102
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v98

    .line 1103
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v63

    .line 1104
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v68

    .line 1105
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v47

    .line 1106
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v81

    .line 1107
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v39

    .line 1108
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v92

    .line 1109
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v88

    .line 1110
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v33

    .line 1111
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v65

    .line 1112
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v90

    .line 1113
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v72

    .line 1114
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v35

    .line 1115
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v75

    .line 1122
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 423
    return-void

    .line 486
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v74    # "metrics":Landroid/util/DisplayMetrics;
    .end local v84    # "safeMode":Z
    .end local v97    # "w":Landroid/view/WindowManager;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v75, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v76    # "mountService":Landroid/os/storage/IMountService;
    .restart local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v85    # "serial":Lcom/android/server/SerialService;
    .local v87, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "vibrator":Lcom/android/server/VibratorService;
    .local v101, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v59

    .line 487
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v59, "e":Ljava/lang/Throwable;
    :goto_32
    :try_start_3e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Account Manager"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_3e} :catch_1

    goto/16 :goto_0

    .line 547
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v58

    .local v58, "e":Ljava/lang/RuntimeException;
    move-object/from16 v60, v61

    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v90, v91

    .line 548
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .end local v101    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_33
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v58

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 492
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .restart local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v46    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v101    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_26
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 518
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "watchdog":Lcom/android/server/Watchdog;
    :cond_27
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_2

    .line 519
    :cond_28
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 536
    .local v101, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_29
    :try_start_3f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 537
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 547
    .end local v101    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v60, v61

    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v90, v91

    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v65, v66

    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v95, v96

    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .local v95, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_33

    .line 538
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v101    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2a
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 539
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 538
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 540
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 541
    :cond_2b
    if-eqz v50, :cond_2c

    .line 542
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 544
    :cond_2c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_2

    goto/16 :goto_4

    .line 569
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "watchdog":Lcom/android/server/Watchdog;
    .end local v101    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v68    # "location":Lcom/android/server/LocationManagerService;
    .restart local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v83, "notification":Landroid/app/INotificationManager;
    .restart local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v59

    .line 570
    .end local v63    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 577
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v59

    .line 578
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 584
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v59

    .line 585
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 596
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_2d
    :try_start_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 598
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 597
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_6

    move-result-object v76

    .local v76, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_9

    .line 599
    .local v76, "mountService":Landroid/os/storage/IMountService;
    :catch_6
    move-exception v59

    .line 600
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 611
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v76    # "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v59

    .line 612
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 629
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v59

    .line 630
    .end local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 649
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v59

    .line 650
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 659
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v59

    .line 660
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 669
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v59

    .line 670
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 679
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v59

    .line 680
    .end local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 689
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v59

    .line 690
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 697
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v59

    .line 698
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 708
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v77

    .line 709
    .end local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_3a
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 731
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v59

    .line 732
    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 740
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v87    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_11
    move-exception v59

    .line 741
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 750
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v59

    .line 751
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 762
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_2e
    :try_start_41
    invoke-interface/range {v76 .. v76}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_13

    goto/16 :goto_17

    .line 763
    :catch_13
    move-exception v62

    .local v62, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_17

    .line 770
    .end local v62    # "ignored":Landroid/os/RemoteException;
    :catch_14
    move-exception v59

    .line 771
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 777
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v59

    .line 778
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 793
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v83, "notification":Landroid/app/INotificationManager;
    :catch_16
    move-exception v59

    .line 794
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 801
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v59

    .line 802
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 811
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v59

    .line 812
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 820
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v59

    .line 821
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 830
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v59

    .line 831
    .end local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 839
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v59

    .line 840
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 852
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v59

    .line 853
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 874
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v59

    .line 875
    .end local v85    # "serial":Lcom/android/server/SerialService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 905
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v59

    .line 906
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 917
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v59

    .line 918
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 923
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_2f
    :try_start_42
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v82, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_20

    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v82, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v81, v82

    .end local v82    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_24

    .line 925
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_20
    move-exception v59

    .line 926
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 934
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_21
    move-exception v59

    .line 935
    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 942
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v59

    .line 943
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 954
    .end local v59    # "e":Ljava/lang/Throwable;
    :cond_30
    :try_start_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v34, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_23

    .line 956
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_44
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2d

    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_27

    .line 957
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_23
    move-exception v59

    .line 958
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 988
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v59

    .line 989
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 999
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v59

    .line 1000
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1030
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v83    # "notification":Landroid/app/INotificationManager;
    .restart local v84    # "safeMode":Z
    :cond_31
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2b

    .line 1040
    .local v75, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_26
    move-exception v59

    .line 1041
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1047
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v59

    .line 1048
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1059
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v59

    .line 1060
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1079
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v41    # "config":Landroid/content/res/Configuration;
    .restart local v74    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v97    # "w":Landroid/view/WindowManager;
    :catch_29
    move-exception v59

    .line 1080
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1085
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v59

    .line 1086
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1092
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v59

    .line 1093
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 988
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v74    # "metrics":Landroid/util/DisplayMetrics;
    .end local v84    # "safeMode":Z
    .end local v97    # "w":Landroid/view/WindowManager;
    .restart local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v75, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v83    # "notification":Landroid/app/INotificationManager;
    :catch_2c
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v72, v73

    .end local v73    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_43

    .line 957
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2d
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_42

    .line 934
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_2e
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v39, v40

    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_41

    .line 874
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86    # "serial":Lcom/android/server/SerialService;
    :catch_2f
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v85, v86

    .end local v86    # "serial":Lcom/android/server/SerialService;
    .local v85, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_40

    .line 839
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v85, "serial":Lcom/android/server/SerialService;
    :catch_30
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_3f

    .line 830
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v99    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_31
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v98, v99

    .end local v99    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v98, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_3e

    .line 801
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v98, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_32
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v47, v48

    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3d

    .line 793
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "location":Lcom/android/server/LocationManagerService;
    :catch_33
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v68, v69

    .end local v69    # "location":Lcom/android/server/LocationManagerService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3c

    .line 731
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    .local v83, "notification":Landroid/app/INotificationManager;
    .restart local v87    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_34
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v42, v43

    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3b

    .line 708
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_35
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3a

    .line 697
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v77    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_36
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v80

    .end local v80    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_39

    .line 689
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_37
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_38

    .line 679
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_38
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v92, v93

    .end local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v92, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_37

    .line 649
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v92, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_39
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v88, v89

    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v88, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_36

    .line 629
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v88, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3a
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v70, v71

    .end local v71    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v70, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_35

    .line 620
    .end local v59    # "e":Ljava/lang/Throwable;
    .local v70, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3b
    move-exception v57

    .local v57, "e":Landroid/os/RemoteException;
    goto/16 :goto_b

    .line 569
    .end local v57    # "e":Landroid/os/RemoteException;
    .restart local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "mountService":Landroid/os/storage/IMountService;
    :catch_3c
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v63, v64

    .end local v64    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v63, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_34

    .line 547
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v63    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .end local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v83    # "notification":Landroid/app/INotificationManager;
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .local v60, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v90, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "vibrator":Lcom/android/server/VibratorService;
    .local v101, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_3d
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_33

    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3e
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v90, v91

    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v90, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_33

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3f
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v60, v61

    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v60, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v90, v91

    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_33

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    :catch_40
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v60, v61

    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v90, v91

    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v95, v96

    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .local v95, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_33

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    :catch_41
    move-exception v58

    .restart local v58    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v60, v61

    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v90, v91

    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v95, v96

    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v95    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_33

    .line 486
    .end local v58    # "e":Ljava/lang/RuntimeException;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "vibrator":Lcom/android/server/VibratorService;
    :catch_42
    move-exception v59

    .restart local v59    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_32

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v61    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v76    # "mountService":Landroid/os/storage/IMountService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .end local v101    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v68    # "location":Lcom/android/server/LocationManagerService;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "notification":Landroid/app/INotificationManager;
    .restart local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_32
    move-object/from16 v2, v77

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_15

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_33
    move-object/from16 v2, v77

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2a
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1251
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1252
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1251
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1254
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1249
    return-void
.end method
