.class public Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "AvatarFrameResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
        ">;"
    }
.end annotation


# instance fields
.field public avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;->object()Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/monetization/avatarframe/AvatarFrame;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    return-object v0
.end method
