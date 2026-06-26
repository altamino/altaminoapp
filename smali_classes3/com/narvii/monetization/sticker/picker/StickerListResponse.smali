.class public Lcom/narvii/monetization/sticker/picker/StickerListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "StickerListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Sticker;",
        ">;"
    }
.end annotation


# instance fields
.field public stickerList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Sticker;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
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
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerListResponse;->stickerList:Ljava/util/List;

    return-object v0
.end method
