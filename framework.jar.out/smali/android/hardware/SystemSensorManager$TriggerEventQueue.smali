.class final Landroid/hardware/SystemSensorManager$TriggerEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TriggerEventQueue"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/TriggerEventListener;

.field private final mTriggerEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/TriggerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 521
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    .line 526
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    .line 524
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 531
    new-instance v0, Landroid/hardware/TriggerEvent;

    .line 532
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->-get3(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    .line 531
    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/TriggerEvent;-><init>(I)V

    .line 533
    .local v0, "t":Landroid/hardware/TriggerEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 530
    return-void

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 573
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v4, 0x0

    .line 550
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-get1(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 551
    .local v0, "sensor":Landroid/hardware/Sensor;
    const/4 v1, 0x0

    .line 552
    .local v1, "t":Landroid/hardware/TriggerEvent;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v3

    .line 553
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "t":Landroid/hardware/TriggerEvent;
    check-cast v1, Landroid/hardware/TriggerEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "t":Landroid/hardware/TriggerEvent;
    monitor-exit v3

    .line 555
    if-nez v1, :cond_0

    .line 556
    const-string/jumbo v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: Trigger Event is null for Sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void

    .line 552
    .end local v1    # "t":Landroid/hardware/TriggerEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 561
    .restart local v1    # "t":Landroid/hardware/TriggerEvent;
    :cond_0
    iget-object v2, v1, Landroid/hardware/TriggerEvent;->values:[F

    iget-object v3, v1, Landroid/hardware/TriggerEvent;->values:[F

    array-length v3, v3

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 562
    iput-wide p4, v1, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 563
    iput-object v0, v1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    .line 567
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    .line 569
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mListener:Landroid/hardware/TriggerEventListener;

    invoke-virtual {v2, v1}, Landroid/hardware/TriggerEventListener;->onTrigger(Landroid/hardware/TriggerEvent;)V

    .line 549
    return-void
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 540
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->mTriggerEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 539
    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
