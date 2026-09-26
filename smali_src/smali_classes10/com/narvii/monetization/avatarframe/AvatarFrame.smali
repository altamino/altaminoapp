.class public Lcom/narvii/monetization/avatarframe/AvatarFrame;
.super Lcom/narvii/model/StoreItemBaseObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/model/User$IAvatarFrame;


# instance fields
.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public frameId:Ljava/lang/String;

.field public frameType:I

.field public icon:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public resourceUrl:Ljava/lang/String;

.field public status:I

.field public uid:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/StoreItemBaseObject;-><init>()V

    .line 4
    return-void
.end method

.method public static parseToAvatarFrameLite(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Lcom/narvii/model/User$AvatarFrameLite;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/model/User$AvatarFrameLite;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/model/User$AvatarFrameLite;-><init>()V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->resourceUrl:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->resourceUrl:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->name:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->icon:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->uid:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->uid:Ljava/lang/String;

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->status:I

    .line 37
    .line 38
    iput v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->status:I

    .line 39
    .line 40
    iget v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->version:I

    .line 41
    .line 42
    iput v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->version:I

    .line 43
    .line 44
    iget-object p0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    iget p0, p0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x1

    .line 51
    .line 52
    :goto_0
    iput p0, v0, Lcom/narvii/model/User$AvatarFrameLite;->ownershipStatus:I

    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    if-ne p1, p0, :cond_1

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_1
    instance-of v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_2
    return v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->resourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->version:I

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x7a

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
