.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 9151
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9155
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap20(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    .line 9156
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9157
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter ConnectedState  mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9158
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9159
    const-string/jumbo v2, " scanperiod="

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9160
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9161
    const-string/jumbo v2, " useGscan="

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9161
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9161
    const-string/jumbo v2, "/"

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9162
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9163
    const-string/jumbo v2, " mHalBasedPnoEnableInDevSettings "

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9163
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 9157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9165
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9166
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    .line 9165
    if-eqz v0, :cond_1

    .line 9167
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9168
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "connectedEnter"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 9175
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    .line 9176
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9177
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set56(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9179
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9182
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9184
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9185
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set57(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9186
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConnectedState Enter start disconnect test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9187
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    .line 9186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9188
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 9189
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    .line 9188
    const v3, 0x20059

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 9189
    const-wide/16 v2, 0x3a98

    .line 9188
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9191
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9192
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9193
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->shouldAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9199
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 9206
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9153
    return-void

    .line 9171
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_0

    .line 9194
    :cond_6
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9195
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "Auto connect disabled, skip enable networks"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 9203
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_1
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 9475
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "WifiStateMachine: Leaving Connected state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9476
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 9477
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9479
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap15(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 9481
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;

    .line 9474
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 29
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9212
    const/4 v8, 0x0

    .line 9213
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9215
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 9468
    const/16 v24, 0x0

    return v24

    .line 9217
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    sget v25, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 9218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get6()I

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9219
    const/16 v24, 0x1

    return v24

    .line 9225
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 9226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-nez v24, :cond_2

    .line 9228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const-string/jumbo v25, "connectedRestart"

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 9470
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    const/16 v24, 0x1

    return v24

    .line 9232
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 9233
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v24, v0

    cmp-long v24, v18, v24

    if-lez v24, :cond_1

    .line 9234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    move-wide/from16 v24, v0

    sub-long v24, v18, v24

    .line 9235
    const-wide/32 v26, 0x1d4c0

    .line 9234
    cmp-long v24, v24, v26

    if-lez v24, :cond_1

    .line 9236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    move-wide/from16 v24, v0

    .line 9237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 9236
    cmp-long v24, v24, v26

    if-gez v24, :cond_1

    .line 9239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const-string/jumbo v25, "Connected restart gscan"

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    goto :goto_0

    .line 9245
    .end local v18    # "now":J
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->updateAssociatedScanPermission()V

    goto :goto_0

    .line 9248
    :sswitch_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const-string/jumbo v25, "Watchdog reports poor link"

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9249
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9252
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 9253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/wifi/WifiConfigStore;->handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V

    .line 9254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9275
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_1
    const/16 v24, 0x1

    return v24

    .line 9256
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 9257
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 9258
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 9259
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_4

    .line 9261
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 9262
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 9265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 9266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    .line 9267
    const/16 v25, -0x1

    .line 9266
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9270
    :cond_7
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 9271
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 9272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto :goto_1

    .line 9277
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 9278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 9279
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_a

    .line 9280
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 9281
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 9282
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 9285
    :cond_9
    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 9286
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 9287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 9290
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    const/16 v24, 0x1

    return v24

    .line 9292
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    if-eqz v24, :cond_c

    const/4 v4, 0x1

    .line 9293
    .local v4, "accept":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 9294
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_b

    .line 9295
    iput-boolean v4, v8, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 9297
    :cond_b
    const/16 v24, 0x1

    return v24

    .line 9292
    .end local v4    # "accept":Z
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "accept":Z
    goto :goto_2

    .line 9300
    .end local v4    # "accept":Z
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-get120(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 9301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 9307
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9308
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 9309
    .local v23, "toBSSID":Ljava/lang/String;
    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 9312
    :cond_d
    :goto_3
    const/16 v24, 0x0

    return v24

    .line 9310
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiConfigStore;->driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V

    goto :goto_3

    .line 9314
    .end local v23    # "toBSSID":Ljava/lang/String;
    :sswitch_8
    const-wide/16 v14, 0x0

    .line 9315
    .local v14, "lastRoam":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_f

    .line 9317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v26

    sub-long v14, v24, v26

    .line 9318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9320
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->unexpectedDisconnectedReason(I)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 9321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v24

    .line 9322
    const/16 v25, 0x5

    .line 9321
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 9324
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 9325
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 9326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 9359
    :cond_11
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 9360
    const/4 v5, -0x1

    .line 9361
    .local v5, "ajst":I
    if-eqz v8, :cond_12

    iget v5, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 9362
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9364
    const-string/jumbo v26, " RSSI="

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v26

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9365
    const-string/jumbo v26, " freq="

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v26

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9366
    const-string/jumbo v26, " was debouncing="

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v26

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9367
    const-string/jumbo v26, " reason="

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9367
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9368
    const-string/jumbo v26, " ajst="

    .line 9362
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9327
    .end local v5    # "ajst":I
    :cond_13
    if-eqz v8, :cond_11

    .line 9328
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v24, v0

    if-nez v24, :cond_11

    .line 9329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 9330
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 9331
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-lez v24, :cond_11

    const-wide/16 v24, 0x7d0

    cmp-long v24, v14, v24

    if-gez v24, :cond_11

    .line 9332
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 9333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v24

    .line 9334
    sget v25, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    .line 9333
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    .line 9344
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 9345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    .line 9348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v26

    .line 9347
    const v27, 0x20057

    .line 9348
    const/16 v28, 0x0

    .line 9347
    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v25

    .line 9348
    const-wide/16 v26, 0x1b58

    .line 9347
    invoke-virtual/range {v24 .. v27}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 9349
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 9350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9352
    const-string/jumbo v26, " RSSI="

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v26

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9353
    const-string/jumbo v26, " freq="

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v26

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9354
    const-string/jumbo v26, " reason="

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9354
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9355
    const-string/jumbo v26, " -> debounce"

    .line 9350
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9357
    :cond_15
    const/16 v24, 0x1

    return v24

    .line 9335
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 9336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v24

    .line 9337
    sget v25, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    .line 9336
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    goto/16 :goto_4

    .line 9374
    .end local v14    # "lastRoam":J
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9377
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 9378
    .local v7, "candidate":Landroid/net/wifi/ScanResult;
    const-string/jumbo v6, "any"

    .line 9379
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 9381
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 9383
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v16

    .line 9384
    .local v16, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 9387
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v8, :cond_18

    .line 9388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const-string/jumbo v25, "AUTO_ROAM and no config, bail out..."

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9392
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "CMD_AUTO_ROAM sup state "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v26

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9394
    const-string/jumbo v26, " my state "

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v26

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9395
    const-string/jumbo v26, " nid="

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9395
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9396
    const-string/jumbo v26, " config "

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9396
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v26

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9397
    const-string/jumbo v26, " roam="

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9397
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9398
    const-string/jumbo v26, " to "

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9399
    const-string/jumbo v26, " targetRoamBSSID "

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 9399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v26

    .line 9392
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 9410
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v24

    if-nez v24, :cond_1

    .line 9414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v24, v0

    .line 9415
    const/16 v25, 0x2

    .line 9414
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 9416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const v25, 0x25002

    .line 9417
    const/16 v26, 0x9

    .line 9416
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9403
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const-string/jumbo v25, "AUTO_ROAM nothing to do"

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 9421
    :cond_1b
    const/16 v21, 0x0

    .line 9422
    .local v21, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get58(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v16

    if-eq v0, v1, :cond_1d

    .line 9423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v24

    const/16 v25, 0x0

    .line 9424
    const/16 v26, -0x1

    .line 9423
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 9424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v24

    .line 9423
    if-eqz v24, :cond_1c

    .line 9425
    const/16 v21, 0x1

    .line 9430
    .end local v21    # "ret":Z
    :cond_1c
    :goto_5
    if-eqz v21, :cond_1e

    .line 9431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-set56(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9428
    .restart local v21    # "ret":Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    move-result v21

    .local v21, "ret":Z
    goto :goto_5

    .line 9439
    .end local v21    # "ret":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Failed to connect config: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " netId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    const v25, 0x25002

    .line 9441
    const/16 v26, 0x0

    .line 9440
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap43(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get4()I

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 9447
    .end local v6    # "bssid":Ljava/lang/String;
    .end local v7    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v16    # "netId":I
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 9448
    .local v22, "slot":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 9449
    .local v13, "intervalSeconds":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/connectivity/KeepalivePacketData;

    .line 9453
    .local v17, "pkt":Lcom/android/server/connectivity/KeepalivePacketData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    move-object/from16 v25, v0

    .line 9452
    invoke-static/range {v24 .. v25}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    .line 9454
    .local v12, "gateway":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9455
    .local v10, "dstMacStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap16(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 9462
    .local v9, "dstMac":[B
    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstMac:[B

    .line 9463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/wifi/WifiStateMachine;->startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    move-result v20

    .line 9464
    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 9456
    .end local v9    # "dstMac":[B
    .end local v10    # "dstMacStr":Ljava/lang/String;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    .end local v20    # "result":I
    :catch_0
    move-exception v11

    .line 9457
    .local v11, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Can\'t find MAC address for next hop to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v24

    .line 9459
    const/16 v25, -0x15

    .line 9458
    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 9215
    nop

    :sswitch_data_0
    .sparse-switch
        0x20059 -> :sswitch_6
        0x20090 -> :sswitch_3
        0x20091 -> :sswitch_9
        0x20093 -> :sswitch_7
        0x20094 -> :sswitch_4
        0x20099 -> :sswitch_5
        0x2009a -> :sswitch_0
        0x2009e -> :sswitch_1
        0x200a0 -> :sswitch_a
        0x21015 -> :sswitch_2
        0x24004 -> :sswitch_8
    .end sparse-switch
.end method
