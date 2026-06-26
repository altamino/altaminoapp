.class public Lcom/narvii/paging/PageView;
.super Landroid/widget/FrameLayout;
.source "PageView.java"

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

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/paging/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    .line 201
    new-instance p1, Lcom/narvii/paging/PageView$2;

    invoke-direct {p1, p0}, Lcom/narvii/paging/PageView$2;-><init>(Lcom/narvii/paging/PageView;)V

    iput-object p1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    .line 47
    new-instance p1, Lcom/narvii/paging/PageView$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p0, p0, p2}, Lcom/narvii/paging/PageView$1;-><init>(Lcom/narvii/paging/PageView;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/paging/PageView;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/paging/PageView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/paging/PageView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/paging/PageView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/paging/PageView;->isActive:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/paging/PageView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->isActive:Z

    return p1
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    :cond_0
    return-void
.end method

.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    return-void
.end method

.method public getContextId()J
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

    .line 122
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

    .line 75
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 185
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

    .line 150
    iget-object v0, p0, Lcom/narvii/paging/PageView;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    .line 197
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v0, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    .line 168
    iget-boolean v0, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0, v0}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public resetPvId()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/narvii/paging/PageView;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/paging/PageView;->pvId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public sendPageViewEventToThirdParty(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->sendThirdParty:Z

    return-void
.end method

.method public setNvContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public setStrategyObject(Lcom/narvii/model/StrategyObject;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    return-void
.end method

.method public setVisibleHint(Z)V
    .locals 1

    .line 177
    iput-boolean p1, p0, Lcom/narvii/paging/PageView;->isVisibleHint:Z

    .line 178
    iget-boolean p1, p0, Lcom/narvii/paging/PageView;->isResumed:Z

    if-eqz p1, :cond_0

    .line 179
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object p1, p0, Lcom/narvii/paging/PageView;->refreshActive:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/narvii/paging/PageView;->takeLogContextInfo()V

    .line 97
    iget-object v0, p0, Lcom/narvii/paging/PageView;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public takeLogContextInfo()V
    .locals 1

    .line 103
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->changeNextPageRefererIfNull(Lcom/narvii/app/NVContext;)V

    .line 104
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/narvii/paging/PageView;->strategyObject:Lcom/narvii/model/StrategyObject;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    :cond_0
    return-void
.end method
