.class public Lcom/narvii/master/search/GlobalPostListResponse;
.super Lcom/narvii/headlines/HeadlineListResponse;
.source "GlobalPostListResponse.java"


# instance fields
.field public postList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/headlines/Headline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/headlines/Headline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/headlines/HeadlineListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHeadlinePostList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/headlines/Headline;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostListResponse;->postList:Ljava/util/List;

    return-object v0
.end method
