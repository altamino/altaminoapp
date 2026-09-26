.class Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetBroadcastReceiver"
.end annotation


# instance fields
.field private isRegistered:Z

.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->isRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public getRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    const-string p1, "state"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    const/4 v0, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result p1

    .line 26
    .line 27
    const-string v1, "AudioRoute"

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    const-string p1, "microphone"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    move-result p1

    .line 37
    .line 38
    if-ne p1, v2, :cond_0

    .line 39
    .line 40
    const-string p1, "Headset w/ mic connected"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 46
    const/4 p2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2, p2}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    const-string p1, "Headset w/o mic connected"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 58
    const/4 p2, 0x2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2, p2}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    if-nez p1, :cond_2

    .line 65
    .line 66
    const-string p1, "Headset disconnected"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2, v0}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    const-string v0, "Headset unknown event detected, state="

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_3
    :goto_0
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReg"
        }
    .end annotation

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->isRegistered:Z

    return-void
.end method
