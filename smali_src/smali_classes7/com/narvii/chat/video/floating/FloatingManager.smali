.class public Lcom/narvii/chat/video/floating/FloatingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/call/CallStatusChangeListener;
.implements Lcom/narvii/chat/video/events/LiveChannelChangeListener;
.implements Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;
.implements Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;


# static fields
.field public static final SHOWING_WINDOW_TYPE_AUDIO:I = 0x2

.field public static final SHOWING_WINDOW_TYPE_SR:I = 0x3

.field public static final SHOWING_WINDOW_TYPE_VIDEO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FloatingManager"

.field private static final TIME_LEFT_ENDING:J = 0x7530L

.field private static audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

.field private static audioWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private static mWindowManager:Landroid/view/WindowManager;

.field private static srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

.field private static srWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private static threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

.field private static threadWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private static videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

.field private static videoWindowParams:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field private callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

.field callScreenService:Lcom/narvii/chat/call/CallScreenService;

.field private communityString:Ljava/lang/String;

.field context:Landroid/content/Context;

.field private enterAutoEnding:Z

.field floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

.field private floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

.field private floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

.field private fromGlobalChat:Z

.field private hideDrawer:Z

.field private isCreator:Z

.field leaveChannelRunnable:Ljava/lang/Runnable;

