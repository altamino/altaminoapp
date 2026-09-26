.class public Lcom/narvii/topic/TopicNotificationStub;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# static fields
.field public static final ACTION_BOOKMARK_STATE_CHANGE:Ljava/lang/String; = "bookmark_state_change"


# instance fields
.field public action:Ljava/lang/String;

.field public attachObj:Ljava/lang/Object;

.field public id:Ljava/lang/String;

.field public topic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/TopicNotificationStub;->id:Ljava/lang/String;

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->status()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->uid()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method
