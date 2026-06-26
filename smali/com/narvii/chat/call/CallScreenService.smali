.class public Lcom/narvii/chat/call/CallScreenService;
.super Ljava/lang/Object;
.source "CallScreenService.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/chat/call/CallScreenService;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUSY_HINT_TIME:I = 0x7530

.field public static final CALL_TIME_LIMIT:I = 0x11170

.field private static final REVING_TIME_LIMIT:I = 0xea60

.field public static final ROLE_CALLER:I = 0x0

.field public static final ROLE_RECEIVER:I = 0x1

.field public static final STATUS_BUSY:I = 0x4

.field public static final STATUS_CALLING:I = 0x1

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_DECLINE:I = 0x7

.field public static final STATUS_ENDED:I = 0x6

.field public static final STATUS_ENDING:I = 0x5

.field public static final STATUS_PREPARE:I = 0x0

.field public static final STATUS_RECEIVER_BUSY:I = 0xa

.field public static final STATUS_RECEVING:I = 0x9

.field public static final STATUS_TIMEOUT:I = 0x8

.field private static final VIBRATE_GAP:I = 0x3e8

.field private static final VIBRATE_PER_DURATION:I = 0x1f4

.field private static final VIBRATE_TIMES:I = 0x3


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private callExpireTime:J

.field callStatusDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/call/CallStatusChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field callTimeOutRunnable:Ljava/lang/Runnable;

.field private isEnding:Z

.field private isMuteOn:Z

.field private isSpeakerOn:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mediaPlayer:Landroid/media/MediaPlayer;

.field private missedIntent:Landroid/content/Intent;

.field private ndcId:I

.field notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

.field private nvContext:Lcom/narvii/app/NVContext;

.field receiveCallLimitRunnable:Ljava/lang/Runnable;

.field private role:I

.field private status:I

.field private threadId:Ljava/lang/String;

.field userBusyHintRunnable:Ljava/lang/Runnable;

.field vibrate:Landroid/os/Vibrator;

.field private voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

