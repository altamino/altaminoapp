.class public Lcom/narvii/chat/audio/AudioHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V
    .locals 4

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "mediaPlayer"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/media/MediaPlayerManager;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v2, v1, Lcom/narvii/media/MediaStatus;->status:I

    .line 22
    const/4 v3, 0x1

    .line 23
    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer()V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    return-void

    .line 36
    .line 37
    :cond_2
    iget v2, v1, Lcom/narvii/media/MediaStatus;->status:I

    .line 38
    const/4 v3, 0x2

    .line 39
    .line 40
    if-ne v2, v3, :cond_3

    .line 41
    .line 42
    iget v1, v1, Lcom/narvii/media/MediaStatus;->position:I

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 v1, 0x0

    .line 45
    .line 46
    :goto_0
    if-eqz p3, :cond_4

    .line 47
    .line 48
    iget-object p3, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 49
    .line 50
    const-string v2, "messageRead"

    .line 51
    .line 52
    .line 53
    invoke-interface {p3, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    check-cast p3, Lcom/narvii/chat/MessageReadManager;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p1}, Lcom/narvii/chat/MessageReadManager;->isMessageRead(Lcom/narvii/model/ChatMessage;)Z

    .line 60
    move-result v2

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1}, Lcom/narvii/chat/MessageReadManager;->setMessageRead(Lcom/narvii/model/ChatMessage;)V

    .line 66
    .line 67
    .line 68
    const p3, 0x7f0a02c5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    :cond_4
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    const p3, 0x7f0a015c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    check-cast p2, Lcom/narvii/chat/audio/AudioPlayer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1, v1, p2}, Lcom/narvii/media/MediaPlayerManager;->playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    const-string p2, "statistics"

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 104
    .line 105
    const-string p2, "Play Voice Note"

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const-string p2, "Play Voice Note Total"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 115
    :goto_1
    return-void
.end method

.method public showAVChatOnToast()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

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
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    const v2, 0x7f120b9c

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_0
    return v1
.end method
