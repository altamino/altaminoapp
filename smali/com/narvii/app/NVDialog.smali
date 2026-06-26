.class public Lcom/narvii/app/NVDialog;
.super Landroid/app/Dialog;
.source "NVDialog.java"

# interfaces
.implements Lcom/narvii/logging/Page;
.implements Lcom/narvii/app/NVContext;


# instance fields
.field public draftId:Ljava/lang/String;

.field private nvContext:Lcom/narvii/app/NVContext;

.field pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

.field pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

.field pvId:Ljava/lang/String;

.field skipGeneralShowCheck:Z

.field strategyInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 90
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 86
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 82
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Lcom/narvii/app/NVContext;Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p1, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 40
    instance-of p2, p1, Lcom/narvii/app/NVFragment;

    if-eqz p2, :cond_0

    .line 41
    move-object p2, p1

    check-cast p2, Lcom/narvii/app/NVFragment;

    const-string p3, "__storyDraftId"

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 43
    :goto_0
    new-instance p3, Lcom/narvii/app/NVDialog$1;

    invoke-direct {p3, p0, p0, p0, p2}, Lcom/narvii/app/NVDialog$1;-><init>(Lcom/narvii/app/NVDialog;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/app/NVDialog;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 60
    iget-object p2, p0, Lcom/narvii/app/NVDialog;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/narvii/logging/PageViewDelegate;->setFullScreen(Z)V

    .line 61
    sget-object p2, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 62
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 64
    iput-object p2, p0, Lcom/narvii/app/NVDialog;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 65
    iget-object p2, p1, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 66
    new-instance p3, Lcom/narvii/logging/PageRefererInfo;

    invoke-direct {p3, p2}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/app/NVDialog;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 70
    :cond_2
    :goto_1
    sget-object p2, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/app/NVDialog;->strategyInfo:Ljava/lang/String;

    .line 71
    iget-object p2, p0, Lcom/narvii/app/NVDialog;->strategyInfo:Ljava/lang/String;

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p1, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/app/NVDialog;->strategyInfo:Ljava/lang/String;

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->resetPvId()V

    return-void
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 131
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVDialog;->onActiveChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 187
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->findTouchTargetView(Landroid/view/Window;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchTrack"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getContextId()J
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->pvId:Ljava/lang/String;

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

    .line 179
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->strategyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    return-void
.end method

.method protected resetPvId()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVDialog;->pvId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSkipGeneralShowCheck(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/narvii/app/NVDialog;->skipGeneralShowCheck:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "topActivity"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/app/NVDialog;->skipGeneralShowCheck:Z

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_2

    .line 106
    move-object v1, v0

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 111
    :cond_1
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 116
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVDialog;->onActiveChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
