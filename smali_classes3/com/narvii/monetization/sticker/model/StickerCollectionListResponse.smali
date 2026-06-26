.class public Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "StickerCollectionListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        ">;"
    }
.end annotation


# instance fields
.field public stickerCollectionCount:I

.field public stickerCollectionList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/monetization/sticker/model/StickerCollection;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
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
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;->stickerCollectionList:Ljava/util/List;

    return-object v0
.end method
