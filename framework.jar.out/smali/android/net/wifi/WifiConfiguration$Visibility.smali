.class public final Landroid/net/wifi/WifiConfiguration$Visibility;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Visibility"
.end annotation


# instance fields
.field public BSSID24:Ljava/lang/String;

.field public BSSID5:Ljava/lang/String;

.field public age24:J

.field public age5:J

.field public bandPreferenceBoost:I

.field public currentNetworkBoost:I

.field public lastChoiceBoost:I

.field public lastChoiceConfig:Ljava/lang/String;

.field public num24:I

.field public num5:I

.field public rssi24:I

.field public rssi5:I

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 549
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 547
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 554
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 555
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 556
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 557
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    .line 558
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 559
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    .line 560
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    .line 552
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v1, v2, :cond_0

    .line 568
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_0
    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v1, v2, :cond_1

    .line 575
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    if-eqz v1, :cond_2

    .line 581
    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 585
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_2
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
