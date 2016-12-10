.class public Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;
.super Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;
.source "QtiImsInterfaceListenerBaseImpl.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "QtiImsInterfaceListenerBaseImpl"

    sput-object v0, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->LOG_TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method private static logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "() in QtiImsInterfaceListener should not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    const-string/jumbo v2, "called, Default Implementation."

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method


# virtual methods
.method public notifyRefreshViceInfo(Lorg/codeaurora/ims/qtiims/QtiViceInfo;)V
    .locals 1
    .param p1, "viceInfo"    # Lorg/codeaurora/ims/qtiims/QtiViceInfo;

    .prologue
    .line 74
    const-string/jumbo v0, "notifyRefreshViceInfo"

    invoke-static {v0}, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onGetCallForwardUncondTimer(IIIIIILjava/lang/String;I)V
    .locals 1
    .param p1, "startHour"    # I
    .param p2, "endHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endMinute"    # I
    .param p5, "reason"    # I
    .param p6, "status"    # I
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "service"    # I

    .prologue
    .line 49
    const-string/jumbo v0, "onGetCallForwardUncondTimer"

    invoke-static {v0}, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onGetPacketCount(IJ)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "packetCount"    # J

    .prologue
    .line 59
    const-string/jumbo v0, "onGetPacketCount"

    invoke-static {v0}, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onGetPacketErrorCount(IJ)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "packetErrorCount"    # J

    .prologue
    .line 64
    const-string/jumbo v0, "onGetPacketErrorCount"

    invoke-static {v0}, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onSetCallForwardUncondTimer(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 43
    const-string/jumbo v0, "onSetCallForwardUncondTimer"

    invoke-static {v0}, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onUTReqFailed(ILjava/lang/String;)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v0, "onUTReqFailed"

    invoke-static {v0}, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public receiveCallDeflectResponse(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 69
    const-string/jumbo v0, "receiveCallDeflectResponse"

    invoke-static {v0}, Lorg/codeaurora/ims/qtiims/QtiImsInterfaceListenerBaseImpl;->logUnexpectedQtiImsListenerCall(Ljava/lang/String;)V

    .line 68
    return-void
.end method
