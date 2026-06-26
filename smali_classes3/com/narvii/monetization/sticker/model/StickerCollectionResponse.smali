.class public Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "StickerCollectionResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        ">;"
    }
.end annotation


# instance fields
.field public stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->object()Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object v0
.end method
