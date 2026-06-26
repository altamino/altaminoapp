.class public Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "OnlineBrowsingPageListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
        ">;"
    }
.end annotation


# instance fields
.field public liveLayerList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;->liveLayerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    .line 23
    iget v3, v2, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->userProfileCount:I

    if-nez v3, :cond_0

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;->liveLayerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 30
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;->liveLayerList:Ljava/util/List;

    return-object v0
.end method
