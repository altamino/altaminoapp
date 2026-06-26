.class public Lcom/narvii/topic/TopicBookmarkStub;
.super Lcom/narvii/model/NVObject;
.source "TopicBookmarkStub.java"


# static fields
.field public static final ACTION_BOOKMARK_TOPIC:Ljava/lang/String; = "bookmark_topic"


# instance fields
.field public action:Ljava/lang/String;

.field public attachObj:Ljava/lang/Object;

.field public id:Ljava/lang/String;

.field public topic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/topic/TopicBookmarkStub;->id:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/topic/TopicBookmarkStub;->topic:Lcom/narvii/model/story/StoryTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->status()I

    move-result v0

    :goto_0
    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/topic/TopicBookmarkStub;->topic:Lcom/narvii/model/story/StoryTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->uid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