.field private requireAccountReceiver:Landroid/content/BroadcastReceiver;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private showingWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/video/floating/FloatingManager$3;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/floating/FloatingManager$3;-><init>(Lcom/narvii/chat/video/floating/FloatingManager;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 17
    .line 18
    new-instance p2, Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/chat/video/floating/FloatingManager$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/narvii/chat/video/floating/FloatingManager$1;-><init>(Lcom/narvii/chat/video/floating/FloatingManager;)V

    .line 29
    .line 30
    iput-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    new-instance p3, Landroid/content/IntentFilter;

    .line 39
    .line 40
    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 41
    .line 42
    .line 43
    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    return-object p0
.end method

.method private addLiveChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 23
    return-void
.end method

.method private createSRWindow()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d0298

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 28
    .line 29
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0704c7

    .line 35
    .line 36
    .line 37
    const v1, 0x7f0704c6

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 44
    .line 45
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 46
    .line 47
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    :cond_1
    return-void
.end method

.method private createThreadWindow()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d0299

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/chat/video/floating/FloatingManager$2;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/floating/FloatingManager$2;-><init>(Lcom/narvii/chat/video/floating/FloatingManager;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 31
    .line 32
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    .line 37
    const v0, 0x7f070514

    .line 38
    .line 39
    .line 40
    const v1, 0x7f070513

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 49
    .line 50
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    :cond_1
    return-void
.end method

.method private createVideoWindow()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d029a

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 28
    .line 29
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    .line 34
    const v0, 0x7f070548

    .line 35
    .line 36
    .line 37
    const v1, 0x7f070547

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 44
    .line 45
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    .line 51
    move-result v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->setIsLauncher(Z)V

    .line 55
    .line 56
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 57
    .line 58
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    :cond_1
    return-void
.end method

.method private getCurLiveChannelThreadId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getCurLiveChannelInfo()Landroid/os/Bundle;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    const-string v1, "threadId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "window"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Landroid/view/WindowManager;

    .line 13
    .line 14
    sput-object p0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 15
    .line 16
    :cond_0
    sget-object p0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 17
    return-object p0
.end method

.method private getWindowParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 22
    move-result v0

    .line 23
    .line 24
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 28
    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v4, 0x1a

    .line 32
    .line 33
    if-lt v3, v4, :cond_0

    .line 34
    .line 35
    const/16 v4, 0x7f6

    .line 36
    .line 37
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    const/16 v4, 0x7d2

    .line 41
    .line 42
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 43
    .line 44
    :goto_0
    const/16 v4, 0x1a8

    .line 45
    .line 46
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 47
    .line 48
    const/16 v4, 0x1c

    .line 49
    .line 50
    if-lt v3, v4, :cond_1

    .line 51
    const/4 v3, 0x1

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/util/d;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 55
    .line 56
    :cond_1
    const/16 v3, 0x33

    .line 57
    .line 58
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    const/4 v3, -0x2

    .line 60
    .line 61
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result v3

    .line 72
    .line 73
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    move-result v3

    .line 84
    .line 85
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 86
    .line 87
    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    move-result p2

    .line 96
    sub-int/2addr v0, p2

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    const v3, 0x7f0701c6

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    move-result p2

    .line 110
    sub-int/2addr v0, p2

    .line 111
    .line 112
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 113
    .line 114
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    move-result p1

    .line 123
    sub-int/2addr v1, p1

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    const p2, 0x7f0701c5

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    move-result p1

    .line 137
    sub-int/2addr v1, p1

    .line 138
    .line 139
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 140
    return-object v2
.end method

.method private recordMainSigChannel()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 12
    return-void
.end method

.method private removeChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method private themeBackground(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    const-string v2, "themePack"

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 32
    .line 33
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 34
    .line 35
    sget-object v2, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method private themeColor()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "themePack"

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 23
    .line 24
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x3

    .line 30
    .line 31
    new-array v1, v1, [F

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 35
    const/4 v0, 0x2

    .line 36
    .line 37
    aget v2, v1, v0

    .line 38
    .line 39
    .line 40
    const v3, 0x3f59999a    # 0.85f

    .line 41
    mul-float/2addr v2, v3

    .line 42
    .line 43
    aput v2, v1, v0

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 47
    move-result v0

    .line 48
    .line 49
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 53
    return-object v1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method private updatePrivateCallLayout()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout(I)V

    return-void
.end method

.method private updatePrivateCallLayout(I)V
    .locals 8

    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getPresenterCount(Ljava/util/Collection;)I

    move-result v1

    iget-boolean v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_1
    new-instance v4, Lcom/narvii/chat/util/ChatHelper;

    iget-object v5, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v4, v0}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object v0

    sget-object v4, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, -0x1

    if-eqz v4, :cond_5

    if-eq p1, v7, :cond_2

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result p1

    if-nez p1, :cond_4

    int-to-float p1, v1

    cmpl-float p1, p1, v6

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move p1, v5

    .line 8
    :goto_3
    invoke-virtual {v4, v2, v0, p1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->updateVoiceViews(ZLcom/narvii/model/User;I)V

    goto :goto_6

    :cond_5
    sget-object v4, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-eqz v4, :cond_9

    if-eq p1, v7, :cond_6

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result p1

    if-nez p1, :cond_8

    int-to-float p1, v1

    cmpl-float p1, p1, v6

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    move p1, v3

    goto :goto_5

    :cond_8
    :goto_4
    move p1, v5

    .line 10
    :goto_5
    invoke-virtual {v4, v2, v0, p1}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->updateVideoViews(ZLcom/narvii/model/User;I)V

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method public createAudioWindow()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 3
    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d0297

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 32
    .line 33
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 34
    .line 35
    .line 36
    const v1, 0x7f0a01c8

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    const v2, 0x7f070546

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    .line 73
    move-result v1

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    const v3, 0x7f070544

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    .line 82
    move-result v2

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v1, v2}, Lcom/narvii/chat/video/floating/FloatingManager;->themeBackground(II)Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->themeColor()Landroid/graphics/drawable/Drawable;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 105
    .line 106
    const/high16 v2, -0x78000000

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    :cond_3
    :goto_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 120
    .line 121
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 122
    .line 123
    if-nez v0, :cond_4

    .line 124
    .line 125
    .line 126
    const v0, 0x7f070548

    .line 127
    .line 128
    .line 129
    const v1, 0x7f070547

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 136
    .line 137
    :cond_4
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    .line 143
    move-result v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->setIsLauncher(Z)V

    .line 147
    .line 148
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 149
    .line 150
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 154
    :cond_5
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 16
    :cond_0
    return-void
.end method

.method public getCommunityString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->communityString:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getFloatingThread()Lcom/narvii/chat/video/floating/CommunityThread;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    return-object v0
.end method

.method public getIsChannelCreator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    return v0
.end method

.method public getShowingWindowType()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    return v0
.end method

.method public isFromGlobalChat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->fromGlobalChat:Z

    return v0
.end method

.method public isHideDrawer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->hideDrawer:Z

    return v0
.end method

.method public onCallStatusChanged(I)V
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    const v2, 0x7f1201d7

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->sendNotAnswerRequest()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x7

    .line 61
    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    const v0, 0x7f1201d3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_2
    const/16 v0, 0xa

    .line 111
    .line 112
    if-ne p1, v0, :cond_3

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    const v0, 0x7f1201d6

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 131
    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    if-eqz p1, :cond_3

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 147
    .line 148
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 158
    :cond_3
    :goto_0
    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/chat/call/CallScreenService;->isEnding()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    return-void

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 35
    .line 36
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 37
    .line 38
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannelKeepWindow(ILjava/lang/String;)V

    .line 42
    .line 43
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyForceQuit(I)V

    .line 49
    .line 50
    :cond_1
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyForceQuit(I)V

    .line 56
    .line 57
    :cond_2
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->notifyForceQuit(I)V

    .line 63
    .line 64
    :cond_3
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-boolean p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout()V

    .line 20
    .line 21
    :cond_0
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, p4}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 33
    .line 34
    :cond_1
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p4}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 46
    :cond_2
    return-void
.end method

.method public onTotalVolumeChanged(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/signalling/SignallingChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/rtc/ChannelUserWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 14
    .line 15
    :cond_0
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 27
    .line 28
    :cond_1
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onHostBadConnection(Z)V

    .line 52
    .line 53
    :cond_2
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 63
    :cond_3
    return-void
.end method

.method public removeAllFloatingWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAudioFloatingWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeVideoFloatingWindow()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeSRFloatingWindow()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    .line 13
    return-void
.end method

.method public removeAudioFloatingWindow()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->enterAutoEnding:Z

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 62
    .line 63
    sput-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 64
    :cond_2
    const/4 v0, -0x1

    .line 65
    .line 66
    iput v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 67
    .line 68
    iput-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 69
    return-void
.end method

.method public removeSRFloatingWindow()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "screenRoom"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 36
    .line 37
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeVideoPlayListner(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 41
    .line 42
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removePlayListChangeListener(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 46
    .line 47
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    .line 51
    .line 52
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->enterAutoEnding:Z

    .line 59
    .line 60
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 68
    const/4 v1, 0x0

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 85
    .line 86
    sput-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 87
    :cond_1
    const/4 v0, -0x1

    .line 88
    .line 89
    iput v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 90
    .line 91
    iput-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 92
    return-void
.end method

.method public removeThreadFloatingWindow()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    .line 4
    .line 5
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 24
    :cond_0
    return-void
.end method

.method public removeVideoFloatingWindow()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->enterAutoEnding:Z

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 51
    .line 52
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    .line 57
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    .line 59
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 63
    .line 64
    sput-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 65
    :cond_2
    const/4 v0, -0x1

    .line 66
    .line 67
    iput v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 68
    .line 69
    iput-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 70
    return-void
.end method

.method public setCommunityString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->communityString:Ljava/lang/String;

    return-void
.end method

.method public setFloatingClickEvent(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    return-void
.end method

.method public setHideDrawer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->hideDrawer:Z

    return-void
.end method

.method public setIsChannelCreator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    return-void
.end method

.method public setIsFromGlobalChat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->fromGlobalChat:Z

    return-void
.end method

.method public showAudioFloatingWindow()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createAudioWindow()V

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "FloatingManager"

    .line 24
    .line 25
    const-string v1, "create floating window for video error"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    :cond_1
    const/4 v1, 0x2

    .line 31
    .line 32
    iput v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 33
    .line 34
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    .line 36
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->recordMainSigChannel()V

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyMutedListChanged(Ljava/util/Set;)V

    .line 54
    .line 55
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout()V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 90
    move-result v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->onCallStatusChanged(I)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 103
    :cond_2
    :goto_0
    return-void
.end method

.method public showSRFloatingWindow()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createSRWindow()V

    .line 19
    .line 20
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "FloatingManager"

    .line 25
    .line 26
    const-string v1, "create floating window for video error"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v1, 0x3

    .line 32
    .line 33
    iput v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 34
    .line 35
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    .line 37
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->recordMainSigChannel()V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v1, "screenRoom"

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->setUpHostView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getScreenRoomHostUser()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 87
    move-result-object v2

    .line 88
    const/4 v3, 0x0

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    iget-object v1, v1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    move-object v1, v3

    .line 99
    .line 100
    :goto_0
    if-eqz v2, :cond_4

    .line 101
    .line 102
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    iget-object v3, v2, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 107
    .line 108
    :cond_4
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v1, v3}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->setUpViewerView(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 112
    .line 113
    :goto_1
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 117
    .line 118
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    .line 122
    .line 123
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V

    .line 127
    .line 128
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 132
    .line 133
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayList()Lcom/narvii/model/PlayList;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    .line 141
    .line 142
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isBuffering()Z

    .line 146
    move-result v2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onBuffering(Z)V

    .line 150
    .line 151
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentUserSeeked()Z

    .line 155
    move-result v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onUserSeeked(Z)V

    .line 159
    .line 160
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly()Z

    .line 164
    move-result v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onHostAudioOnlyChanged(Z)V

    .line 168
    .line 169
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 179
    :cond_5
    :goto_2
    return-void
.end method

.method public showThreadFloatingWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v1, p1, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createThreadWindow()V

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    return-void

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/ThreadFloatingLayout;->setThread(Lcom/narvii/chat/video/floating/CommunityThread;)V

    .line 32
    .line 33
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 36
    .line 37
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public showVideoFloatingWindow()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createVideoWindow()V

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "FloatingManager"

    .line 24
    .line 25
    const-string v1, "create floating window for video error"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    .line 32
    iput v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 33
    .line 34
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    .line 36
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->recordMainSigChannel()V

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyMutedListChanged(Ljava/util/Set;)V

    .line 54
    .line 55
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 87
    move-result v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->onCallStatusChanged(I)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout()V

    .line 103
    :cond_2
    :goto_0
    return-void
.end method
