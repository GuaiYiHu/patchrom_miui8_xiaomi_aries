.class public Landroid/suda/lunar/SolarHoliDay;
.super Ljava/lang/Object;
.source "SolarHoliDay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSolarHoliDay(II)Ljava/lang/String;
    .locals 10
    .param p0, "currentMonth"    # I
    .param p1, "currentDayForMonth"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "num_date":Ljava/lang/String;
    invoke-static {}, Landroid/suda/lunar/Constant;->getSolarHoliday()[Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "solarHolidayArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 26
    aget-object v4, v2, v0

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "solarHolidayDateStr":[Ljava/lang/String;
    aget-object v4, v3, v8

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    aget-object v4, v3, v9

    return-object v4

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v3    # "solarHolidayDateStr":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, ""

    return-object v4
.end method
