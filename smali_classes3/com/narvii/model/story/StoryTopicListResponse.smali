.class public Lcom/narvii/model/story/StoryTopicListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "StoryTopicListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/story/StoryTopic;",
        ">;"
    }
.end annotation


# instance fields
.field public allItemCount:I

.field public language:Ljava/lang/String;

.field public topicList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/story/StoryTopic;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/narvii/model/story/StoryTopicListResponse;->topicList:Ljava/util/List;

    return-object v0
.end method
