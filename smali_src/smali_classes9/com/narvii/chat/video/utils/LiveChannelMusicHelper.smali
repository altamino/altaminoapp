.class public final Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPlayingMusic:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->playHintMusic$lambda$0(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final playHintMusic$lambda$0(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final isPlayingMusic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    return v0
.end method

.method public final playHintMusic(I)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    move p1, v2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    const p1, 0x7f110022

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_2
    const p1, 0x7f110024

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_3
    const p1, 0x7f110023

    .line 31
    .line 32
    :goto_0
    if-nez p1, :cond_4

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    .line 35
    return-void

    .line 36
    .line 37
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/chat/video/utils/a;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/utils/a;-><init>(Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    .line 71
    :goto_1
    return-void
.end method

.method public final setPlayingMusic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/utils/LiveChannelMusicHelper;->isPlayingMusic:Z

    return-void
.end method
