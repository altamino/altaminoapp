.class public Lcom/narvii/monetization/store/data/ShareRequestListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "ShareRequestListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/monetization/store/data/ShareRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public shareRequestCount:I

.field public shareRequestList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/monetization/store/data/ShareRequest;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/ShareRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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
            "Lcom/narvii/monetization/store/data/ShareRequest;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequestListResponse;->shareRequestList:Ljava/util/List;

    return-object v0
.end method
