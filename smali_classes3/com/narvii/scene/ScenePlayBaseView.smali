.class public Lcom/narvii/scene/ScenePlayBaseView;
.super Landroid/widget/FrameLayout;
.source "ScenePlayBaseView.java"

# interfaces
.implements Lcom/narvii/scene/ScenePlayView;
.implements Lcom/narvii/scene/SceneInteractLogView;


# instance fields
.field protected isActive:Z

.field protected isPreview:Z

.field protected scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

.field protected showId:Ljava/lang/String;

.field protected startTime:J

.field protected story:Lcom/narvii/model/Blog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->story:Lcom/narvii/model/Blog;

    iget-boolean v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isPreview:Z

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;ZZ)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public logEnd()V
    .locals 0

    return-void
.end method

.method public logStart()V
    .locals 2

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    return-void
.end method

.method public setStory(Lcom/narvii/model/Blog;ZLcom/narvii/scene/ScenePlayListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->story:Lcom/narvii/model/Blog;

    .line 39
    iput-object p3, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    .line 40
    iput-boolean p2, p0, Lcom/narvii/scene/ScenePlayBaseView;->isPreview:Z

    return-void
.end method