.field private vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    .line 273
    new-instance v0, Lcom/narvii/chat/call/CallScreenService$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/call/CallScreenService$2;-><init>(Lcom/narvii/chat/call/CallScreenService;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    .line 282
    new-instance v0, Lcom/narvii/chat/call/CallScreenService$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/call/CallScreenService$3;-><init>(Lcom/narvii/chat/call/CallScreenService;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callTimeOutRunnable:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lcom/narvii/chat/call/CallScreenService$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/call/CallScreenService$4;-><init>(Lcom/narvii/chat/call/CallScreenService;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->receiveCallLimitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private abandonFocus(I)V
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 377
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/call/CallScreenService;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    return p0
.end method

.method private dispatchCallStatusChange(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_1

    .line 258
    new-instance v1, Lcom/narvii/chat/call/CallScreenService$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/call/CallScreenService$1;-><init>(Lcom/narvii/chat/call/CallScreenService;I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method private isEndingStatus()Z
    .locals 2

    .line 455
    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isExpired()Z
    .locals 7

    .line 148
    iget-wide v0, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 150
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    :goto_0
    iget-wide v3, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private notifyUserStatusChange(I)V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopMediaPlay()V

    .line 344
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 347
    iget-object v2, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 348
    iget-object v2, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 349
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    .line 350
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    const v1, 0x7f0e0004

    .line 351
    invoke-direct {p0, v1, v0}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    .line 353
    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    if-nez v0, :cond_6

    const v0, 0x7f0e0006

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    if-ne p1, v2, :cond_3

    .line 357
    iget-object v2, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 358
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 359
    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 361
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const v0, 0x7f0e0018

    .line 362
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    .line 364
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 366
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    .line 368
    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->abandonFocus(I)V

    return-void
.end method

.method private playMusic(IZ)V
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x3

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 395
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1

    return-void

    .line 398
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 399
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 401
    :try_start_1
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 403
    :catch_1
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :goto_1
    return-void
.end method

.method private startVibrate()V
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [J

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    const-wide/16 v4, 0x1f4

    aput-wide v4, v0, v1

    .line 421
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->vibrate:Landroid/os/Vibrator;

    invoke-virtual {v1, v0, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private stopMediaPlay()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 435
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 436
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private stopVibrate()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->vibrate:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V
    .locals 1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 99
    :cond_1
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 100
    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelCall(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 191
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallCancelMessage(Lcom/narvii/chat/signalling/SignallingChannel;Z)V

    :cond_0
    const/4 p1, 0x3

    .line 194
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez p1, :cond_0

    const/16 p1, 0x5f32

    goto :goto_0

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    and-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public configCallScreenService(ILjava/lang/String;)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    .line 181
    iput-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, -0x1

    .line 183
    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    const-wide/16 p1, 0x0

    .line 185
    iput-wide p1, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    :cond_0
    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/call/CallScreenService;
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    .line 118
    new-instance v0, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 119
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->vibrate:Landroid/os/Vibrator;

    .line 120
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 121
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 122
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 123
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public getCurStatus()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    return v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public isEnding()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isEnding:Z

    return v0
.end method

.method public isMuteOn()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    return v0
.end method

.method public isSpeakerOn()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    return v0
.end method

.method public onCallComeIn()V
    .locals 3

    .line 408
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    .line 409
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopMediaPlay()V

    .line 410
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const v0, 0x7f0e0005

    .line 411
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    .line 412
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->startVibrate()V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->startVibrate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V
    .locals 1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-nez p1, :cond_1

    return-void

    .line 111
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeLocalStatusMonitor()V
    .locals 2

    .line 268
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->callTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->receiveCallLimitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetCallScreen()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 513
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 1

    .line 135
    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 136
    iget p2, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->isExpired()Z

    move-result p2

    if-nez p2, :cond_0

    .line 141
    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->cancelNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public sendNotAnswerRequest()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    const/16 v1, 0x34

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 316
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    .line 317
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/16 v1, 0x37

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/16 v1, 0x3a

    .line 325
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    iget v2, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    iget-object v3, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 326
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    iget v2, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    const-string v3, "api"

    invoke-virtual {v1, v2, v3}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 327
    new-instance v2, Lcom/narvii/chat/call/CallScreenService$5;

    const-class v3, Lcom/narvii/chat/MessageResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/call/CallScreenService$5;-><init>(Lcom/narvii/chat/call/CallScreenService;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public setCallExpireTime(J)V
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    return-void
.end method

.method public setMissedIntent(Landroid/content/Intent;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    return-void
.end method

.method public silenceMode()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 447
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public switchMusicPlayStatus()V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    .line 497
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public switchSpeaker()V
    .locals 2

    .line 470
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 472
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 473
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 476
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 477
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateStatus(I)V
    .locals 6

    .line 206
    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    if-ne v0, p1, :cond_0

    return-void

    .line 209
    :cond_0
    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    .line 210
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->isEndingStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isEnding:Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 213
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/call/CallScreenService;->removeLocalStatusMonitor()V

    .line 217
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->dispatchCallStatusChange(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 219
    iput v1, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    .line 220
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 221
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x11170

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    .line 223
    invoke-virtual {p0, v1, v3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 225
    invoke-virtual {p0, v1, v3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    .line 227
    invoke-virtual {p0, v1, v3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x6

    if-eq p1, v2, :cond_a

    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_b

    .line 235
    iput v0, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    .line 237
    iget-wide v0, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    .line 239
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v0

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    :goto_1
    iget-wide v2, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    sub-long/2addr v2, v0

    cmp-long v0, v2, v4

    .line 243
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->receiveCallLimitRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 229
    :cond_a
    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 249
    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->notifyUserStatusChange(I)V

    return-void
.end method

.method public updateStatus(IILjava/lang/String;)V
    .locals 2

    .line 198
    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    return-void
.end method
