.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8426
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 11

    .prologue
    .line 8429
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8430
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8431
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const v2, 0x20053

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 8433
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8434
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Have NetworkAgent when entering L2Connected"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8435
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 8437
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 8439
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8440
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 8442
    :cond_2
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    .line 8443
    const-string/jumbo v4, "WifiNetworkAgent"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get62(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    .line 8444
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v7

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v8

    .line 8442
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    invoke-static {v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set35(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 8449
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "L2ConnectedState"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 8451
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get54(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8453
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Landroid/net/IpReachabilityMonitor;

    .line 8454
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    .line 8455
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    .line 8456
    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState$1;-><init>(Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;)V

    .line 8453
    invoke-direct {v1, v2, v3, v4}, Landroid/net/IpReachabilityMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/IpReachabilityMonitor$Callback;)V

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set25(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/IpReachabilityMonitor;)Landroid/net/IpReachabilityMonitor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8428
    :cond_3
    :goto_0
    return-void

    .line 8462
    :catch_0
    move-exception v9

    .line 8463
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "Failed to create IpReachabilityMonitor"

    invoke-static {v0, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8470
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8471
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpReachabilityMonitor;->stop()V

    .line 8472
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set25(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/IpReachabilityMonitor;)Landroid/net/IpReachabilityMonitor;

    .line 8480
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8482
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "leaving L2ConnectedState state nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8483
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8484
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8487
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 8488
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8469
    :cond_3
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8496
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 8818
    const/4 v2, 0x0

    return v2

    .line 8498
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 8821
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 8501
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 8502
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 8503
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "DHCP successful"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8504
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/DhcpResults;

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    goto :goto_0

    .line 8507
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 8508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 8509
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8510
    const/4 v9, -0x1

    .line 8511
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 8512
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_3

    .line 8513
    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 8515
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DHCP failure count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8517
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "count":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 8522
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8528
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 8529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8533
    :sswitch_4
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8534
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8538
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8542
    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 8543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8549
    :sswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 8550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20049

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 8551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 8552
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 8553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->noteWifiDisabledWhileAssociated()V

    .line 8556
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    .line 8557
    const/4 v3, -0x1

    .line 8556
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_0

    .line 8560
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 8564
    :sswitch_9
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8566
    const-string/jumbo v5, " txSuccessRate="

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8566
    const-string/jumbo v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/16 v19, 0x0

    aput-object v7, v6, v19

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8567
    const-string/jumbo v5, " rxSuccessRate="

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8567
    const-string/jumbo v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/16 v19, 0x0

    aput-object v7, v6, v19

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8568
    const-string/jumbo v5, " targetRoamBSSID="

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8568
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8569
    const-string/jumbo v5, " RSSI="

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 8565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8571
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1b

    .line 8574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v2

    if-nez v2, :cond_8

    .line 8575
    const/4 v2, 0x1

    return v2

    .line 8577
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    .line 8579
    .local v4, "shouldScan":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 8581
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    .line 8582
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8579
    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 8583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get6()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "L2Connected CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8585
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 8584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8586
    const-string/jumbo v5, " "

    .line 8584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8586
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 8584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8586
    const-string/jumbo v5, ", "

    .line 8584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8586
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    .line 8584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8587
    const-string/jumbo v5, " -> obsolete"

    .line 8584
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8588
    const/4 v2, 0x1

    return v2

    .line 8590
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "L2Connected CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8592
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 8591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8593
    const-string/jumbo v5, " "

    .line 8591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8593
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 8591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8593
    const-string/jumbo v5, ", "

    .line 8591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    .line 8591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8594
    const-string/jumbo v5, " ignore because P2P is connected"

    .line 8591
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8596
    const/4 v2, 0x1

    return v2

    .line 8598
    :cond_a
    const/16 v18, 0x0

    .line 8599
    .local v18, "tryFullBandScan":Z
    const/16 v16, 0x0

    .line 8600
    .local v16, "restrictChannelList":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 8601
    .local v14, "now_ms":J
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_START_SCAN with age="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8603
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    sub-long v6, v14, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 8602
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8604
    const-string/jumbo v5, " interval="

    .line 8602
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8604
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    .line 8602
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8605
    const-string/jumbo v5, " maxinterval="

    .line 8602
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8605
    const-wide/32 v6, 0x493e0

    .line 8602
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8607
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 8608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    sub-long v2, v14, v2

    .line 8610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    .line 8609
    cmp-long v2, v2, v6

    if-lez v2, :cond_d

    .line 8611
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_START_SCAN try full band scan age="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8613
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    sub-long v6, v14, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 8612
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8614
    const-string/jumbo v5, " interval="

    .line 8612
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8614
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    .line 8612
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8615
    const-string/jumbo v5, " maxinterval="

    .line 8612
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8615
    const-wide/32 v6, 0x493e0

    .line 8612
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8617
    :cond_c
    const/16 v18, 0x1

    .line 8620
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 8621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    int-to-double v6, v5

    .line 8620
    cmpl-double v2, v2, v6

    if-gtz v2, :cond_e

    .line 8622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 8623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    int-to-double v6, v5

    .line 8622
    cmpl-double v2, v2, v6

    if-lez v2, :cond_10

    .line 8625
    :cond_e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "CMD_START_SCAN prevent full band scan due to pkt rate"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8629
    :cond_f
    const/16 v18, 0x0

    .line 8632
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 8633
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    int-to-double v6, v5

    .line 8632
    cmpl-double v2, v2, v6

    if-gtz v2, :cond_11

    .line 8634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 8635
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    int-to-double v6, v5

    .line 8634
    cmpl-double v2, v2, v6

    if-lez v2, :cond_13

    .line 8637
    :cond_11
    const/16 v16, 0x1

    .line 8638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_13

    .line 8639
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_START_SCAN source "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8641
    const-string/jumbo v5, " ...and ignore scans"

    .line 8640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8642
    const-string/jumbo v5, " tx="

    .line 8640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8642
    const-string/jumbo v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/16 v19, 0x0

    aput-object v7, v6, v19

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8643
    const-string/jumbo v5, " rx="

    .line 8640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8643
    const-string/jumbo v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iget-wide v0, v7, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/16 v19, 0x0

    aput-object v7, v6, v19

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8645
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8646
    const/4 v2, 0x1

    return v2

    .line 8651
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 8652
    .local v11, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 8653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_START_SCAN full="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8656
    :cond_14
    if-eqz v11, :cond_1a

    .line 8657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    .line 8658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    int-to-long v6, v5

    .line 8657
    cmp-long v2, v2, v6

    if-gez v2, :cond_15

    .line 8660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v6, v3

    .line 8660
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8663
    :cond_15
    if-eqz v18, :cond_17

    .line 8664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    .line 8666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    int-to-long v6, v5

    .line 8665
    cmp-long v2, v2, v6

    if-gez v2, :cond_16

    .line 8668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    .line 8670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    .line 8669
    mul-long v6, v6, v20

    .line 8670
    const-wide/16 v20, 0x8

    .line 8669
    div-long v6, v6, v20

    .line 8668
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8672
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 8673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_START_SCAN bump interval ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8674
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    .line 8673
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8677
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8678
    const/4 v3, 0x1

    .line 8677
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 8680
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move/from16 v0, v16

    invoke-virtual {v2, v11, v0}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8682
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 8683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "starting scan,  did not find channels -> full"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8686
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    .line 8688
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    int-to-long v6, v5

    .line 8687
    cmp-long v2, v2, v6

    if-gez v2, :cond_19

    .line 8690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    .line 8692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v20, v0

    .line 8691
    mul-long v6, v6, v20

    .line 8692
    const-wide/16 v20, 0x8

    .line 8691
    div-long v6, v6, v20

    .line 8690
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8694
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 8695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_START_SCAN bump interval ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8696
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get11(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v6

    .line 8695
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8699
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8700
    const/4 v3, 0x1

    .line 8699
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 8705
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "CMD_START_SCAN : connected mode and no configuration"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 8710
    .end local v4    # "shouldScan":Z
    .end local v11    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "now_ms":J
    .end local v16    # "restrictChannelList":Z
    .end local v18    # "tryFullBandScan":Z
    :cond_1b
    const/4 v2, 0x0

    return v2

    .line 8715
    :sswitch_a
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 8716
    .local v13, "netId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-eq v2, v13, :cond_0

    .line 8719
    const/4 v2, 0x0

    return v2

    .line 8721
    .end local v13    # "netId":I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 8724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8730
    :sswitch_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 8731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 8732
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get10()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get link layer stats "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8733
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get9()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v17

    .line 8734
    .local v17, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v17, :cond_1e

    .line 8736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x7f

    if-eq v2, v3, :cond_1e

    .line 8737
    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    if-eqz v2, :cond_1d

    .line 8738
    move-object/from16 v0, v17

    iget v2, v0, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    if-nez v2, :cond_1e

    .line 8739
    :cond_1d
    const/16 v17, 0x0

    .line 8743
    .end local v17    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiLinkLayerStats;)V

    .line 8746
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8747
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    .line 8746
    const v6, 0x20053

    .line 8747
    const/4 v7, 0x0

    .line 8746
    invoke-virtual {v3, v6, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 8747
    const-wide/16 v6, 0xbb8

    .line 8746
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 8749
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 8755
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 8757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_20

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8761
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get41(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8766
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    .line 8765
    const v6, 0x20053

    .line 8766
    const/4 v7, 0x0

    .line 8765
    invoke-virtual {v3, v6, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 8766
    const-wide/16 v6, 0xbb8

    .line 8765
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 8757
    :cond_20
    const/4 v2, 0x0

    goto :goto_1

    .line 8759
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_2

    .line 8770
    :sswitch_e
    new-instance v12, Landroid/net/wifi/RssiPacketCountInfo;

    invoke-direct {v12}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    .line 8771
    .local v12, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v12, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 8773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap25(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    .line 8774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x25015

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8777
    .end local v12    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    if-eqz v2, :cond_22

    .line 8780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_DELAYED_NETWORK_DISCONNECT and not debouncing - ignore "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8781
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 8780
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8782
    const/4 v2, 0x1

    return v2

    .line 8784
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CMD_DELAYED_NETWORK_DISCONNECT and debouncing - disconnect "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8785
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 8784
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8797
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_23

    .line 8798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "Associated command w/o BSSID"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8801
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 8804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8805
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get55(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8811
    :sswitch_11
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    int-to-byte v10, v2

    .line 8812
    .local v10, "currRssi":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v10, v3}, Lcom/android/server/wifi/WifiStateMachine;->processRssiThreshold(BI)V

    goto/16 :goto_0

    .line 8815
    .end local v10    # "currRssi":B
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    goto/16 :goto_0

    .line 8496
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_7
        0x20049 -> :sswitch_5
        0x20050 -> :sswitch_8
        0x20052 -> :sswitch_d
        0x20053 -> :sswitch_c
        0x20057 -> :sswitch_f
        0x2008a -> :sswitch_2
        0x2008b -> :sswitch_3
        0x20093 -> :sswitch_10
        0x20095 -> :sswitch_4
        0x200a2 -> :sswitch_11
        0x200a3 -> :sswitch_12
        0x200a4 -> :sswitch_11
        0x2300c -> :sswitch_6
        0x24003 -> :sswitch_b
        0x25001 -> :sswitch_a
        0x25014 -> :sswitch_e
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_1
    .end sparse-switch
.end method
