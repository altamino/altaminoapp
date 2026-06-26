.class public Lcom/narvii/community/search/CommunityKeyPredictionListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "CommunityKeyPredictionListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/community/search/CommunitySearchKeyPrediction;",
        ">;"
    }
.end annotation


# instance fields
.field public suggestedKeywordList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/community/search/CommunitySearchKeyPrediction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/community/search/CommunitySearchKeyPrediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
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
            "Lcom/narvii/community/search/CommunitySearchKeyPrediction;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/narvii/community/search/CommunityKeyPredictionListResponse;->suggestedKeywordList:Ljava/util/List;

    return-object v0
.end method
