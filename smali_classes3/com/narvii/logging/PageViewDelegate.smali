.class public abstract Lcom/narvii/logging/PageViewDelegate;
.super Ljava/lang/Object;
.source "PageViewDelegate.java"


# instance fields
.field draftId:Ljava/lang/String;

.field fullScreen:Z

.field lastResumePageName:Ljava/lang/String;

.field lastResumeTime:J

.field nvContext:Lcom/narvii/app/NVContext;

.field page:Lcom/narvii/logging/Page;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/narvii/logging/PageViewDelegate;->fullScreen:Z

    .line 28
    iput-object p1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    .line 29
    iput-object p2, p0, Lcom/narvii/logging/PageViewDelegate;->page:Lcom/narvii/logging/Page;

    .line 30
    iput-object p3, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
.end method

.method protected abstract logPageViewEvent()Z
.end method

.method public sendPageViewEvent(Z)V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->page:Lcom/narvii/logging/Page;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 49
    :cond_0
    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumePageName:Ljava/lang/String;

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->logPageViewEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "please add name for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 61
    :cond_2
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/narvii/post/StoryEditSessionManager;->onPageActiveChanged(Ljava/lang/String;Z)V

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->logPageViewEvent()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/narvii/logging/PageViewDelegate;->fullScreen:Z

    if-eqz v1, :cond_7

    if-nez p1, :cond_6

    .line 67
    sget-object v1, Lcom/narvii/logging/LogUtils;->lastPauseContext:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVContext;

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v1, v2}, Lcom/narvii/logging/LogUtils;->isParentContext(Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 72
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/narvii/logging/LogUtils;->lastPauseContext:Ljava/lang/ref/WeakReference;

    .line 74
    :cond_5
    sget-object v1, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_6
    sget-object v1, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumeTime:J

    :cond_8
    if-eqz v0, :cond_e

    .line 83
    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->logPageViewEvent()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 84
    iget-object v1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    if-eqz p1, :cond_9

    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageViewLaunch:Lcom/narvii/logging/ActSemantic;

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageViewQuit:Lcom/narvii/logging/ActSemantic;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    if-nez p1, :cond_b

    .line 86
    iget-wide v2, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumeTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumeTime:J

    sub-long v4, v2, v4

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_4

    .line 88
    :cond_b
    iput-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->lastResumePageName:Ljava/lang/String;

    .line 90
    :goto_4
    iget-object v0, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 91
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/post/StoryEditSessionManager;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "editSessionId"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    const-string v3, "storyDraftId"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 93
    :cond_c
    invoke-virtual {p0}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEventToThirdParty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 96
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/narvii/logging/PageViewDelegate;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 97
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_e
    :goto_5
    return-void
.end method

.method protected abstract sendPageViewEventToThirdParty()Z
.end method

.method public setDraftId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/logging/PageViewDelegate;->draftId:Ljava/lang/String;

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/narvii/logging/PageViewDelegate;->fullScreen:Z

    return-void
.end method

.method public setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/logging/PageViewDelegate;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method
