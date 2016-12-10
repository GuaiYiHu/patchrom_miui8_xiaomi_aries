.class public Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AidGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final aids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final category:Ljava/lang/String;

.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 435
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup$1;-><init>()V

    .line 434
    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 383
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    .line 396
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    .line 397
    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->description:Ljava/lang/String;

    .line 394
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    .line 390
    iput-object p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    .line 391
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->description:Ljava/lang/String;

    .line 388
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public getAids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    const-string/jumbo v4, ", description: "

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->description:Ljava/lang/String;

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    const-string/jumbo v4, ", AIDs:"

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .local v2, "out":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 416
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 426
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->aids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 425
    :cond_0
    return-void
.end method
