.class public Lcom/narvii/media/online/audio/MusicPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/MusicPlayer$STATUS;
    }
.end annotation


# static fields
.field private static final STATUS_BUFFERING:I = 0x3

.field private static final STATUS_END:I = 0x5

.field private static final STATUS_IDLE:I = 0x0

.field private static final STATUS_PAUSE:I = 0x2

.field private static final STATUS_PLAYING:I = 0x1

.field private static final STATUS_PREPARING:I = 0x4

.field private static final UPDATE_PERIOD:I = 0x3e8


# instance fields
.field private animator:Landroid/animation/Animator;

.field private final audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

.field private currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playingStatus:I

.field private playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

.field private resumeSeekCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private seekBar:Landroid/widget/SeekBar;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->resumeSeekCache:Ljava/util/HashMap;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$1;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->timerTask:Ljava/util/TimerTask;

    .line 21
    .line 22
    new-instance v0, Landroid/media/MediaPlayer;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    const/4 v1, 0x3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/media/online/audio/MusicPlayer$2;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/narvii/media/online/audio/MusicPlayer$2;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 42
    .line 43
    const-string v0, "audioDownloader"

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/media/online/audio/AudioDownloader;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 52
    .line 53
    new-instance v0, Ljava/util/Timer;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->timerTask:Ljava/util/TimerTask;

    .line 59
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    const-wide/16 v4, 0x3e8

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$3;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$3;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$4;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$4;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 86
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/media/online/audio/MusicPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/media/online/audio/MusicPlayer;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->resumeSeekCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/media/online/audio/MusicPlayer;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->seek(F)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/media/online/audio/MusicPlayer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    return-void
.end method

.method private getcurrentProgress()F
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    const/4 v1, 0x3

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v1, 0x5

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    return v3

    .line 19
    :cond_0
    return v2

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 31
    move-result v1

    .line 32
    .line 33
    if-lez v1, :cond_2

    .line 34
    int-to-float v0, v0

    .line 35
    mul-float/2addr v0, v2

    .line 36
    int-to-float v1, v1

    .line 37
    div-float/2addr v0, v1

    .line 38
    return v0

    .line 39
    :cond_2
    return v3
.end method

.method static bridge synthetic h(Lcom/narvii/media/online/audio/MusicPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->updatePlayingView()V

    return-void
.end method

.method private scrollProgress(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6
    return-void
.end method

.method private seek(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    mul-float/2addr p1, v1

    .line 9
    float-to-int p1, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 13
    .line 14
    iget p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 15
    const/4 v0, 0x5

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    const/4 p1, 0x2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    .line 22
    :cond_0
    return-void
.end method

.method private setPlayingStatus(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->updatePlayingView()V

    .line 6
    return-void
.end method

.method private updatePlayingView()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget v7, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 13
    .line 14
    if-eqz v7, :cond_3

    .line 15
    .line 16
    if-eq v7, v6, :cond_1

    .line 17
    .line 18
    if-eq v7, v5, :cond_1

    .line 19
    .line 20
    if-eq v7, v3, :cond_1

    .line 21
    .line 22
    if-eq v7, v2, :cond_3

    .line 23
    .line 24
    if-eq v7, v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 39
    move-result v0

    .line 40
    .line 41
    iget-object v7, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    .line 45
    move-result v7

    .line 46
    .line 47
    if-lez v7, :cond_2

    .line 48
    .line 49
    iget-object v8, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    .line 53
    move-result v8

    .line 54
    int-to-long v8, v8

    .line 55
    int-to-long v10, v0

    .line 56
    mul-long/2addr v8, v10

    .line 57
    int-to-long v10, v7

    .line 58
    div-long/2addr v8, v10

    .line 59
    long-to-int v0, v8

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-direct {p0, v4}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-direct {p0, v4}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    .line 71
    .line 72
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    .line 73
    .line 74
    if-eqz v0, :cond_8

    .line 75
    .line 76
    iget v7, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 77
    .line 78
    if-eqz v7, :cond_7

    .line 79
    .line 80
    if-eq v7, v6, :cond_6

    .line 81
    .line 82
    if-eq v7, v5, :cond_7

    .line 83
    .line 84
    if-eq v7, v3, :cond_5

    .line 85
    .line 86
    if-eq v7, v2, :cond_5

    .line 87
    .line 88
    if-eq v7, v1, :cond_7

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {v0, v5}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-virtual {v0, v6}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    .line 97
    goto :goto_1

    .line 98
    .line 99
    .line 100
    :cond_7
    invoke-virtual {v0, v4}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    .line 101
    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public bindViews(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->updatePlayingView()V

    .line 21
    return-void
.end method

.method public clearViewBind(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 11
    .line 12
    iput-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    .line 15
    .line 16
    if-ne p2, p1, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    .line 21
    :cond_1
    return-void
.end method

.method public isCurrentPlayMusic(Lcom/narvii/media/online/audio/model/Sound;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/model/Sound;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    .line 15
    .line 16
    if-ne v0, p1, :cond_2

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_1
    return p1
.end method

.method public isPlaying()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 12
    const/4 v2, 0x3

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v2, 0x4

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    mul-float/2addr v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 12
    move-result p1

    .line 13
    int-to-float p1, p1

    .line 14
    div-float/2addr v0, p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->seek(F)V

    .line 18
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 14
    const/4 v0, 0x2

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    .line 18
    :cond_0
    return-void
.end method

.method public play(Lcom/narvii/media/online/audio/model/Sound;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->getcurrentProgress()F

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->resumeSeekCache:Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    :cond_0
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    .line 32
    const/4 v0, 0x4

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDownloadState(Lcom/narvii/media/online/audio/model/Sound;)I

    .line 46
    move-result v0

    .line 47
    const/4 v1, -0x1

    .line 48
    .line 49
    if-ne v0, v1, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDwonloadedFile(Lcom/narvii/media/online/audio/model/Sound;)Ljava/io/File;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMediaUrl()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 77
    .line 78
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_2

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :goto_2
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->timerTask:Ljava/util/TimerTask;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 11
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v1, 0x5

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    .line 18
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    .line 13
    return-void
.end method
