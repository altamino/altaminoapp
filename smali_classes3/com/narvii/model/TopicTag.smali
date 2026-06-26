.class public Lcom/narvii/model/TopicTag;
.super Ljava/lang/Object;
.source "TopicTag.java"

# interfaces
.implements Lcom/narvii/widget/TagEditFlowView$Tag;


# instance fields
.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToStoryTop(Lcom/narvii/model/TopicTag;)Lcom/narvii/model/story/StoryTopic;
    .locals 2

    .line 30
    new-instance v0, Lcom/narvii/model/story/StoryTopic;

    invoke-direct {v0}, Lcom/narvii/model/story/StoryTopic;-><init>()V

    .line 31
    iget v1, p0, Lcom/narvii/model/TopicTag;->id:I

    iput v1, v0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 32
    iget-object p0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    iput-object p0, v0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static convertToStoryTopicList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/TopicTag;

    if-nez v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/narvii/model/TopicTag;->convertToStoryTop(Lcom/narvii/model/TopicTag;)Lcom/narvii/model/story/StoryTopic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static create(Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/model/TopicTag;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    new-instance v0, Lcom/narvii/model/TopicTag;

    invoke-direct {v0}, Lcom/narvii/model/TopicTag;-><init>()V

    .line 55
    iget v1, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    iput v1, v0, Lcom/narvii/model/TopicTag;->id:I

    .line 56
    invoke-virtual {p0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static createList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    if-nez v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v1}, Lcom/narvii/model/TopicTag;->create(Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/model/TopicTag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 69
    const-class v0, Lcom/narvii/model/TopicTag;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lcom/narvii/model/TopicTag;

    .line 73
    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTagTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
