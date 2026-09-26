.class public Lcom/narvii/influencer/FanClub;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 7
    return-void
.end method


# virtual methods
.method public daysExpired()I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v0, v2, v4

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    return v1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v6

    .line 22
    sub-long/2addr v6, v2

    .line 23
    .line 24
    cmp-long v0, v6, v4

    .line 25
    .line 26
    if-gtz v0, :cond_2

    .line 27
    return v1

    .line 28
    .line 29
    .line 30
    :cond_2
    const-wide/32 v0, 0x5265c00

    .line 31
    div-long/2addr v6, v0

    .line 32
    long-to-int v0, v6

    .line 33
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    instance-of v2, p1, Lcom/narvii/influencer/FanClub;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 25
    .line 26
    iget-object v2, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget v2, p1, Lcom/narvii/influencer/FanClub;->fansStatus:I

    .line 37
    .line 38
    iget v3, p0, Lcom/narvii/influencer/FanClub;->fansStatus:I

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-boolean v2, p1, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    .line 43
    .line 44
    iget-boolean v3, p0, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    iget-object v2, p1, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object p1, p1, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    move v0, v1

    .line 68
    :cond_2
    :goto_0
    return v0
.end method

.method public expiringDays()I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v0, v2, v4

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    return v1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v6

    .line 22
    sub-long/2addr v2, v6

    .line 23
    .line 24
    cmp-long v0, v2, v4

    .line 25
    .line 26
    if-gtz v0, :cond_2

    .line 27
    return v1

    .line 28
    .line 29
    .line 30
    :cond_2
    const-wide/32 v0, 0x5265c00

    .line 31
    div-long/2addr v2, v0

    .line 32
    long-to-int v0, v2

    .line 33
    return v0
.end method

.method public hasSubscriptionBefore()Z
    .locals 1

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

    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/influencer/FanClub;->expiredTime:Ljava/util/Date;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
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
