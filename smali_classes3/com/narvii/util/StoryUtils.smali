.class public Lcom/narvii/util/StoryUtils;
.super Ljava/lang/Object;
.source "StoryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;Z)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, p2, v0}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;ZZ)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;ZZ)Lcom/narvii/logging/LogEvent$Builder;
    .locals 3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/nvplayer/VideoLogHelper;->getStoryPlayId()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentWindowIndex()I

    move-result v2

    if-gez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 31
    :goto_0
    invoke-static {p0}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object p0

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 32
    :cond_1
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    const-string p2, "storyPlayId"

    invoke-virtual {p0, p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    .line 33
    invoke-static {p1, v1}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2

    const-string p2, "sceneId"

    .line 35
    invoke-virtual {p0, p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_1

    :cond_2
    const-string p2, "currentSceneId"

    .line 37
    invoke-virtual {p0, p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    :goto_1
    return-object p0
.end method

.method public static getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    if-ltz p1, :cond_2

    if-ge p1, v1, :cond_2

    .line 21
    iget-object p0, p0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/model/Scene;

    if-nez p0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method
