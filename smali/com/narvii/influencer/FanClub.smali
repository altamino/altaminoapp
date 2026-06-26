.class public Lcom/narvii/influencer/FanClub;
.super Lcom/narvii/model/NVObject;
.source "FanClub.java"


# static fields
.field public static final FANS_STATUS_ACTIVE:I = 0x1

.field public static final FANS_STATUS_NONE:I


# instance fields
.field public community:Lcom/narvii/model/Community;

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

.field public fansStatus:I

.field public isAutoRenew:Z

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public ndcId:I

.field public renewedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public targetUid:Ljava/lang/String;

.field public targetUserProfile:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/narvii/influencer/FanClub;->ndcId:I

    return-void
.end method


# virtual methods
.method public daysExpired()I
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-gtz v0, :cond_2

    return v1

    :cond_2
    const-wide/32 v0, 0x5265c00

    .line 108
    div-long/2addr v6, v0

    long-to-int v0, v6

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 117
    :cond_1
    instance-of v2, p1, Lcom/narvii/influencer/FanClub;

    if-eqz v2, :cond_2

    .line 118
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 119
    iget-object v2, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/narvii/influencer/FanClub;->fansStatus:I

    iget v3, p0, Lcom/narvii/influencer/FanClub;->fansStatus:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p1, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    iget-boolean v3, p0, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    .line 122
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    iget-object v2, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    .line 123
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public expiringDays()I
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 89
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    return v1

    :cond_2
    const-wide/32 v0, 0x5265c00

    .line 93
    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public hasSubscriptionBefore()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/narvii/influencer/FanClub;->fansStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isClosed()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
