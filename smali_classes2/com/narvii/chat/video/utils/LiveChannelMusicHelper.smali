.class public final Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;
.super Ljava/lang/Object;
.source "LiveChannelMusicHelper.kt"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private isPlayingMusic:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final isPlayingMusic()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    return v0
.end method

.method public final playHintMusic(I)V
    .locals 3

    .line 22
    iget-boolean v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const p1, 0x7f0e0016

    goto :goto_0

    :cond_2
    const p1, 0x7f0e0018

    goto :goto_0

    :cond_3
    const p1, 0x7f0e0017

    :goto_0
    if-nez p1, :cond_4

    .line 33
    iput-boolean v2, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    return-void

    .line 37
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 39
    new-instance v0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper$playHintMusic$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper$playHintMusic$1;-><init>(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 40
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 43
    iput-boolean v2, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    :goto_1
    return-void
.end method

.method public final setPlayingMusic(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    return-void
.end method
