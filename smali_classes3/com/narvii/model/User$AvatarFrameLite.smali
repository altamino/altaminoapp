.class public Lcom/narvii/model/User$AvatarFrameLite;
.super Lcom/narvii/model/NVObject;
.source "User.java"

# interfaces
.implements Lcom/narvii/model/User$IAvatarFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/model/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvatarFrameLite"
.end annotation


# instance fields
.field public frameId:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public ownershipStatus:I

.field public resourceUrl:Ljava/lang/String;

.field public status:I

.field public uid:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 668
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
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

    .line 724
    :cond_1
    instance-of v1, p1, Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v1, :cond_2

    .line 725
    check-cast p1, Lcom/narvii/model/User$AvatarFrameLite;

    .line 726
    iget-object p1, p1, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/narvii/model/User$AvatarFrameLite;->resourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 715
    iget v0, p0, Lcom/narvii/model/User$AvatarFrameLite;->version:I

    return v0
.end method

.method public hasExpired()Z
    .locals 2

    .line 732
    iget v0, p0, Lcom/narvii/model/User$AvatarFrameLite;->ownershipStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    return-object v0
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

    .line 700
    iget v0, p0, Lcom/narvii/model/User$AvatarFrameLite;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
