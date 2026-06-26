.class public Lcom/narvii/chat/video/floating/FloatingManager;
.super Ljava/lang/Object;
.source "FloatingManager.java"

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

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    new-instance v0, Lcom/narvii/chat/video/floating/FloatingManager$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/floating/FloatingManager$3;-><init>(Lcom/narvii/chat/video/floating/FloatingManager;)V

    iput-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    .line 101
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 103
    iput-object p3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    .line 104
    new-instance p2, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 105
    new-instance p2, Lcom/narvii/chat/video/floating/FloatingManager$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/floating/FloatingManager$1;-><init>(Lcom/narvii/chat/video/floating/FloatingManager;)V

    iput-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/floating/FloatingManager;)Lcom/narvii/chat/video/floating/CommunityThread;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    return-object p0
.end method

.method private addLiveChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 635
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 639
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V

    .line 640
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->addChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    return-void
.end method

.method private createSRWindow()V
    .locals 3

    .line 317
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b026e

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/floating/SRFloatingLayout;

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    .line 320
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 321
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const v0, 0x7f070293

    const v1, 0x7f070292

    .line 322
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 324
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private createThreadWindow()V
    .locals 3

    .line 365
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b026f

    const/4 v2, 0x0

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    .line 368
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    new-instance v1, Lcom/narvii/chat/video/floating/FloatingManager$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/video/floating/FloatingManager$2;-><init>(Lcom/narvii/chat/video/floating/FloatingManager;)V

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 390
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const v0, 0x7f0702d1

    const v1, 0x7f0702d0

    .line 391
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 393
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private createVideoWindow()V
    .locals 3

    .line 304
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0270

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    .line 307
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 308
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const v0, 0x7f070310

    const v1, 0x7f07030f

    .line 309
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 311
    :cond_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->setIsLauncher(Z)V

    .line 312
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private getCurLiveChannelThreadId()Ljava/lang/String;
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getCurLiveChannelInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "threadId"

    .line 512
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 516
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    .line 518
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    .line 520
    :cond_0
    sget-object p0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private getWindowParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 160
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 161
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 162
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    const/16 v3, 0x7f6

    .line 163
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v3, 0x7d2

    .line 165
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/16 v3, 0x1a8

    .line 167
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    .line 171
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    const/16 v3, 0x33

    .line 173
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x2

    .line 174
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 175
    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 176
    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 177
    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 178
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 179
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070159

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 180
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 181
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070158

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    return-object v2
.end method

.method private recordMainSigChannel()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method

