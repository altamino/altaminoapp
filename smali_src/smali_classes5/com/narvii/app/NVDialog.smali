.class public Lcom/narvii/app/NVDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

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

    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 14
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 13
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Lcom/narvii/app/NVContext;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 2
    instance-of p2, p1, Lcom/narvii/app/NVFragment;

    if-eqz p2, :cond_0

    .line 3
    move-object p2, p1

    check-cast p2, Lcom/narvii/app/NVFragment;

    const-string p3, "__storyDraftId"

    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    new-instance p3, Lcom/narvii/app/NVDialog$1;

    invoke-direct {p3, p0, p0, p0, p2}, Lcom/narvii/app/NVDialog$1;-><init>(Lcom/narvii/app/NVDialog;Lcom/narvii/app/NVContext;Lcom/narvii/logging/Page;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/app/NVDialog;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p3, p2}, Lcom/narvii/logging/PageViewDelegate;->setFullScreen(Z)V

    .line 6
    sget-object p2, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 7
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    move-result-object p1

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/narvii/app/NVDialog;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object p2, p1, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 9
    new-instance p3, Lcom/narvii/logging/PageRefererInfo;

    invoke-direct {p3, p2}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/app/NVDialog;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 10
    :cond_2
    :goto_1
    sget-object p2, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/app/NVDialog;->strategyInfo:Ljava/lang/String;

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p1, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/app/NVDialog;->strategyInfo:Ljava/lang/String;

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->resetPvId()V

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
    .locals 0
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVDialog;->onActiveChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->findTouchTargetView(Landroid/view/Window;)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v1, "TouchTrack"

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/util/TouchTrackUtils;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public getContextId()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVDialog;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getPvId()Ljava/lang/String;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->pageViewDelegate:Lcom/narvii/logging/PageViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/logging/PageViewDelegate;->sendPageViewEvent(Z)V

    .line 6
    return-void
.end method

.method protected resetPvId()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->getPageName()Ljava/lang/String;

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
    iput-object v0, p0, Lcom/narvii/app/NVDialog;->pvId:Ljava/lang/String;

    .line 17
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

    iput-boolean p1, p0, Lcom/narvii/app/NVDialog;->skipGeneralShowCheck:Z

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string v1, "topActivity"

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/util/services/TopActivityService;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/app/NVDialog;->skipGeneralShowCheck:Z

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    move-object v1, v0

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    return-void

    .line 39
    .line 40
    :cond_1
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->getPageName()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    new-instance v1, Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    const-string v2, "name"

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 75
    .line 76
    .line 77
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v2}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    const-string v2, "page_view"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    :cond_3
    const/4 v0, 0x1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVDialog;->onActiveChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/narvii/app/NVDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 8
    :cond_0
    return-void
.end method
