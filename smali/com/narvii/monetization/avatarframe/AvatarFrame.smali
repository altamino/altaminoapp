.class public Lcom/narvii/monetization/avatarframe/AvatarFrame;
.super Lcom/narvii/model/StoreItemBaseObject;
.source "AvatarFrame.java"

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

    .line 17
    invoke-direct {p0}, Lcom/narvii/model/StoreItemBaseObject;-><init>()V

    return-void
.end method

.method public static parseToAvatarFrameLite(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Lcom/narvii/model/User$AvatarFrameLite;
    .locals 2

    if-eqz p0, :cond_2

    .line 114
    invoke-static {p0}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Lcom/narvii/model/User$AvatarFrameLite;

    invoke-direct {v0}, Lcom/narvii/model/User$AvatarFrameLite;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->resourceUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->resourceUrl:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->name:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->icon:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->uid:Ljava/lang/String;

    .line 123
    iget v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->status:I

    iput v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->status:I

    .line 124
    iget v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->version:I

    iput v1, v0, Lcom/narvii/model/User$AvatarFrameLite;->version:I

    .line 125
    iget-object p0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    if-eqz p0, :cond_1

    iget p0, p0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    iput p0, v0, Lcom/narvii/model/User$AvatarFrameLite;->ownershipStatus:I

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 105
    :cond_1
    instance-of v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v1, :cond_2

    .line 106
    check-cast p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 107
    iget-object p1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->resourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreIcon()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->version:I

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 56
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

    .line 81
    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
