.class public Lcom/narvii/monetization/avatarframe/AvatarFrameListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "AvatarFrameListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
        ">;"
    }
.end annotation


# instance fields
.field public avatarFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameListResponse;->avatarFrameList:Ljava/util/List;

    return-object v0
.end method
