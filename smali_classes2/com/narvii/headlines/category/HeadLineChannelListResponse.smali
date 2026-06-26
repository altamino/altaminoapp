.class public Lcom/narvii/headlines/category/HeadLineChannelListResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "HeadLineChannelListResponse.java"


# instance fields
.field public activeChannelList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/headlines/category/HeadLineChannel;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/headlines/category/HeadLineChannel;",
            ">;"
        }
    .end annotation
.end field

.field public inactiveChannelList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/headlines/category/HeadLineChannel;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/headlines/category/HeadLineChannel;",
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
