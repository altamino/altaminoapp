.class public Lcom/narvii/chat/video/RtcNotificationClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RtcNotificationClickReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "rtc"

    .line 19
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 20
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity()V

    return-void
.end method
