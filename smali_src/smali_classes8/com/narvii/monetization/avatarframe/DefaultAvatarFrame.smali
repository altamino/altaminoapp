.class public Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;
.super Lcom/narvii/monetization/avatarframe/AvatarFrame;
.source "SourceFile"


# static fields
.field public static final DEFAULT_AVATARFRAME_ID:Ljava/lang/String; = "default"


# instance fields
.field public isMembership:Z


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrame;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isMembership:Z

    .line 6
    .line 7
    const-string v0, "default"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, "res://ic_default_avatar_frame_membership"

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v0, "res://ic_default_avatar_frame"

    .line 17
    .line 18
    :goto_0
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->icon:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    const v0, 0x7f120142

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    goto :goto_2

    .line 29
    .line 30
    .line 31
    :cond_1
    const v0, 0x7f120d66

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :goto_2
    iput-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->name:Ljava/lang/String;

    .line 35
    const/4 p2, 0x0

    .line 36
    .line 37
    iput-boolean p2, p0, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    .line 38
    .line 39
    new-instance p2, Lcom/narvii/model/RestrictionInfo;

    .line 40
    .line 41
    .line 42
    invoke-direct {p2}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    .line 43
    .line 44
    iput-object p2, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    const/4 p1, 0x2

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    const/4 p1, 0x3

    .line 50
    .line 51
    :goto_3
    iput p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 52
    return-void
.end method

.method public static isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v0, "default"

    .line 9
    .line 10
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
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
