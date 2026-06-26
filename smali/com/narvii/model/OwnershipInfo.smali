.class public Lcom/narvii/model/OwnershipInfo;
.super Ljava/lang/Object;
.source "OwnershipInfo.java"


# instance fields
.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public expiredTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public isAutoRenew:Z

.field public ownershipStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public daysExpired()I
    .locals 6

    .line 41
    iget-object v0, p0, Lcom/narvii/model/OwnershipInfo;->expiredTime:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 49
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 51
    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public isAutoRenew()Z
    .locals 2

    .line 28
    iget-boolean v0, p0, Lcom/narvii/model/OwnershipInfo;->isAutoRenew:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isExpired()Z
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/narvii/model/OwnershipInfo;->expiredTime:Ljava/util/Date;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result v0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
