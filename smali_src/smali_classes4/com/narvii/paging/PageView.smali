.class public Lcom/narvii/paging/PageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/logging/Page;
.implements Lcom/narvii/app/NVContext;


# instance fields
.field private isActive:Z

.field private isResumed:Z

.field private isVisibleHint:Z

.field private lastResumeTime:J

.field nvContext:Lcom/narvii/app/NVContext;

.field private pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

.field pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

.field pvId:Ljava/lang/String;

.field private final refreshActive:Ljava/lang/Runnable;

.field sendThirdParty:Z

.field strategyObject:Lcom/narvii/model/StrategyObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/paging/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    .line 3
    new-instance p1, Lcom/narvii/paging/PageView$2;

    invoke-direct {p1, p0}, Lcom/narvii/paging/PageView$2;-><init>(Lcom/narvii/paging/PageView;)V

    iput-object p1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Lcom/narvii/paging/PageView$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p0, p0, p2}, Lcom/narvii/paging/PageView$1;-><init>(Lcom/narvii/paging/PageView;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/paging/PageView;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/paging/PageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/paging/PageView;->isActive:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/paging/PageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/paging/PageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/paging/PageView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->isActive:Z

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 12
    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public getContextId()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContextId()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/paging/PageView;->pvId:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/paging/PageView;->isActive:Z

    return v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected logPageViewEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    .line 6
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 29
    :goto_0
    return-void
.end method

.method public resetPvId()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/PageView;->getPageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/paging/PageView;->pvId:Ljava/lang/String;

    .line 17
    :cond_0
    return-void
.end method

.method public sendPageViewEventToThirdParty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->sendThirdParty:Z

    return-void
.end method

.method public setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public setStrategyObject(Lcom/narvii/model/StrategyObject;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    return-void
.end method

.method public setVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/PageView;->takeLogContextInfo()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/narvii/paging/PageView;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 11
    :cond_0
    return-void
.end method

.method public takeLogContextInfo()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->changeNextPageRefererIfNull(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 18
    :cond_0
    return-void
.end method
