.class public Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;
.super Lcom/narvii/monetization/avatarframe/AvatarFrame;
.source "DefaultAvatarFrame.java"


# static fields
.field public static final DEFAULT_AVATARFRAME_ID:Ljava/lang/String; = "default"


# instance fields
.field public isMembership:Z


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrame;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isMembership:Z

    const-string v0, "default"

    .line 22
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "res://ic_default_avatar_frame_membership"

    goto :goto_0

    :cond_0
    const-string v0, "res://ic_default_avatar_frame"

    .line 23
    :goto_0
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    if-eqz p1, :cond_1

    const v0, 0x7f0f010d

    goto :goto_1

    :cond_1
    const v0, 0x7f0f0c38

    .line 24
    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    .line 26
    new-instance p2, Lcom/narvii/model/RestrictionInfo;

    invoke-direct {p2}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    iput-object p2, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 27
    iget-object p2, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    :goto_2
    iput p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    return-void
.end method

.method public static isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z
    .locals 1

    .line 41
    instance-of v0, p0, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
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
