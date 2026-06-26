.class public Lcom/narvii/item/detail/TagRelatedListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "TagRelatedListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field public tagRelatedObjects:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentUsing = Lcom/narvii/model/Feed$FeedDeserializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/narvii/item/detail/TagRelatedListResponse;->tagRelatedObjects:Ljava/util/List;

    return-object v0
.end method
