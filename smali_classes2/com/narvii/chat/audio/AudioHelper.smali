.class public Lcom/narvii/chat/audio/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "mediaPlayer"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPlayerManager;

    .line 45
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/media/MediaPlayerManager;->getMediaStatus(Ljava/lang/String;)Lcom/narvii/media/MediaStatus;

    move-result-object v1

    .line 46
    iget v2, v1, Lcom/narvii/media/MediaStatus;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/narvii/media/MediaPlayerManager;->pauseMediaPlayer()V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 53
    iget v3, v1, Lcom/narvii/media/MediaStatus;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 54
    iget v2, v1, Lcom/narvii/media/MediaStatus;->position:I

    :cond_3
    if-eqz p3, :cond_4

    .line 57
    iget-object p3, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "messageRead"

    invoke-interface {p3, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/chat/MessageReadManager;

    .line 58
    invoke-virtual {p3, p1}, Lcom/narvii/chat/MessageReadManager;->isMessageRead(Lcom/narvii/model/ChatMessage;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 59
    invoke-virtual {p3, p1}, Lcom/narvii/chat/MessageReadManager;->setMessageRead(Lcom/narvii/model/ChatMessage;)V

    if-eqz p2, :cond_4

    const p3, 0x7f09020d

    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    const/16 v1, 0x8

    .line 63
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_4
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const p3, 0x7f0900d4

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/audio/AudioPlayer;

    invoke-virtual {v0, p1, v2, p2}, Lcom/narvii/media/MediaPlayerManager;->playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V

    :goto_0
    return-void
.end method

.method public showAVChatOnToast()Z
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 32
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0af1

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
