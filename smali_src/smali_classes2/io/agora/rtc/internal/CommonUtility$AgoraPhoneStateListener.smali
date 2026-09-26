.class Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgoraPhoneStateListener"
.end annotation


# instance fields
.field private mSignalStrenth:Landroid/telephony/SignalStrength;

.field private phoneStatusNeedResume:Z

.field final synthetic this$0:Lio/agora/rtc/internal/CommonUtility;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/CommonUtility;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 9
    return-void
.end method

.method private invokeMethod(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrenth:Landroid/telephony/SignalStrength;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    new-array v2, v0, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrenth:Landroid/telephony/SignalStrength;

    .line 20
    .line 21
    new-array v2, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return p1

    .line 33
    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getAsuLevel()I
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "getAsuLevel"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "getLevel"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRssi()I
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "getDbm"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "incomingNumber"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->access$300(Lio/agora/rtc/internal/CommonUtility;)Ljava/lang/ref/WeakReference;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->access$100(Lio/agora/rtc/internal/CommonUtility;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 27
    const/4 p2, 0x0

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    const/16 v0, 0x16

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    if-eq p1, v1, :cond_2

    .line 35
    const/4 v2, 0x2

    .line 36
    .line 37
    if-eq p1, v2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->access$400()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "system phone call start"

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    iput-boolean v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 51
    .line 52
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, v0, v2}, Lio/agora/rtc/internal/CommonUtility;->onPhoneStateChanged(ZII)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->access$400()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    const-string/jumbo v2, "system phone call ring"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    iput-boolean v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 69
    .line 70
    iget-object p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, v0, v1}, Lio/agora/rtc/internal/CommonUtility;->onPhoneStateChanged(ZII)V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_3
    iget-boolean p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iput-boolean p2, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->access$400()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    const-string/jumbo p2, "system phone call end delay 1000ms"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    new-instance p1, Landroid/os/Handler;

    .line 93
    .line 94
    .line 95
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 96
    .line 97
    new-instance p2, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener$1;

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, p0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener$1;-><init>(Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;)V

    .line 101
    .line 102
    const-wide/16 v0, 0x3e8

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :cond_4
    :goto_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signalStrength"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->access$300(Lio/agora/rtc/internal/CommonUtility;)Ljava/lang/ref/WeakReference;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lio/agora/rtc/internal/CommonUtility;->access$100(Lio/agora/rtc/internal/CommonUtility;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 27
    .line 28
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrenth:Landroid/telephony/SignalStrength;

    .line 29
    :cond_1
    :goto_0
    return-void
.end method
