.class public Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;
.super Lcom/narvii/monetization/avatarframe/AvatarFrame;
.source "StubCurrentAvatarFrame.java"


# direct methods
.method public constructor <init>(Lcom/narvii/model/User$AvatarFrameLite;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrame;-><init>()V

    .line 15
    iget-object v0, p1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/narvii/model/User$AvatarFrameLite;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    .line 17
    iget-object p1, p1, Lcom/narvii/model/User$AvatarFrameLite;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    .line 19
    new-instance p1, Lcom/narvii/model/RestrictionInfo;

    invoke-direct {p1}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 20
    iget-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 v0, 0x3

    iput v0, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    return-void
.end method


# virtual methods
.method public isTotalOwned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUsable(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
