.class public Lcom/narvii/catalog/activity/RecentActivityResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "RecentActivityResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field public inMyFavoritesMapping:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Ljava/lang/Integer;
        keyAs = Ljava/lang/String;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public knowledgeBaseRequestList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/catalog/review/ItemSubmission;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/catalog/review/ItemSubmission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public authorMapping()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityResponse;->knowledgeBaseRequestList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/catalog/review/ItemSubmission;

    .line 42
    iget-object v3, v2, Lcom/narvii/catalog/review/ItemSubmission;->originalItem:Lcom/narvii/model/Item;

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v3}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/narvii/catalog/review/ItemSubmission;->operator:Lcom/narvii/model/User;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/narvii/catalog/activity/RecentActivityResponse;->knowledgeBaseRequestList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/catalog/review/ItemSubmission;

    .line 29
    iget-object v3, v2, Lcom/narvii/catalog/review/ItemSubmission;->originalItem:Lcom/narvii/model/Item;

    if-eqz v3, :cond_0

    .line 30
    iget-object v2, v2, Lcom/narvii/catalog/review/ItemSubmission;->modifiedTime:Ljava/util/Date;

    iput-object v2, v3, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
