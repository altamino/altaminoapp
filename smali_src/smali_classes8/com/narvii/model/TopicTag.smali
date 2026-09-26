.class public Lcom/narvii/model/TopicTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/TagEditFlowView$Tag;


# instance fields
.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static convertToStoryTop(Lcom/narvii/model/TopicTag;)Lcom/narvii/model/story/StoryTopic;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/story/StoryTopic;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/model/TopicTag;->id:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p0, v0, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 14
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/TopicTag;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v1}, Lcom/narvii/model/TopicTag;->convertToStoryTop(Lcom/narvii/model/TopicTag;)Lcom/narvii/model/story/StoryTopic;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method

.method public static create(Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/model/TopicTag;
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/model/TopicTag;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/model/TopicTag;-><init>()V

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 12
    .line 13
    iput v1, v0, Lcom/narvii/model/TopicTag;->id:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    iput-object p0, v0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    .line 20
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v1}, Lcom/narvii/model/TopicTag;->create(Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/model/TopicTag;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    check-cast p1, Lcom/narvii/model/TopicTag;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public getTagTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/TopicTag;->title:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
