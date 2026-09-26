.class public Lcom/narvii/chat/call/CallScreenService;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/chat/call/CallScreenService$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/chat/call/CallScreenService$2;-><init>(Lcom/narvii/chat/call/CallScreenService;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/chat/call/CallScreenService$3;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/chat/call/CallScreenService$3;-><init>(Lcom/narvii/chat/call/CallScreenService;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callTimeOutRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/chat/call/CallScreenService$4;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/chat/call/CallScreenService$4;-><init>(Lcom/narvii/chat/call/CallScreenService;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->receiveCallLimitRunnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/call/CallScreenService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    return p0
.end method

.method private abandonFocus(I)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    const/4 v0, 0x7

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 25
    :cond_1
    return-void
.end method

.method private dispatchCallStatusChange(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/chat/call/CallScreenService$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/call/CallScreenService$1;-><init>(Lcom/narvii/chat/call/CallScreenService;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 24
    :cond_1
    return-void
.end method

.method private isEndingStatus()Z
    .locals 2

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
    .locals 8

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v2

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 17
    move-result-wide v4

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 25
    move-result-wide v2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    move-result-wide v2

    .line 31
    .line 32
    :goto_0
    iget-wide v4, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    .line 33
    .line 34
    const-wide/16 v6, 0x3e8

    .line 35
    mul-long/2addr v4, v6

    .line 36
    .line 37
    cmp-long v0, v4, v2

    .line 38
    .line 39
    if-gez v0, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_1
    return v1
.end method

.method private notifyUserStatusChange(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x4

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopMediaPlay()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    .line 32
    .line 33
    .line 34
    const v1, 0x7f110008

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1, v0}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    const/16 v2, 0x8

    .line 41
    .line 42
    if-ne p1, v2, :cond_2

    .line 43
    .line 44
    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    .line 45
    .line 46
    if-nez v0, :cond_6

    .line 47
    .line 48
    .line 49
    const v0, 0x7f11000a

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    const/16 v2, 0x9

    .line 56
    .line 57
    if-ne p1, v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    .line 68
    move-result v2

    .line 69
    xor-int/2addr v2, v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 v0, 0x3

    .line 77
    .line 78
    if-ne p1, v0, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 84
    move-result v0

    .line 85
    const/4 v2, 0x2

    .line 86
    .line 87
    if-ne v0, v2, :cond_4

    .line 88
    .line 89
    .line 90
    const v0, 0x7f110024

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    const/4 v0, 0x6

    .line 99
    .line 100
    if-ne p1, v0, :cond_6

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->abandonFocus(I)V

    .line 107
    return-void
.end method

.method private playMusic(IZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 39
    .line 40
    :try_start_1
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :catch_1
    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 50
    :goto_0
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startVibrate()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    :try_start_0
    new-array v0, v0, [J

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->vibrate:Landroid/os/Vibrator;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    return-void

    .line 14
    nop

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    :array_0
    .array-data 8
        0x3e8
        0x1f4
    .end array-data
.end method

.method private stopMediaPlay()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method private stopVibrate()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->vibrate:Landroid/os/Vibrator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V
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
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public cancelCall(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "rtc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPrivateMainChannelFullBefore()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/video/utils/VVChatHelper;->sendCallCancelMessage(Lcom/narvii/chat/signalling/SignallingChannel;Z)V

    .line 34
    :cond_0
    const/4 p1, 0x3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    .line 38
    return-void
.end method

.method public cancelNotification(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "notification"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/app/NotificationManager;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/16 p1, 0x5f32

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    return-void
.end method

.method public configCallScreenService(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    iput-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    :cond_0
    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/call/CallScreenService;
    .locals 2

    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    .line 2
    new-instance v0, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->vibrate:Landroid/os/Vibrator;

    .line 4
    new-instance v0, Lcom/narvii/util/NotificationManagerHelper;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/NotificationManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->notificationManagerHelper:Lcom/narvii/util/NotificationManagerHelper;

    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 6
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 7
    new-instance v0, Lcom/narvii/chat/video/utils/VVChatHelper;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->vvChatHelper:Lcom/narvii/chat/video/utils/VVChatHelper;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public getCurStatus()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    return v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public isEnding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isEnding:Z

    return v0
.end method

.method public isMuteOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    return v0
.end method

.method public isSpeakerOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    return v0
.end method

.method public onCallComeIn()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopMediaPlay()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    .line 19
    const v0, 0x7f110009

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, v2}, Lcom/narvii/chat/call/CallScreenService;->playMusic(IZ)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->startVibrate()V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->startVibrate()V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public removeCallScreenStatusChangeListener(Ljava/lang/String;Lcom/narvii/chat/call/CallStatusChangeListener;)V
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
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callStatusDispatcher:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public removeLocalStatusMonitor()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->callTimeOutRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->receiveCallLimitRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.method public resetCallScreen()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 6
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 1

    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 3
    sget-object p2, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->instance:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->isExpired()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/narvii/chat/call/CallScreenService;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->cancelNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public sendNotAnswerRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->nvContext:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    const-string v1, "rtc"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 20
    .line 21
    const/16 v1, 0x34

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 36
    const/4 v2, 0x1

    .line 37
    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x4

    .line 41
    .line 42
    if-ne v0, v2, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x37

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x3

    .line 47
    .line 48
    if-ne v0, v2, :cond_3

    .line 49
    .line 50
    const/16 v1, 0x3a

    .line 51
    .line 52
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->voiceCallHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    .line 53
    .line 54
    iget v2, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/chat/video/view/VoiceCallHelper;->buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    iget v2, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    .line 67
    .line 68
    const-string v3, "api"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v3}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 75
    .line 76
    new-instance v2, Lcom/narvii/chat/call/CallScreenService$5;

    .line 77
    .line 78
    const-class v3, Lcom/narvii/chat/MessageResponse;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/call/CallScreenService$5;-><init>(Lcom/narvii/chat/call/CallScreenService;Ljava/lang/Class;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 85
    return-void
.end method

.method public setCallExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    return-void
.end method

.method public setMissedIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/call/CallScreenService;->missedIntent:Landroid/content/Intent;

    return-void
.end method

.method public silenceMode()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->stopVibrate()V

    .line 16
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/call/CallScreenService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/call/CallScreenService;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/call/CallScreenService;)V

    return-void
.end method

.method public switchMusicPlayStatus()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isMuteOn:Z

    .line 23
    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public switchSpeaker()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->audioManager:Landroid/media/AudioManager;

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/narvii/chat/call/CallScreenService;->isSpeakerOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 49
    :cond_1
    :goto_1
    return-void
.end method

.method public updateStatus(I)V
    .locals 4

    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/call/CallScreenService;->isEndingStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/call/CallScreenService;->isEnding:Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/call/CallScreenService;->removeLocalStatusMonitor()V

    .line 7
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->dispatchCallStatusChange(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->userBusyHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    .line 8
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->callTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x11170

    .line 9
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    .line 10
    invoke-virtual {p0, v1, v3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 11
    invoke-virtual {p0, v1, v3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    .line 12
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

    iput v0, p0, Lcom/narvii/chat/call/CallScreenService;->role:I

    iget-wide v0, p0, Lcom/narvii/chat/call/CallScreenService;->callExpireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 14
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->receiveCallLimitRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    .line 15
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 16
    :cond_a
    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 17
    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->notifyUserStatusChange(I)V

    return-void
.end method

.method public updateStatus(IILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->ndcId:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/call/CallScreenService;->threadId:Ljava/lang/String;

    .line 1
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/call/CallScreenService;->status:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/call/CallScreenService;->configCallScreenService(ILjava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/call/CallScreenService;->updateStatus(I)V

    return-void
.end method
