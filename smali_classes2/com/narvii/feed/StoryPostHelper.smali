.class public Lcom/narvii/feed/StoryPostHelper;
.super Lcom/narvii/feed/BackgroundPostHelper;
.source "StoryPostHelper.java"


# instance fields
.field coverImageUrl:Ljava/lang/String;

.field storyMediaGot:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/feed/BackgroundPostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    instance-of v1, v0, Lcom/narvii/blog/post/BlogPost;

    if-eqz v1, :cond_4

    .line 29
    iget-boolean v1, p0, Lcom/narvii/feed/StoryPostHelper;->storyMediaGot:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/narvii/feed/StoryPostHelper;->storyMediaGot:Z

    .line 31
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v0}, Lcom/narvii/post/StoryUtils;->getStoryCoverImageMedia(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/feed/StoryPostHelper;->coverImageUrl:Ljava/lang/String;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/StoryPostHelper;->coverImageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "story-cover"

    return-object p1

    .line 41
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/narvii/post/PostHelper;->post:Lcom/narvii/post/PostObject;

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Scene;

    .line 43
    iget-object v2, v2, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    iget-object v2, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "story"

    return-object p1

    .line 51
    :cond_4
    invoke-super {p0, p1}, Lcom/narvii/feed/BackgroundPostHelper;->getPhotoUploadTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
