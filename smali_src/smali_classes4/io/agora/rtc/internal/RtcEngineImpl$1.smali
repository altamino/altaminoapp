.class Lio/agora/rtc/internal/RtcEngineImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/RtcEngineImpl;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/RtcEngineImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->this$0:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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
    const-string p2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    const-string v0, "RtcEngine"

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p2

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    :cond_0
    const-string p2, "device attached"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->this$0:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lio/agora/rtc/internal/RtcEngineImpl;->access$000(Lio/agora/rtc/internal/RtcEngineImpl;)V

    .line 33
    .line 34
    :cond_1
    const-string p2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p2

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    const-string p2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    :cond_2
    const-string p1, "device detached"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->this$0:Lio/agora/rtc/internal/RtcEngineImpl;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lio/agora/rtc/internal/RtcEngineImpl;->access$000(Lio/agora/rtc/internal/RtcEngineImpl;)V

    .line 59
    :cond_3
    return-void
.end method
