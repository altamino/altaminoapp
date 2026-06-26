.class public Lcom/narvii/influencer/FansInfo;
.super Lcom/narvii/model/NVObject;
.source "FansInfo.java"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;
.implements Lcom/narvii/model/Benefactor;


# instance fields
.field public expiredTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public fansStatus:I

.field public fansUserProfile:Lcom/narvii/model/User;

.field public isTipperAccessible:Z

.field public lastThankedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public totalTippedCoins:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/narvii/influencer/FansInfo;->isTipperAccessible:Z

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/influencer/FansInfo;->fansUserProfile:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getBenefactor()Lcom/narvii/model/User;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/influencer/FansInfo;->fansUserProfile:Lcom/narvii/model/User;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/influencer/FansInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isThanksSent()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/influencer/FansInfo;->lastThankedTime:Ljava/util/Date;

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

    .line 58
    iget-object v0, p0, Lcom/narvii/influencer/FansInfo;->uid:Ljava/lang/String;

    return-object v0
.end method
