.class public Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;->liveLayerList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;

    .line 24
    .line 25
    iget v3, v2, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->userProfileCount:I

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;->liveLayerList:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPageListResponse;->liveLayerList:Ljava/util/List;

    .line 39
    return-object v0
.end method
