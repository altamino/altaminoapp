.class public Lcom/narvii/livelayer/category/OnlineCategoryListResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "OnlineCategoryListResponse.java"


# instance fields
.field public liveLayerList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/livelayer/category/OnlineCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/category/OnlineCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
