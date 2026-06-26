.class public Lcom/narvii/services/RtcServiceProvider;
.super Ljava/lang/Object;
.source "RtcServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/chat/rtc/RtcService;",
        ">;"
    }
.end annotation


# instance fields
.field rtcService:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/rtc/RtcService;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/services/RtcServiceProvider;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/rtc/RtcService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/RtcServiceProvider;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 35
    iget-object v0, p0, Lcom/narvii/services/RtcServiceProvider;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    new-instance v1, Lcom/narvii/services/RtcServiceProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/services/RtcServiceProvider$1;-><init>(Lcom/narvii/services/RtcServiceProvider;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->setRelaunchLiveChannelListener(Lcom/narvii/chat/rtc/RelaunchLiveChannelListener;)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/RtcServiceProvider;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/services/RtcServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 100
    instance-of p1, p1, Lcom/narvii/app/NVApplication;

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->onDestroy()V

    :cond_0
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RtcServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput-object v0, p2, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    .line 86
    instance-of p1, p1, Lcom/narvii/app/NVApplication;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->tryKeepAlive()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RtcServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 1

    .line 78
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p2, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RtcServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RtcServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 93
    instance-of p1, p1, Lcom/narvii/app/NVApplication;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->cancelNotification()V

    :cond_0
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RtcServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/RtcService;)V

    return-void
.end method
