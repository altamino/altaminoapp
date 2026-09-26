.class public Lcom/narvii/monetization/avatarframe/StubCurrentAvatarFrame;
.super Lcom/narvii/monetization/avatarframe/AvatarFrame;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/model/User$AvatarFrameLite;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrame;-><init>()V

    .line 4
    .line 5
    iget-object v0, p1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/model/User$AvatarFrameLite;->icon:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/model/User$AvatarFrameLite;->name:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/model/RestrictionInfo;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 26
    const/4 v0, 0x3

    .line 27
    .line 28
    iput v0, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 29
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