.method private removeChannelRelatedListener(Ljava/lang/String;)V
    .locals 1

    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeLiveChannelChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    .line 648
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeAgoraUserVolumeChangeListener(Ljava/lang/String;Lcom/narvii/chat/video/events/AgoraUserVolumeChangeListener;)V

    .line 649
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/chat/rtc/RtcService;->removeChannelUserWrapperUpdateListener(Ljava/lang/String;Lcom/narvii/chat/video/events/ChannelUserWrapperUpdateListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private themeBackground(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const-string v2, "themePack"

    .line 230
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 231
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    sget-object v2, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private themeColor()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "themePack"

    .line 241
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 242
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    invoke-virtual {v1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 244
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 245
    aget v2, v1, v0

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    aput v2, v1, v0

    .line 246
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 247
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updatePrivateCallLayout()V
    .locals 1

    const/4 v0, -0x1

    .line 525
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout(I)V

    return-void
.end method

.method private updatePrivateCallLayout(I)V
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

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

    .line 531
    iget-boolean v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 532
    :goto_1
    new-instance v4, Lcom/narvii/chat/util/ChatHelper;

    iget-object v5, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v4, v0}, Lcom/narvii/chat/util/ChatHelper;->getPrivateChatTargetUer(Lcom/narvii/model/ChatThread;)Lcom/narvii/model/User;

    move-result-object v0

    .line 534
    sget-object v4, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eqz v4, :cond_5

    if-eq p1, v7, :cond_2

    goto :goto_3

    .line 535
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 536
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result p1

    if-nez p1, :cond_4

    int-to-float p1, v1

    cmpl-float p1, p1, v5

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x2

    .line 535
    :goto_3
    invoke-virtual {v4, v2, v0, p1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->updateVoiceViews(ZLcom/narvii/model/User;I)V

    goto :goto_6

    .line 538
    :cond_5
    sget-object v4, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-eqz v4, :cond_9

    if-eq p1, v7, :cond_6

    goto :goto_5

    .line 539
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 540
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result p1

    if-nez p1, :cond_8

    int-to-float p1, v1

    cmpl-float p1, p1, v5

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p1, 0x2

    .line 539
    :goto_5
    invoke-virtual {v4, v2, v0, p1}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->updateVideoViews(ZLcom/narvii/model/User;I)V

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method public createAudioWindow()V
    .locals 4

    .line 192
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    if-nez v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b026d

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    .line 195
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->setChatThread(Lcom/narvii/model/ChatThread;)V

    .line 196
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 197
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getBackground()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    const v2, 0x7f07030e

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    const v3, 0x7f07030c

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/narvii/chat/video/floating/FloatingManager;->themeBackground(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->themeColor()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x78000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_3
    :goto_0
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 216
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_4

    const v0, 0x7f070310

    const v1, 0x7f07030f

    .line 217
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 219
    :cond_4
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isCreator()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->setIsLauncher(Z)V

    .line 220
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->requireAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public getCommunityString()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->communityString:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatingLiveChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-object v0
.end method

.method public getFloatingThread()Lcom/narvii/chat/video/floating/CommunityThread;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    return-object v0
.end method

.method public getIsChannelCreator()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    return v0
.end method

.method public getShowingWindowType()I
    .locals 1

    .line 571
    iget v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    return v0
.end method

.method public isFromGlobalChat()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->fromGlobalChat:Z

    return v0
.end method

.method public isHideDrawer()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->hideDrawer:Z

    return v0
.end method

.method public onCallStatusChanged(I)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    iget v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v3, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v3}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    const v2, 0x7f0f018b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 590
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->sendNotAnswerRequest()V

    .line 591
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    .line 593
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    const v1, 0x7f0f0187

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 594
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 595
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 598
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    const v1, 0x7f0f018a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 599
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 600
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onChannelForceQuit(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    .line 548
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v1}, Lcom/narvii/chat/call/CallScreenService;->isEnding()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannelKeepWindow(ILjava/lang/String;)V

    .line 557
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {v0, p2}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyForceQuit(I)V

    .line 560
    :cond_1
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {v0, p2}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyForceQuit(I)V

    .line 563
    :cond_2
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    if-eqz v0, :cond_3

    .line 564
    invoke-virtual {v0, p2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->notifyForceQuit(I)V

    .line 567
    :cond_3
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    return-void
.end method

.method public onChannelStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    return-void
.end method

.method public onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
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

    .line 654
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    .line 655
    iget-boolean p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout()V

    .line 660
    :cond_1
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-eqz p1, :cond_2

    .line 661
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 664
    :cond_2
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    if-eqz p1, :cond_3

    .line 665
    iget-object p2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p2}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    :cond_3
    return-void
.end method

.method public onTotalVolumeChanged(Lcom/narvii/chat/signalling/SignallingChannel;I)V
    .locals 0

    return-void
.end method

.method public onUserWrapperStatusChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 617
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-eqz p1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 620
    :cond_0
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    if-eqz p1, :cond_1

    .line 621
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 624
    :cond_1
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    if-eqz p1, :cond_3

    .line 625
    iget-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 626
    iget-object p1, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz p1, :cond_2

    .line 627
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {p1}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onHostBadConnection(Z)V

    .line 630
    :cond_2
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_3
    return-void
.end method

.method public removeAllFloatingWindow()V
    .locals 0

    .line 277
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAudioFloatingWindow()V

    .line 278
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeVideoFloatingWindow()V

    .line 279
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeSRFloatingWindow()V

    .line 280
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeThreadFloatingWindow()V

    return-void
.end method

.method public removeAudioFloatingWindow()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->enterAutoEnding:Z

    .line 292
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 295
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 296
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 297
    sput-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    :cond_2
    const/4 v0, -0x1

    .line 299
    iput v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 300
    iput-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method

.method public removeSRFloatingWindow()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "screenRoom"

    .line 446
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 447
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeVideoPlayListner(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 448
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removePlayListChangeListener(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 449
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    .line 450
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->enterAutoEnding:Z

    .line 453
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 456
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    .line 457
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 458
    sput-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    :cond_1
    const/4 v0, -0x1

    .line 460
    iput v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 461
    iput-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method

.method public removeThreadFloatingWindow()V
    .locals 3

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    .line 349
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1, v0}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 351
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/narvii/chat/video/floating/FloatingManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 352
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 353
    sput-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    :cond_0
    return-void
.end method

.method public removeVideoFloatingWindow()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeChannelRelatedListener(Ljava/lang/String;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    if-eqz v0, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->enterAutoEnding:Z

    .line 496
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->leaveChannelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/floating/FloatingWindowBaseLayout;->setListener(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V

    .line 499
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 500
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 501
    sput-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    :cond_2
    const/4 v0, -0x1

    .line 503
    iput v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 504
    iput-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingLiveChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method

.method public setCommunityString(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->communityString:Ljava/lang/String;

    return-void
.end method

.method public setFloatingClickEvent(Lcom/narvii/video/ui/floating/FloatingClickEvent;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingClickEvent:Lcom/narvii/video/ui/floating/FloatingClickEvent;

    return-void
.end method

.method public setHideDrawer(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->hideDrawer:Z

    return-void
.end method

.method public setIsChannelCreator(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->isCreator:Z

    return-void
.end method

.method public setIsFromGlobalChat(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->fromGlobalChat:Z

    return-void
.end method

.method public showAudioFloatingWindow()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 258
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createAudioWindow()V

    .line 259
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    if-nez v0, :cond_1

    const-string v0, "FloatingManager"

    const-string v1, "create floating window for video error"

    .line 260
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 263
    iput v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 264
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->audioWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->recordMainSigChannel()V

    .line 267
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyMutedListChanged(Ljava/util/Set;)V

    .line 268
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->audioFloatingLayout:Lcom/narvii/chat/video/floating/AudioFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/floating/AudioFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 269
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout()V

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->onCallStatusChanged(I)V

    .line 273
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showSRFloatingWindow()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 403
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createSRWindow()V

    .line 404
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    if-nez v0, :cond_1

    const-string v0, "FloatingManager"

    const-string v1, "create floating window for video error"

    .line 405
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x3

    .line 409
    iput v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 410
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->srWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->recordMainSigChannel()V

    .line 413
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "screenRoom"

    .line 414
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 415
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->isScreenRoomHost()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getGlVideoView()Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->setUpHostView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V

    goto :goto_1

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getScreenRoomHostUser()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelLocalUserWrapper()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, v1, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    if-eqz v2, :cond_4

    .line 425
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v2, :cond_4

    .line 426
    iget-object v3, v2, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 428
    :cond_4
    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->setUpViewerView(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 430
    :goto_1
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 431
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostLoadingListener(Lcom/narvii/chat/screenroom/SRHostLoadingListener;)V

    .line 432
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostAudioOnlyListener(Lcom/narvii/chat/screenroom/SRHostAudioOnlyListener;)V

    .line 433
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 434
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayList()Lcom/narvii/model/PlayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onPlayListChanged(Lcom/narvii/model/PlayList;)V

    .line 435
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isBuffering()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onBuffering(Z)V

    .line 436
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentUserSeeked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onUserSeeked(Z)V

    .line 437
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->srFloatingLayout:Lcom/narvii/chat/video/floating/SRFloatingLayout;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/chat/video/floating/SRFloatingLayout;->onHostAudioOnlyChanged(Z)V

    .line 438
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public showThreadFloatingWindow(Lcom/narvii/chat/video/floating/CommunityThread;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 334
    iget-object v0, p1, Lcom/narvii/chat/video/floating/CommunityThread;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/narvii/chat/video/floating/CommunityThread;->ndcId:I

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 338
    iput-object p1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->floatingThread:Lcom/narvii/chat/video/floating/CommunityThread;

    .line 339
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createThreadWindow()V

    .line 340
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    if-nez v0, :cond_1

    return-void

    .line 343
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/floating/ThreadFloatingLayout;->setThread(Lcom/narvii/chat/video/floating/CommunityThread;)V

    .line 344
    sget-object p1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->threadFloatingLayout:Lcom/narvii/chat/video/floating/ThreadFloatingLayout;

    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->threadWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showVideoFloatingWindow()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->removeAllFloatingWindow()V

    .line 469
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->createVideoWindow()V

    .line 470
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    if-nez v0, :cond_1

    const-string v0, "FloatingManager"

    const-string v1, "create floating window for video error"

    .line 471
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 475
    iput v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->showingWindowType:I

    .line 476
    sget-object v1, Lcom/narvii/chat/video/floating/FloatingManager;->mWindowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/narvii/chat/video/floating/FloatingManager;->videoWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->recordMainSigChannel()V

    .line 479
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyMutedListChanged(Ljava/util/Set;)V

    .line 480
    sget-object v0, Lcom/narvii/chat/video/floating/FloatingManager;->videoFloatingLayout:Lcom/narvii/chat/video/floating/VideoFloatingLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelUserWrapperList()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/floating/VideoFloatingLayout;->notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 481
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->addLiveChannelRelatedListener(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {v0}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/floating/FloatingManager;->onCallStatusChanged(I)V

    .line 484
    iget-object v0, p0, Lcom/narvii/chat/video/floating/FloatingManager;->callScreenService:Lcom/narvii/chat/call/CallScreenService;

    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->getCurLiveChannelThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/call/CallScreenService;->addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V

    .line 485
    invoke-direct {p0}, Lcom/narvii/chat/video/floating/FloatingManager;->updatePrivateCallLayout()V

    :cond_2
    :goto_0
    return-void
.end method
