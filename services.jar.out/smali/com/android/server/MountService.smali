.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$Lifecycle;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$Callbacks;,
        Lcom/android/server/MountService$MountServiceInternalImpl;,
        Lcom/android/server/MountService$1;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FORCE_ADOPTABLE:Ljava/lang/String; = "forceAdoptable"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTD_TAG:Ljava/lang/String; = "CryptdConnector"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/MountService;


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private final mCallbacks:Lcom/android/server/MountService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceAdoptable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private final mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private mStartedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSystemReady:Z

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/MountService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/server/MountService;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/MountService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/MountService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/MountService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/MountService;->systemReady()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/MountService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/MountService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/MountService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/MountService;->shouldBenchmark()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/MountService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/MountService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/MountService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/MountService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/MountService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->onStartUser(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/MountService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    .line 408
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "pattern"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "pin"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 407
    sput-object v0, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    .line 533
    new-instance v0, Landroid/content/ComponentName;

    .line 534
    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    .line 533
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1359
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 282
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    .line 285
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    .line 292
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    .line 296
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    .line 422
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 423
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 457
    new-instance v0, Lcom/android/server/MountService$MountServiceInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$MountServiceInternalImpl;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    .line 536
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 679
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1360
    sput-object p0, Lcom/android/server/MountService;->sSelf:Lcom/android/server/MountService;

    .line 1362
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1363
    new-instance v0, Lcom/android/server/MountService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    .line 1366
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1368
    new-instance v10, Landroid/os/HandlerThread;

    const-string/jumbo v0, "MountService"

    invoke-direct {v10, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v10, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 1370
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1373
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1376
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    .line 1377
    .local v8, "dataDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string/jumbo v0, "system"

    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1378
    .local v11, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "last-fstrim"

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    .line 1379
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :goto_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 1392
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1391
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 1394
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/MountService;->readSettingsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 1398
    const-class v0, Landroid/os/storage/MountServiceInternal;

    iget-object v1, p0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1406
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "vold"

    const-string/jumbo v4, "VoldConnector"

    const/16 v3, 0x1f4

    const/16 v5, 0x19

    .line 1407
    const/4 v6, 0x0

    move-object v1, p0

    .line 1406
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1408
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1410
    new-instance v12, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "VoldConnector"

    invoke-direct {v12, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1411
    .local v12, "thread":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 1414
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptd"

    .line 1415
    const-string/jumbo v4, "CryptdConnector"

    const/16 v3, 0x1f4

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    .line 1414
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1416
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1418
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "CryptdConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1419
    .local v7, "crypt_thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1421
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1422
    .local v13, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1423
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1426
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolume()V

    .line 1359
    return-void

    .line 1384
    .end local v7    # "crypt_thread":Ljava/lang/Thread;
    .end local v12    # "thread":Ljava/lang/Thread;
    .end local v13    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v9

    .line 1385
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to create fstrim record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1388
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    goto/16 :goto_0

    .line 1394
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addInternalVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 778
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    .line 779
    const/4 v2, 0x1

    .line 778
    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 780
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 781
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 782
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2817
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2818
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2820
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 2821
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2822
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2832
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2834
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2849
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2816
    return-void

    .line 2824
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "o$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MountService$ObbState;

    .line 2825
    .local v2, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2826
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2835
    .end local v2    # "o":Lcom/android/server/MountService$ObbState;
    .end local v3    # "o$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 2840
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2841
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2842
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    :cond_3
    throw v1
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3280
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3281
    return-object p0

    .line 3284
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3287
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3290
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3292
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3295
    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3296
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3304
    :goto_0
    const-string/jumbo v2, "Android/obb"

    .line 3305
    .local v2, "obbPath":Ljava/lang/String;
    const-string/jumbo v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3306
    const-string/jumbo v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3308
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3309
    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 3297
    .end local v2    # "obbPath":Ljava/lang/String;
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3298
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3300
    :cond_2
    return-object p0

    .line 3314
    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private copyLocaleFromMountService()V
    .locals 7

    .prologue
    .line 911
    :try_start_0
    const-string/jumbo v4, "SystemLocale"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 915
    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 916
    return-void

    .line 912
    .end local v3    # "systemLocale":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 919
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "systemLocale":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 921
    .local v2, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 922
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 924
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 930
    :goto_0
    const-string/jumbo v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string/jumbo v4, "persist.sys.locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-void

    .line 925
    :catch_1
    move-exception v1

    .line 926
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MountService"

    const-string/jumbo v5, "Error setting system locale from mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private encryptStorageExtended(ILjava/lang/String;Z)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "wipe"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2405
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq p1, v4, :cond_0

    .line 2406
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2409
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CRYPT_KEEPER"

    .line 2410
    const-string/jumbo v3, "no permission to access the crypt keeper"

    .line 2409
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2419
    if-ne p1, v4, :cond_2

    .line 2420
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "enablecrypto"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p3, :cond_1

    const-string/jumbo v1, "wipe"

    :goto_0
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 2421
    sget-object v1, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 2420
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2431
    :goto_1
    return v6

    .line 2420
    :cond_1
    const-string/jumbo v1, "inplace"

    goto :goto_0

    .line 2423
    :cond_2
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "enablecrypto"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    if-eqz p3, :cond_3

    const-string/jumbo v1, "wipe"

    :goto_2
    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 2424
    sget-object v1, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    new-instance v1, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v1, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v1, v4, v5

    .line 2423
    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2426
    :catch_0
    move-exception v0

    .line 2428
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    return v1

    .line 2423
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_3
    :try_start_1
    const-string/jumbo v1, "inplace"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private enforceAdminUser()V
    .locals 7

    .prologue
    .line 1340
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1341
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1343
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1345
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1347
    .local v1, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    if-nez v1, :cond_0

    .line 1350
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1346
    .end local v1    # "isAdmin":Z
    :catchall_0
    move-exception v5

    .line 1347
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1346
    throw v5

    .line 1339
    .restart local v1    # "isAdmin":Z
    :cond_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 3
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 396
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_0

    .line 397
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 398
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 400
    return-object v0

    .line 394
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 337
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    .line 342
    return-object v4

    .line 334
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 360
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const-string/jumbo v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 362
    :cond_0
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    .line 365
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_0

    monitor-exit v2

    .line 315
    return-object v0

    :cond_0
    monitor-exit v2

    .line 318
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No volume found for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 325
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No volume found for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private forgetPartition(Ljava/lang/String;)V
    .locals 6
    .param p1, "partGuid"    # Ljava/lang/String;

    .prologue
    .line 1813
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "forget_partition"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    :goto_0
    return-void

    .line 1814
    :catch_0
    move-exception v0

    .line 1815
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to forget key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1440
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 1443
    :cond_0
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private handleDaemonConnected()V
    .locals 4

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 889
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 890
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 892
    return-void

    .line 881
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 897
    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    invoke-direct {p0}, Lcom/android/server/MountService;->copyLocaleFromMountService()V

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 905
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 880
    return-void
.end method

.method private handleSystemReady()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 750
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 744
    return-void

    .line 745
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v1, 0x0

    .line 1205
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1211
    return v1

    .line 1214
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1223
    :pswitch_1
    return v1

    .line 1226
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1214
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .locals 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v3, 0x0

    .line 1330
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1332
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_physical_media"

    .line 1333
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1332
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1

    .line 1335
    .end local v0    # "userManager":Landroid/os/UserManager;
    :cond_1
    return v3
.end method

.method private isReady()Z
    .locals 5

    .prologue
    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    return v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2245
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_0

    .line 2246
    return v1

    .line 2249
    :cond_0
    if-nez p1, :cond_1

    .line 2250
    return v2

    .line 2253
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2260
    .local v0, "packageUid":I
    if-ne p2, v0, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private killMediaProvider()V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 761
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "media"

    const/4 v7, 0x0

    .line 762
    const/4 v8, 0x0

    .line 761
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 763
    .local v2, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_0

    .line 764
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 766
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 767
    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const-string/jumbo v7, "vold reset"

    .line 766
    invoke-interface {v0, v3, v6, v7}, Landroid/app/IActivityManager;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    return-void

    .line 771
    .end local v2    # "provider":Landroid/content/pm/ProviderInfo;
    :catchall_0
    move-exception v3

    .line 772
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    throw v3

    .line 768
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v2    # "provider":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onCleanupUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 843
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCleanupUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "user_stopped"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 851
    :try_start_1
    iget-object v1, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService;->mStartedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 842
    return-void

    .line 850
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 847
    :catch_0
    move-exception v0

    .local v0, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto :goto_0
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .locals 7
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 1136
    const/4 v4, 0x0

    .line 1137
    .local v4, "volumeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1138
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1139
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1140
    add-int/lit8 v4, v4, 0x1

    .line 1137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1146
    const-string/jumbo v5, "android.os.storage.extra.DISK_ID"

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    const-string/jumbo v5, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1150
    iget-object v5, p0, Lcom/android/server/MountService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1151
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_2

    .line 1152
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1155
    :cond_2
    iput v4, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1156
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v5, p1, v4}, Lcom/android/server/MountService$Callbacks;->-wrap1(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1135
    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 35
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 953
    packed-switch p1, :pswitch_data_0

    .line 1128
    :pswitch_0
    const-string/jumbo v32, "MountService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Unhandled vold event "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    :goto_0
    const/16 v32, 0x1

    return v32

    .line 955
    :pswitch_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 956
    const/16 v32, 0x1

    aget-object v18, p3, v32

    .line 957
    .local v18, "id":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 958
    .local v16, "flags":I
    const-string/jumbo v32, "persist.fw.force_adoptable"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_1

    .line 959
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    move/from16 v32, v0

    .line 958
    if-eqz v32, :cond_2

    .line 960
    :cond_1
    or-int/lit8 v16, v16, 0x1

    .line 962
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    new-instance v33, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 966
    .end local v16    # "flags":I
    .end local v18    # "id":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 968
    .local v5, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    .line 969
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/os/storage/DiskInfo;->size:J

    goto :goto_0

    .line 974
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 975
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x2

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    .line 978
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 977
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 980
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    goto/16 :goto_0

    .line 985
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    .end local v17    # "i":I
    :pswitch_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 987
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    .line 988
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/MountService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_0

    .line 993
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 995
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    .line 996
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1001
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1003
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v5, :cond_0

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/android/server/MountService$Callbacks;->-wrap0(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_0

    .line 1010
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_7
    const/16 v32, 0x1

    aget-object v18, p3, v32

    .line 1011
    .restart local v18    # "id":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1012
    .local v30, "type":I
    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1013
    .local v12, "diskId":Ljava/lang/String;
    const/16 v32, 0x4

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1015
    .local v22, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 1016
    .restart local v5    # "disk":Landroid/os/storage/DiskInfo;
    new-instance v31, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move/from16 v2, v30

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1017
    .local v31, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_0

    .line 1022
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    .end local v12    # "diskId":Ljava/lang/String;
    .end local v18    # "id":Ljava/lang/String;
    .end local v22    # "partGuid":Ljava/lang/String;
    .end local v30    # "type":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1024
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    .line 1025
    move-object/from16 v0, v31

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    move/from16 v21, v0

    .line 1026
    .local v21, "oldState":I
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1027
    .local v20, "newState":I
    move/from16 v0, v20

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1028
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MountService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    goto/16 :goto_0

    .line 1033
    .end local v20    # "newState":I
    .end local v21    # "oldState":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_9
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1035
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    .line 1036
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1041
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1043
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    .line 1044
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto/16 :goto_0

    .line 1049
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1050
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x2

    .restart local v17    # "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    .line 1053
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1052
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1055
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 1061
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v17    # "i":I
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1063
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    .line 1064
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    goto/16 :goto_0

    .line 1069
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_d
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    .line 1071
    .restart local v31    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v31, :cond_0

    .line 1072
    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1077
    .end local v31    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_e
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1083
    :pswitch_f
    const/16 v32, 0x1

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 1084
    .local v25, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    goto/16 :goto_0

    .line 1088
    .end local v25    # "status":I
    :pswitch_10
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1089
    const/16 v32, 0x1

    aget-object v23, p3, v32

    .line 1090
    .local v23, "path":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v19, p3, v32

    .line 1091
    .local v19, "ident":Ljava/lang/String;
    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1092
    .local v8, "create":J
    const/16 v32, 0x4

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1093
    .local v14, "drop":J
    const/16 v32, 0x5

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 1094
    .local v26, "run":J
    const/16 v32, 0x6

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1096
    .local v10, "destroy":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Landroid/os/DropBoxManager;

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/DropBoxManager;

    .line 1097
    .local v13, "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v32, "storage_benchmark"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1098
    const-string/jumbo v34, " "

    .line 1097
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1098
    const-string/jumbo v34, " "

    .line 1097
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1098
    const-string/jumbo v34, " "

    .line 1097
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1098
    const-string/jumbo v34, " "

    .line 1097
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v24

    .line 1101
    .local v24, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_0

    .line 1102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1103
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_0

    .line 1109
    .end local v8    # "create":J
    .end local v10    # "destroy":J
    .end local v13    # "dropBox":Landroid/os/DropBoxManager;
    .end local v14    # "drop":J
    .end local v19    # "ident":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    .end local v24    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v26    # "run":J
    :pswitch_11
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 1110
    const/16 v32, 0x1

    aget-object v23, p3, v32

    .line 1111
    .restart local v23    # "path":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1112
    .local v6, "bytes":J
    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 1114
    .local v28, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Landroid/os/DropBoxManager;

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/DropBoxManager;

    .line 1115
    .restart local v13    # "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v32, "storage_trim"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1116
    const-string/jumbo v34, " "

    .line 1115
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 1116
    const-string/jumbo v34, " "

    .line 1115
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v24

    .line 1119
    .restart local v24    # "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v24, :cond_0

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1121
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_0

    .line 953
    :pswitch_data_0
    .packed-switch 0x280
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private onMoveStatusLocked(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    .line 1294
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_0

    .line 1295
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "Odd, status but no move requested"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void

    .line 1301
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    invoke-interface {v1, v4, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 1308
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " copy phase finshed; persisting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1311
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    .line 1314
    :cond_1
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1315
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1318
    iput-object v5, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1293
    :cond_2
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private onStartUser(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 815
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStartUser "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "user_started"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 829
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 830
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p1, v7}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 832
    .local v3, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    invoke-virtual {v5, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 834
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "envState":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0, v0}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .end local v0    # "envState":Ljava/lang/String;
    .end local v3    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 838
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/MountService;->mStartedUsers:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 814
    return-void

    .line 827
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 822
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    .local v2, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto :goto_0
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .locals 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 1160
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1161
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 1162
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1164
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1165
    const-string/jumbo v2, "private"

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1164
    if-eqz v2, :cond_1

    .line 1166
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1168
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1169
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1159
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_0
    :goto_0
    return-void

    .line 1171
    .restart local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_1
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1174
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1175
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1178
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_2
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_5

    .line 1180
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1181
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    .line 1180
    if-eqz v2, :cond_3

    .line 1182
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1184
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1189
    :cond_3
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1190
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1193
    :cond_4
    iput v6, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1194
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1196
    :cond_5
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1197
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1200
    :cond_6
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping automatic mounting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .locals 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 1232
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1252
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v6, p1, p2, p3}, Lcom/android/server/MountService$Callbacks;->-wrap5(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1254
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1255
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    const-string/jumbo v6, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1258
    const-string/jumbo v6, "android.os.storage.extra.FS_UUID"

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    const/high16 v6, 0x4000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1260
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1263
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "oldStateEnv":Ljava/lang/String;
    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "newStateEnv":Ljava/lang/String;
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1270
    iget-object v7, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    const/4 v6, 0x0

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_6

    aget v4, v7, v6

    .line 1271
    .local v4, "userId":I
    invoke-virtual {p1, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1272
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v4, v10}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 1273
    .local v5, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1275
    iget-object v9, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2, v1}, Lcom/android/server/MountService$Callbacks;->-wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    .end local v5    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1233
    .end local v1    # "newStateEnv":Ljava/lang/String;
    .end local v2    # "oldStateEnv":Ljava/lang/String;
    .end local v4    # "userId":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 1234
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v3, :cond_5

    .line 1235
    new-instance v3, Landroid/os/storage/VolumeRecord;

    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1236
    .restart local v3    # "rec":Landroid/os/storage/VolumeRecord;
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1238
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1239
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1241
    :cond_4
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v3, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_0

    .line 1245
    :cond_5
    iget-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1246
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1247
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    goto/16 :goto_0

    .line 1281
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    .restart local v1    # "newStateEnv":Ljava/lang/String;
    .restart local v2    # "oldStateEnv":Ljava/lang/String;
    :cond_6
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v6, :cond_7

    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 1288
    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1289
    iget-object v8, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const/4 v9, 0x5

    .line 1288
    invoke-virtual {v7, v9, v8}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1229
    :cond_7
    return-void
.end method

.method private readSettingsLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1448
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 1449
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1450
    iput-boolean v12, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    .line 1452
    const/4 v3, 0x0

    .line 1454
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 1455
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1456
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1459
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v13, :cond_6

    .line 1460
    if-ne v8, v14, :cond_0

    .line 1461
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1462
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v11, "volumes"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1463
    const-string/jumbo v11, "version"

    const/4 v12, 0x1

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1465
    .local v10, "version":I
    const-string/jumbo v11, "ro.vold.primary_physical"

    const/4 v12, 0x0

    .line 1464
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1466
    .local v5, "primaryPhysical":Z
    const/4 v11, 0x3

    if-ge v10, v11, :cond_3

    .line 1467
    if-lt v10, v14, :cond_1

    if-eqz v5, :cond_4

    :cond_1
    const/4 v9, 0x0

    .line 1468
    .local v9, "validAttr":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 1470
    const-string/jumbo v11, "primaryStorageUuid"

    .line 1469
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1472
    :cond_2
    const-string/jumbo v11, "forceAdoptable"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/MountService;->mForceAdoptable:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1480
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "primaryPhysical":Z
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "validAttr":Z
    .end local v10    # "version":I
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1447
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 1466
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "primaryPhysical":Z
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    .restart local v10    # "version":I
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "validAttr":Z
    goto :goto_1

    .line 1467
    .end local v9    # "validAttr":Z
    :cond_4
    const/4 v9, 0x1

    .restart local v9    # "validAttr":Z
    goto :goto_1

    .line 1474
    .end local v5    # "primaryPhysical":Z
    .end local v9    # "validAttr":Z
    .end local v10    # "version":I
    :cond_5
    :try_start_1
    const-string/jumbo v11, "volume"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1475
    invoke-static {v4}, Lcom/android/server/MountService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v6

    .line 1476
    .local v6, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v11, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v12, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1482
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    .line 1483
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v11, "MountService"

    const-string/jumbo v12, "Failed reading metadata"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1487
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 1484
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_2
    move-exception v2

    .line 1485
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string/jumbo v11, "MountService"

    const-string/jumbo v12, "Failed reading metadata"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1487
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 1486
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v11

    .line 1487
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1486
    throw v11
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .locals 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1520
    const-string/jumbo v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 1521
    .local v2, "type":I
    const-string/jumbo v3, "fsUuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "fsUuid":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/VolumeRecord;

    invoke-direct {v1, v2, v0}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1523
    .local v1, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1524
    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1525
    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1526
    const-string/jumbo v3, "createdMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1527
    const-string/jumbo v3, "lastTrimMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1528
    const-string/jumbo v3, "lastBenchMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1529
    return-object v1
.end method

.method private remountUidExternalStorage(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1822
    const-string/jumbo v1, "none"

    .line 1823
    .local v1, "modeName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1838
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "remount_uid"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    :goto_1
    return-void

    .line 1825
    :pswitch_0
    const-string/jumbo v1, "default"

    goto :goto_0

    .line 1829
    :pswitch_1
    const-string/jumbo v1, "read"

    goto :goto_0

    .line 1833
    :pswitch_2
    const-string/jumbo v1, "write"

    goto :goto_0

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remount UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1823
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 2853
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2854
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2855
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 2856
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2857
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2859
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2860
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    return-void
.end method

.method private resetIfReadyAndConnectedLocked()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 786
    const-string/jumbo v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Thinking about reset, mSystemReady="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/MountService;->mSystemReady:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    const-string/jumbo v9, ", mDaemonConnected="

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 787
    iget-boolean v9, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    .line 786
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-boolean v7, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    if-eqz v7, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/android/server/MountService;->killMediaProvider()V

    .line 791
    iget-object v7, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 792
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 794
    invoke-direct {p0}, Lcom/android/server/MountService;->addInternalVolume()V

    .line 797
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "volume"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "reset"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 800
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 801
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 802
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 803
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "volume"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "user_added"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    const-string/jumbo v7, "Failed to reset vold"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_0
    return-void

    .line 805
    .restart local v1    # "um":Landroid/os/UserManager;
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/MountService;->mStartedUsers:[I

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget v4, v7, v6

    .line 806
    .local v4, "userId":I
    iget-object v9, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v10, "volume"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "user_started"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 805
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string/jumbo v1, "internal"

    return-object v1

    .line 349
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 350
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 351
    :cond_1
    const-string/jumbo v1, "unknown"

    return-object v1

    .line 353
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    .line 354
    const-wide/32 v4, 0x240c8400

    .line 353
    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string/jumbo v2, "w"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private shouldBenchmark()Z
    .locals 14

    .prologue
    .line 370
    iget-object v7, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 371
    const-string/jumbo v8, "storage_benchmark_interval"

    const-wide/32 v10, 0x240c8400

    .line 370
    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 372
    .local v2, "benchInterval":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_0

    .line 373
    const/4 v7, 0x0

    return v7

    .line 374
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 375
    const/4 v7, 0x1

    return v7

    .line 378
    :cond_1
    iget-object v8, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 379
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 380
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 381
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    iget-object v9, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 382
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v0, v10, v12

    .line 384
    .local v0, "benchAge":J
    cmp-long v7, v0, v2

    if-ltz v7, :cond_2

    .line 385
    const/4 v7, 0x1

    monitor-exit v8

    return v7

    .line 379
    .end local v0    # "benchAge":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    .end local v5    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    const/4 v7, 0x0

    monitor-exit v8

    return v7

    .line 378
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private systemReady()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1435
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 1436
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1434
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .locals 4
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;

    .prologue
    .line 710
    const-wide/16 v2, -0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/util/concurrent/TimeoutException;
    goto :goto_0
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .locals 9
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 720
    .local v2, "startMillis":J
    :cond_0
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    return-void

    .line 723
    :cond_1
    const-string/jumbo v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 724
    const-string/jumbo v5, " still waiting for "

    .line 723
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 724
    const-string/jumbo v5, "..."

    .line 723
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 730
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 731
    const-string/jumbo v5, " gave up waiting for "

    .line 730
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 731
    const-string/jumbo v5, " after "

    .line 730
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 731
    const-string/jumbo v5, "ms"

    .line 730
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Interrupt while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mConnectedSignal"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    .prologue
    .line 1945
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1947
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1948
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 1950
    return-void

    .line 1946
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    monitor-exit v3

    .line 1955
    const-string/jumbo v2, "MountService"

    const-string/jumbo v3, "No primary storage mounted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return-void

    .line 1945
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private writeSettingsLocked()V
    .locals 8

    .prologue
    .line 1492
    const/4 v1, 0x0

    .line 1494
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1496
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1497
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1498
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1499
    const-string/jumbo v6, "volumes"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1500
    const-string/jumbo v6, "version"

    const/4 v7, 0x3

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1501
    const-string/jumbo v6, "primaryStorageUuid"

    iget-object v7, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v6, "forceAdoptable"

    iget-boolean v7, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1503
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1504
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 1505
    iget-object v6, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 1506
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v3, v4}, Lcom/android/server/MountService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 1504
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1508
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_0
    const-string/jumbo v6, "volumes"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1509
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1511
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_1
    :goto_1
    return-void

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 1514
    iget-object v6, p0, Lcom/android/server/MountService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .locals 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1533
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1534
    const-string/jumbo v0, "type"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1535
    const-string/jumbo v0, "fsUuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string/jumbo v0, "partGuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string/jumbo v0, "nickname"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string/jumbo v0, "userFlags"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1539
    const-string/jumbo v0, "createdMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1540
    const-string/jumbo v0, "lastTrimMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1541
    const-string/jumbo v0, "lastBenchMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1542
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1532
    return-void
.end method


# virtual methods
.method public benchmark(Ljava/lang/String;)J
    .locals 8
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1669
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1670
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1674
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1675
    const-string/jumbo v4, "volume"

    .line 1674
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1675
    const-string/jumbo v6, "benchmark"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 1674
    const-wide/32 v6, 0x2bf20

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 1676
    .local v2, "res":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/android/server/NativeDaemonTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 1679
    .end local v2    # "res":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1677
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v1

    .line 1678
    .local v1, "e":Lcom/android/server/NativeDaemonTimeoutException;
    const-wide v4, 0x7fffffffffffffffL

    return-wide v4
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2455
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CRYPT_KEEPER"

    .line 2456
    const-string/jumbo v7, "no permission to access the crypt keeper"

    .line 2455
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2465
    const-string/jumbo v5, "lock_settings"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2464
    invoke-static {v5}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    .line 2466
    .local v4, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const-string/jumbo v0, "default_password"

    .line 2468
    .local v0, "currentPassword":Ljava/lang/String;
    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2474
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "changepw"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v8, v8, p1

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2475
    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v8, v7, v9

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 2474
    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 2477
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2482
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    return v5

    .line 2469
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2470
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t get password"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2478
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1
    move-exception v1

    .line 2479
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t sanitize password"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2483
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_2
    move-exception v2

    .line 2485
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    return v5
.end method

.method public clearPassword()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2615
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2616
    return-void

    .line 2621
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "clearpw"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2614
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 2622
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 2623
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public createNewUserDir(ILjava/lang/String;)V
    .locals 8
    .param p1, "userHandle"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 2629
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 2630
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Only SYSTEM_UID can create user directories"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2633
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2640
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2641
    const-string/jumbo v4, "cryptfs"

    .line 2640
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 2641
    const-string/jumbo v6, "createnewuserdir"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    .line 2640
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2642
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v3, "0"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createnewuserdir sent unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2644
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 2643
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2645
    .local v1, "error":Ljava/lang/String;
    const-string/jumbo v3, "MountService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2649
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 2650
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "createnewuserdir threw exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2651
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "createnewuserdir threw exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2628
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    return-void
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 1973
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1974
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1975
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1977
    const/4 v1, 0x0

    .line 1979
    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "create"

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object p3, v5, v2

    new-instance v2, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v2, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v2, v5, v6

    .line 1980
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v5, v6

    if-eqz p6, :cond_1

    const-string/jumbo v2, "1"

    :goto_0
    const/4 v6, 0x6

    aput-object v2, v5, v6

    .line 1979
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1985
    :goto_1
    if-nez v1, :cond_0

    .line 1986
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 1987
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1990
    :cond_0
    return v1

    .line 1980
    :cond_1
    :try_start_2
    const-string/jumbo v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1981
    :catch_0
    move-exception v0

    .line 1982
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1

    .line 1986
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2366
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2369
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    .line 2370
    const-string/jumbo v5, "no permission to access the crypt keeper"

    .line 2369
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2380
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "checkpw"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2382
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2383
    .local v0, "code":I
    if-nez v0, :cond_1

    .line 2386
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$2;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    .line 2394
    const-wide/16 v6, 0x3e8

    .line 2386
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2397
    :cond_1
    return v0

    .line 2398
    .end local v0    # "code":I
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2400
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    return v3
.end method

.method public deleteUserKey(I)V
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 2659
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Only SYSTEM_UID can delete user keys"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2662
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2669
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2670
    const-string/jumbo v4, "cryptfs"

    .line 2669
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 2670
    const-string/jumbo v6, "deleteuserkey"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 2669
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2671
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v3, "0"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteuserkey sent unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2673
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 2672
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2674
    .local v1, "error":Ljava/lang/String;
    const-string/jumbo v3, "MountService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2678
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 2679
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "deleteuserkey threw exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2680
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "deleteuserkey threw exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2657
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    return-void
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2043
    const-string/jumbo v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2044
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2045
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2053
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2055
    const/4 v3, 0x0

    .line 2057
    .local v3, "rc":I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "destroy"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2058
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    .line 2059
    const-string/jumbo v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2061
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2071
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 2072
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2073
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2074
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v5

    .line 2079
    :cond_2
    return v3

    .line 2062
    :catch_0
    move-exception v2

    .line 2063
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2064
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2065
    const/4 v3, -0x7

    goto :goto_0

    .line 2067
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 2072
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "android.permission.DUMP"

    const-string/jumbo v16, "MountService"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v14, "  "

    const/16 v15, 0xa0

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v14, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3433
    .local v12, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3434
    :try_start_0
    const-string/jumbo v14, "Disks:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3435
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3436
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 3437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    .line 3438
    .local v3, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v3, v12}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3436
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3440
    .end local v3    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3442
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3443
    const-string/jumbo v14, "Volumes:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3445
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v6, v14, :cond_2

    .line 3446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/VolumeInfo;

    .line 3447
    .local v13, "vol":Landroid/os/storage/VolumeInfo;
    const-string/jumbo v14, "private"

    iget-object v0, v13, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3445
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3448
    :cond_1
    invoke-virtual {v13, v12}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3433
    .end local v6    # "i":I
    .end local v13    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 3450
    .restart local v6    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3452
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3453
    const-string/jumbo v14, "Records:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3455
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v6, v14, :cond_3

    .line 3456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/VolumeRecord;

    .line 3457
    .local v8, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v8, v12}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3455
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3459
    .end local v8    # "note":Landroid/os/storage/VolumeRecord;
    :cond_3
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3461
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3462
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Primary storage UUID: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3463
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Force adoptable: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService;->mForceAdoptable:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v15

    .line 3466
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v15

    .line 3467
    :try_start_2
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3468
    const-string/jumbo v14, "mObbMounts:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3472
    .local v2, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3474
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3476
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 3477
    .local v11, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "obbState$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/MountService$ObbState;

    .line 3478
    .local v9, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v12, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    .line 3466
    .end local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_1
    move-exception v14

    monitor-exit v15

    throw v14

    .line 3480
    .restart local v2    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v10    # "obbState$iterator":Ljava/util/Iterator;
    .restart local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_4
    :try_start_3
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_4

    .line 3482
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v10    # "obbState$iterator":Ljava/util/Iterator;
    .end local v11    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_5
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3484
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3485
    const-string/jumbo v14, "mObbPathToStateMap:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3486
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 3488
    .local v7, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3489
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3490
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3491
    const-string/jumbo v14, " -> "

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3492
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 3494
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_6
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v15

    .line 3497
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3498
    const-string/jumbo v14, "mConnection:"

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v12, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3501
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3503
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3504
    const-string/jumbo v14, "Last maintenance: "

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3505
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/MountService;->mLastMaintenance:J

    invoke-static {v14, v15}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2439
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService;->encryptStorageExtended(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public encryptWipeStorage(ILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2447
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService;->encryptStorageExtended(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2009
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2010
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2012
    const/4 v1, 0x0

    .line 2014
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "finalize"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    :goto_0
    return v1

    .line 2019
    :catch_0
    move-exception v0

    .line 2020
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2235
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to call finishMediaUpdate()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 2238
    iget-object v0, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2233
    :goto_0
    return-void

    .line 2240
    :cond_1
    const-string/jumbo v0, "MountService"

    const-string/jumbo v1, "Odd, nobody asked to unmount?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 2026
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2027
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2029
    const/4 v1, 0x0

    .line 2031
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "fixperms"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2039
    :goto_0
    return v1

    .line 2036
    :catch_0
    move-exception v0

    .line 2037
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public forgetAllVolumes()V
    .locals 6

    .prologue
    .line 1788
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1789
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1791
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1793
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1794
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 1795
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1796
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V

    .line 1798
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v3, v0}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    .line 1792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1800
    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1802
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1803
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1806
    :cond_2
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    .line 1807
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1787
    return-void

    .line 1791
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 1764
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1765
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1767
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1769
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1770
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1773
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v1, p1}, Lcom/android/server/MountService$Callbacks;->-wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    .line 1777
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1778
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 1779
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V

    .line 1782
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1763
    return-void

    .line 1771
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->forgetPartition(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1768
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1656
    const-string/jumbo v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1657
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1659
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1661
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "format"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "auto"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    return-void

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1605
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->format(Ljava/lang/String;)V

    .line 1606
    const/4 v0, 0x0

    return v0
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .locals 4

    .prologue
    .line 2785
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2786
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/DiskInfo;

    .line 2787
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2788
    iget-object v2, p0, Lcom/android/server/MountService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 2790
    return-object v1

    .line 2785
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getEncryptionState()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 2343
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    .line 2344
    const-string/jumbo v5, "no permission to access the crypt keeper"

    .line 2343
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2350
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "cryptocomplete"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2351
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2356
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 2358
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    return v8

    .line 2352
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_1
    move-exception v1

    .line 2354
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    return v8
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2572
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2577
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "getfield"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    .line 2578
    const/16 v6, 0x71

    .line 2576
    invoke-static {v5, v6}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v1

    .line 2579
    .local v1, "contents":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 2580
    .local v3, "result":Ljava/lang/String;
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 2581
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2580
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2583
    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 2584
    .end local v1    # "contents":[Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2585
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2264
    const-string/jumbo v4, "rawPath cannot be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2267
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2270
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v5

    .line 2271
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5

    .line 2273
    if-nez v3, :cond_0

    .line 2274
    const-string/jumbo v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find OBB mounted at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    return-object v9

    .line 2270
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2280
    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "path"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2281
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v4, 0xd3

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2282
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4

    .line 2283
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2284
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2285
    .local v0, "code":I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_1

    .line 2286
    return-object v9

    .line 2288
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPassword()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2591
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 2592
    const-string/jumbo v5, "only keyguard can retrieve password"

    .line 2591
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    invoke-direct {p0}, Lcom/android/server/MountService;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2594
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    return-object v3

    .line 2599
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "getpw"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2600
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v3, "-1"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2602
    return-object v8

    .line 2604
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2607
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2608
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Invalid response to getPassword"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    return-object v8

    .line 2605
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2606
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPasswordType()I
    .locals 8

    .prologue
    .line 2530
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2534
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "getpwtype"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2535
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2536
    sget-object v3, Lcom/android/server/MountService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2537
    return v2

    .line 2535
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2540
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unexpected return from cryptfs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 2542
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1861
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1862
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1864
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1864
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2212
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2213
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2214
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2218
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "fspath"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2219
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2220
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2221
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2222
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2223
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2224
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    const/4 v3, 0x0

    return-object v3

    .line 2227
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1959
    const-string/jumbo v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1960
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1961
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1965
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "list"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    .line 1964
    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    return-object v1
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2191
    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2192
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2193
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2197
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "path"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2198
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2199
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2200
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2201
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2202
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2203
    const-string/jumbo v3, "MountService"

    const-string/jumbo v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    const/4 v3, 0x0

    return-object v3

    .line 2206
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1919
    const-string/jumbo v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1920
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1923
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    .line 1924
    const/16 v7, 0x70

    .line 1922
    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 1927
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 1928
    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 1929
    aget-object v6, v4, v2

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1931
    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1928
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1932
    :catch_0
    move-exception v3

    .line 1933
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string/jumbo v6, "MountService"

    const-string/jumbo v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v6, 0x0

    new-array v6, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v6

    .line 1937
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 1938
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v4    # "r":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1939
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v6, "MountService"

    const-string/jumbo v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    new-array v6, v11, [I

    return-object v6
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .locals 39
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 2725
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1

    const/16 v21, 0x1

    .line 2727
    .local v21, "forWrite":Z
    :goto_0
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 2728
    .local v34, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/16 v22, 0x0

    .line 2730
    .local v22, "foundPrimary":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v36

    .line 2732
    .local v36, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 2734
    .local v26, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    const/16 v33, 0x0

    .line 2737
    .local v33, "reportUnmounted":Z
    :goto_1
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2741
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_5

    .line 2742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/storage/VolumeInfo;

    .line 2743
    .local v38, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v21, :cond_3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_0

    .line 2744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v38

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v37

    .line 2746
    .local v37, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v38 .. v38}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2747
    const/4 v4, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2748
    const/16 v22, 0x1

    .line 2741
    .end local v37    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2725
    .end local v21    # "forWrite":Z
    .end local v22    # "foundPrimary":Z
    .end local v23    # "i":I
    .end local v26    # "identity":J
    .end local v33    # "reportUnmounted":Z
    .end local v34    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v36    # "userId":I
    .end local v38    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/16 v21, 0x0

    .restart local v21    # "forWrite":Z
    goto :goto_0

    .line 2734
    .restart local v22    # "foundPrimary":Z
    .restart local v26    # "identity":J
    .restart local v34    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v36    # "userId":I
    :cond_2
    const/16 v33, 0x1

    .restart local v33    # "reportUnmounted":Z
    goto :goto_1

    .line 2736
    .end local v33    # "reportUnmounted":Z
    :catchall_0
    move-exception v4

    .line 2737
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2736
    throw v4

    .line 2743
    .restart local v23    # "i":I
    .restart local v33    # "reportUnmounted":Z
    .restart local v38    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    :try_start_2
    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    goto :goto_3

    .line 2750
    .restart local v37    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_4
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 2740
    .end local v37    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v38    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_5
    monitor-exit v5

    .line 2756
    if-nez v22, :cond_6

    .line 2757
    const-string/jumbo v4, "MountService"

    const-string/jumbo v5, "No primary storage defined yet; hacking together a stub"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const-string/jumbo v4, "ro.vold.primary_physical"

    const/4 v5, 0x0

    .line 2759
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 2762
    .local v32, "primaryPhysical":Z
    const-string/jumbo v24, "stub_primary"

    .line 2763
    .local v24, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 2764
    .local v7, "path":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2765
    .local v8, "description":Ljava/lang/String;
    const/16 v25, 0x1

    .line 2766
    .local v25, "primary":Z
    move/from16 v10, v32

    .line 2767
    .local v10, "removable":Z
    if-eqz v32, :cond_7

    const/4 v11, 0x0

    .line 2768
    .local v11, "emulated":Z
    :goto_5
    const-wide/16 v30, 0x0

    .line 2769
    .local v30, "mtpReserveSize":J
    const/16 v20, 0x0

    .line 2770
    .local v20, "allowMassStorage":Z
    const-wide/16 v28, 0x0

    .line 2771
    .local v28, "maxFileSize":J
    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2772
    .local v17, "owner":Landroid/os/UserHandle;
    const/16 v18, 0x0

    .line 2773
    .local v18, "uuid":Ljava/lang/String;
    const-string/jumbo v35, "removed"

    .line 2775
    .local v35, "state":Ljava/lang/String;
    new-instance v4, Landroid/os/storage/StorageVolume;

    const-string/jumbo v5, "stub_primary"

    .line 2777
    const-string/jumbo v19, "removed"

    .line 2775
    const/4 v6, 0x0

    .line 2776
    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    .line 2777
    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    .line 2775
    invoke-direct/range {v4 .. v19}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2780
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "removable":Z
    .end local v11    # "emulated":Z
    .end local v17    # "owner":Landroid/os/UserHandle;
    .end local v18    # "uuid":Ljava/lang/String;
    .end local v20    # "allowMassStorage":Z
    .end local v24    # "id":Ljava/lang/String;
    .end local v25    # "primary":Z
    .end local v28    # "maxFileSize":J
    .end local v30    # "mtpReserveSize":J
    .end local v32    # "primaryPhysical":Z
    .end local v35    # "state":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/storage/StorageVolume;

    return-object v4

    .line 2767
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "removable":Z
    .restart local v24    # "id":Ljava/lang/String;
    .restart local v25    # "primary":Z
    .restart local v32    # "primaryPhysical":Z
    :cond_7
    const/4 v11, 0x1

    .restart local v11    # "emulated":Z
    goto :goto_5
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 2807
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2808
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeRecord;

    .line 2809
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2810
    iget-object v2, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 2812
    return-object v1

    .line 2807
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 1584
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 2796
    iget-object v3, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2797
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .line 2798
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2799
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    .line 2801
    return-object v1

    .line 2796
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    .prologue
    .line 1589
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 2295
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2156
    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2158
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2160
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 1

    .prologue
    .line 1569
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1

    .prologue
    .line 1579
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lastMaintenance()J
    .locals 2

    .prologue
    .line 868
    iget-wide v0, p0, Lcom/android/server/MountService;->mLastMaintenance:J

    return-wide v0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 2686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2687
    .local v5, "userId":I
    new-instance v4, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v4, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2690
    .local v4, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 2691
    const-string/jumbo v7, "appops"

    .line 2690
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 2692
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v1, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2694
    const/4 v0, 0x0

    .line 2696
    .local v0, "appFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2704
    .local v0, "appFile":Ljava/io/File;
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2705
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    .line 2704
    if-nez v6, :cond_0

    .line 2706
    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    .line 2704
    if-eqz v6, :cond_2

    .line 2707
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 2708
    const-string/jumbo v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2713
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "mkdirs"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2714
    return v11

    .line 2697
    .local v0, "appFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 2698
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to resolve "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    const/4 v6, -0x1

    return v6

    .line 2715
    .end local v3    # "e":Ljava/io/IOException;
    .local v0, "appFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 2716
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    return v6

    .line 2720
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid mkdirs path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 3512
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3514
    :cond_0
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_1

    .line 3515
    iget-object v0, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3510
    :cond_1
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .locals 7
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1611
    const-string/jumbo v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1612
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1614
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1615
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v1}, Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1616
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " restricted by policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1619
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "mount"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    return-void

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 2304
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    const-string/jumbo v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    const-string/jumbo v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2309
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2310
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 2311
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2303
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "readOnly"    # Z

    .prologue
    .line 2083
    const-string/jumbo v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2084
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2085
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2087
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2088
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2089
    const/4 v3, -0x6

    monitor-exit v4

    return v3

    :cond_0
    monitor-exit v4

    .line 2093
    const/4 v2, 0x0

    .line 2095
    .local v2, "rc":I
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "asec"

    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "mount"

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p1, v6, v3

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v3, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v6, v7

    .line 2096
    if-eqz p4, :cond_3

    const-string/jumbo v3, "ro"

    :goto_0
    const/4 v7, 0x4

    aput-object v3, v6, v7

    .line 2095
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2104
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 2105
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2106
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 2109
    :cond_2
    return v2

    .line 2087
    .end local v2    # "rc":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2096
    .restart local v2    # "rc":I
    :cond_3
    :try_start_3
    const-string/jumbo v3, "rw"
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2097
    :catch_0
    move-exception v1

    .line 2098
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2099
    .local v0, "code":I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_1

    .line 2100
    const/4 v2, -0x1

    goto :goto_1

    .line 2105
    .end local v0    # "code":I
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1594
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->mount(Ljava/lang/String;)V

    .line 1595
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 939
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mDaemonConnected:Z

    .line 877
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 875
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 947
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .locals 8
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .prologue
    .line 1719
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1720
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    .line 1721
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1723
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    .line 1725
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "mixed"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1726
    const-string/jumbo v3, "partitionMixed"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    return-void

    .line 1729
    :catch_0
    move-exception v1

    .line 1730
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1727
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 1728
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .locals 8
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 1702
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1703
    invoke-direct {p0}, Lcom/android/server/MountService;->enforceAdminUser()V

    .line 1704
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1706
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    .line 1708
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "private"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1709
    const-string/jumbo v3, "partitionPrivate"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    return-void

    .line 1712
    :catch_0
    move-exception v1

    .line 1713
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1710
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 1711
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .locals 8
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 1686
    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1687
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1689
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    .line 1691
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "public"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1692
    const-string/jumbo v3, "partitionPublic"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    return-void

    .line 1695
    :catch_0
    move-exception v1

    .line 1696
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1693
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 1694
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->register(Landroid/os/storage/IMountServiceListener;)V

    .line 1550
    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 2166
    const-string/jumbo v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2167
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2168
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2170
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2175
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2176
    :cond_0
    const/4 v2, -0x6

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    .line 2180
    const/4 v1, 0x0

    .line 2182
    .local v1, "rc":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "rename"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2187
    :goto_0
    return v1

    .line 2170
    .end local v1    # "rc":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2183
    .restart local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1995
    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1996
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1997
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 1999
    const/4 v1, 0x0

    .line 2001
    .local v1, "rc":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "resize"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    :goto_0
    return v1

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 855
    return-void
.end method

.method public runMaintenance()V
    .locals 1

    .prologue
    .line 862
    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 861
    return-void
.end method

.method public setDebugFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    const/4 v0, 0x0

    .line 1846
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1847
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1849
    iget-object v1, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1850
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 1851
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/MountService;->mForceAdoptable:Z

    .line 1854
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V

    .line 1855
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1845
    return-void

    .line 1849
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2554
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2558
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "setfield"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2552
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    return-void

    .line 2559
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 2560
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 1871
    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1872
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1874
    iget-object v4, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1875
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1876
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primary storage already at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1879
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-eqz v3, :cond_1

    .line 1880
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Move already in progress"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1882
    :cond_1
    iput-object p2, p0, Lcom/android/server/MountService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1883
    iput-object p1, p0, Lcom/android/server/MountService;->mMoveTargetUuid:Ljava/lang/String;

    .line 1887
    const-string/jumbo v3, "primary_physical"

    iget-object v5, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1888
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1887
    if-eqz v3, :cond_3

    .line 1889
    :cond_2
    const-string/jumbo v3, "MountService"

    const-string/jumbo v5, "Skipping move to/from primary physical"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const/16 v3, 0x52

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    .line 1891
    const/16 v3, -0x64

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V

    .line 1892
    invoke-direct {p0}, Lcom/android/server/MountService;->resetIfReadyAndConnectedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 1870
    return-void

    .line 1895
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1896
    .local v1, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 1898
    .local v2, "to":Landroid/os/storage/VolumeInfo;
    if-nez v1, :cond_4

    .line 1899
    const-string/jumbo v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failing move due to missing from volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/MountService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v3, -0x6

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 1901
    return-void

    .line 1902
    :cond_4
    if-nez v2, :cond_5

    .line 1903
    :try_start_3
    const-string/jumbo v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failing move due to missing to volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const/4 v3, -0x6

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->onMoveStatusLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 1905
    return-void

    .line 1909
    :cond_5
    :try_start_4
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "move_storage"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1574
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1736
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1737
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1739
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1741
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1742
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1743
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1744
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1735
    return-void

    .line 1740
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .locals 4
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1750
    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1751
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1753
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v2, p0, Lcom/android/server/MountService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 1756
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v1, v3

    and-int v3, p2, p3

    or-int/2addr v1, v3

    iput v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1757
    iget-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->-wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 1758
    invoke-direct {p0}, Lcom/android/server/MountService;->writeSettingsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1749
    return-void

    .line 1754
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 1561
    const-string/jumbo v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1563
    const-string/jumbo v0, "MountService"

    const-string/jumbo v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1560
    return-void
.end method

.method public unmount(Ljava/lang/String;)V
    .locals 9
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 1627
    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 1628
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1630
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1633
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1636
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mUnmountLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1637
    :try_start_1
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 1638
    iget-object v4, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1639
    iget-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v6, "mUnmountSignal"

    invoke-direct {p0, v4, v6}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 1640
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/MountService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1643
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1648
    .end local v2    # "ident":J
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "unmount"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1626
    return-void

    .line 1636
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1642
    :catchall_1
    move-exception v4

    .line 1643
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1642
    throw v4

    .line 1649
    .end local v2    # "ident":J
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 9
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 2319
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 2323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2

    .line 2326
    if-eqz v8, :cond_0

    .line 2328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2329
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    .line 2330
    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    .line 2329
    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2331
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2332
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2318
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    .line 2322
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2337
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    const-string/jumbo v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2113
    const-string/jumbo v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->enforcePermission(Ljava/lang/String;)V

    .line 2114
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2115
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2117
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2118
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 2119
    const/4 v4, -0x5

    monitor-exit v5

    return v4

    :cond_0
    monitor-exit v5

    .line 2129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2131
    const/4 v3, 0x0

    .line 2133
    .local v3, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "unmount"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2134
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_1

    .line 2135
    const-string/jumbo v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2137
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2147
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 2148
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2149
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    .line 2152
    :cond_2
    return v3

    .line 2117
    .end local v3    # "rc":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2138
    .restart local v3    # "rc":I
    :catch_0
    move-exception v2

    .line 2139
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2140
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2141
    const/4 v3, -0x7

    goto :goto_0

    .line 2143
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 2148
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->unregister(Landroid/os/storage/IMountServiceListener;)V

    .line 1555
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 2496
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2499
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    .line 2500
    const-string/jumbo v4, "no permission to access the crypt keeper"

    .line 2499
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2503
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2506
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2514
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "verifypw"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2515
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string/jumbo v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2517
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    return v2
.end method

.method public waitForAsecScan()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mAsecsScanned"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 700
    return-void
.end method
