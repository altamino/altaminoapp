.class public Lcom/narvii/chat/video/RtcNotificationClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "rtc"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity()V

    .line 16
    return-void
.end method
