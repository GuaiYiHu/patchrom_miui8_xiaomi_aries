.class public Lcom/android/server/NetPluginDelegate;
.super Ljava/lang/Object;
.source "NetPluginDelegate.java"


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityExtension"

.field private static tetherExtensionClass:Ljava/lang/Class;

.field private static tetherExtensionObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 47
    sput-object v0, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTetherStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p0, "uidStats"    # Landroid/net/NetworkStats;
    .param p1, "devStats"    # Landroid/net/NetworkStats;
    .param p2, "xtStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 52
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()V

    .line 54
    :try_start_0
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "getTetherStats"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 55
    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Landroid/net/NetworkStats;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 54
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 55
    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 56
    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "error in invoke method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadTetherExtJar()V
    .locals 6

    .prologue
    .line 90
    const-string/jumbo v2, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    .line 91
    .local v2, "realProvider":Ljava/lang/String;
    const-string/jumbo v3, "/system/framework/ConnectivityExt.jar"

    .line 92
    .local v3, "realProviderPath":Ljava/lang/String;
    sget-object v4, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/ConnectivityExt.jar"

    .line 97
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 96
    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 99
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    .line 100
    sget-object v4, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const-string/jumbo v4, "ConnectivityExtension"

    const-string/jumbo v5, "unable to ConnectivityExt jar"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setQuota(Ljava/lang/String;J)V
    .locals 7
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "quota"    # J

    .prologue
    .line 66
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()V

    .line 68
    :try_start_0
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "setQuota"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 68
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 69
    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 68
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling setQuota Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUpstream(Landroid/net/Network;)V
    .locals 6
    .param p0, "net"    # Landroid/net/Network;

    .prologue
    .line 78
    invoke-static {}, Lcom/android/server/NetPluginDelegate;->loadTetherExtJar()V

    .line 80
    :try_start_0
    sget-object v1, Lcom/android/server/NetPluginDelegate;->tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "setUpstream"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/net/Network;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 81
    sget-object v2, Lcom/android/server/NetPluginDelegate;->tetherExtensionObj:Ljava/lang/Object;

    .line 80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 81
    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 80
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "ConnectivityExtension"

    const-string/jumbo v2, "Error calling setUpstream Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
