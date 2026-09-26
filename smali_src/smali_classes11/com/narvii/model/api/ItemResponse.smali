.class public Lcom/narvii/model/api/ItemResponse;
.super Lcom/narvii/model/api/FeedResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/FeedResponse<",
        "Lcom/narvii/model/Item;",
        ">;"
    }
.end annotation


# instance fields
.field public inMyFavorites:I

.field public item:Lcom/narvii/model/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/FeedResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/Feed;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/model/api/ItemResponse;->object()Lcom/narvii/model/Item;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/model/Item;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/api/ItemResponse;->object()Lcom/narvii/model/Item;

    move-result-object v0

    return-object v0
.end method
