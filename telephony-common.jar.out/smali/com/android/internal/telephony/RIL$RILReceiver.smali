.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 527
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 534
    const/4 v7, 0x0

    .line 535
    .local v7, "retryCount":I
    const-string/jumbo v8, "rild"

    .line 538
    .local v8, "rilSocket":Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .line 541
    .local v9, "s":Landroid/net/LocalSocket;
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_1

    .line 542
    :cond_0
    sget-object v12, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v8, v12, v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 548
    :goto_1
    :try_start_1
    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 549
    .end local v9    # "s":Landroid/net/LocalSocket;
    .local v10, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v4, Landroid/net/LocalSocketAddress;

    .line 550
    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 549
    invoke-direct {v4, v8, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 551
    .local v4, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v10, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 584
    const/4 v7, 0x0

    .line 586
    :try_start_3
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v10, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 587
    const-string/jumbo v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") Connected to \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 588
    const-string/jumbo v14, "\' socket"

    .line 587
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 590
    const/4 v5, 0x0

    .line 592
    .local v5, "length":I
    :try_start_4
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 597
    .local v3, "is":Ljava/io/InputStream;
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    invoke-static {v3, v12}, Lcom/android/internal/telephony/RIL;->-wrap2(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    move-result v5

    .line 599
    if-gez v5, :cond_5

    .line 621
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    const-string/jumbo v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v14}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ") Disconnected from \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 622
    const-string/jumbo v14, "\' socket"

    .line 621
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 627
    :try_start_6
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v12, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 631
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 632
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 635
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/RIL;->-wrap3(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    move-object v9, v10

    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 544
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    .local v9, "s":Landroid/net/LocalSocket;
    :cond_1
    :try_start_8
    sget-object v12, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    iget-object v13, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v13}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v8, v12, v13
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 552
    :catch_0
    move-exception v1

    .line 554
    .end local v9    # "s":Landroid/net/LocalSocket;
    .local v1, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v9, :cond_2

    .line 555
    :try_start_9
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 564
    :cond_2
    :goto_6
    const/16 v12, 0x8

    if-ne v7, v12, :cond_4

    .line 565
    :try_start_a
    const-string/jumbo v12, "RILJ"

    .line 566
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Couldn\'t find \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 567
    const-string/jumbo v14, "\' socket after "

    .line 566
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 568
    const-string/jumbo v14, " times, continuing to retry silently"

    .line 566
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 565
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 576
    :cond_3
    :goto_7
    const-wide/16 v12, 0xfa0

    :try_start_b
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 580
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 557
    :catch_1
    move-exception v2

    .local v2, "ex2":Ljava/io/IOException;
    goto :goto_6

    .line 569
    .end local v2    # "ex2":Ljava/io/IOException;
    :cond_4
    if-ltz v7, :cond_3

    const/16 v12, 0x8

    if-ge v7, v12, :cond_3

    .line 570
    :try_start_c
    const-string/jumbo v12, "RILJ"

    .line 571
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Couldn\'t find \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 572
    const-string/jumbo v14, "\' socket; retrying after timeout"

    .line 571
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 570
    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_7

    .line 636
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 637
    .local v11, "tr":Ljava/lang/Throwable;
    :goto_9
    const-string/jumbo v12, "RILJ"

    const-string/jumbo v13, "Uncaught exception"

    invoke-static {v12, v13, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v13, -0x1

    invoke-static {v12, v13}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;I)V

    .line 533
    return-void

    .line 577
    .end local v11    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .local v0, "er":Ljava/lang/InterruptedException;
    goto :goto_8

    .line 604
    .end local v0    # "er":Ljava/lang/InterruptedException;
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v5    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :cond_5
    :try_start_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 605
    .local v6, "p":Landroid/os/Parcel;
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 606
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 610
    iget-object v12, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v12, v6}, Lcom/android/internal/telephony/RIL;->-wrap6(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 611
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_2

    .line 613
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "p":Landroid/os/Parcel;
    :catch_4
    move-exception v1

    .line 614
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string/jumbo v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\' socket closed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 636
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    :catch_5
    move-exception v11

    .restart local v11    # "tr":Ljava/lang/Throwable;
    move-object v9, v10

    .end local v10    # "s":Landroid/net/LocalSocket;
    .local v9, "s":Landroid/net/LocalSocket;
    goto :goto_9

    .line 616
    .end local v9    # "s":Landroid/net/LocalSocket;
    .end local v11    # "tr":Ljava/lang/Throwable;
    .restart local v4    # "l":Landroid/net/LocalSocketAddress;
    .restart local v5    # "length":I
    .restart local v10    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v11

    .line 617
    .restart local v11    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Uncaught exception read length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 618
    const-string/jumbo v14, "Exception:"

    .line 617
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 618
    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    .line 617
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_3

    .line 628
    .end local v11    # "tr":Ljava/lang/Throwable;
    :catch_7
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto/16 :goto_4

    .line 552
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "l":Landroid/net/LocalSocketAddress;
    .end local v5    # "length":I
    :catch_8
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "s":Landroid/net/LocalSocket;
    .restart local v9    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
