.class public Lcom/narvii/media/online/audio/MusicPlayer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->resumeSeekCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 47
    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$1;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->timerTask:Ljava/util/TimerTask;

    .line 66
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 68
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/narvii/media/online/audio/MusicPlayer$2;

    invoke-direct {v1, p0}, Lcom/narvii/media/online/audio/MusicPlayer$2;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const-string v0, "audioDownloader"

    .line 81
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/online/audio/AudioDownloader;

    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    .line 82
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 84
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$3;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 101
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$4;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$4;-><init>(Lcom/narvii/media/online/audio/MusicPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/widget/SeekBar;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/media/online/audio/MusicPlayer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->updatePlayingView()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/media/online/audio/MusicPlayer;)Lcom/narvii/media/online/audio/model/Sound;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/media/online/audio/MusicPlayer;)Ljava/util/HashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->resumeSeekCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/media/online/audio/MusicPlayer;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->seek(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/media/online/audio/MusicPlayer;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/media/online/audio/MusicPlayer;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    return p0
.end method

.method private getcurrentProgress()F
    .locals 4

    .line 169
    iget v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v3

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 177
    iget-object v2, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lez v2, :cond_2

    int-to-float v0, v0

    mul-float v0, v0, v3

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_2
    return v1
.end method

.method private scrollProgress(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private seek(F)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 211
    iget p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 212
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    :cond_0
    return-void
.end method

.method private setPlayingStatus(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    .line 218
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->updatePlayingView()V

    return-void
.end method

.method private updatePlayingView()V
    .locals 12

    .line 223
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 224
    iget v7, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_1

    if-eq v7, v5, :cond_1

    if-eq v7, v3, :cond_1

    if-eq v7, v2, :cond_3

    if-eq v7, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 233
    iget-object v7, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    if-lez v7, :cond_2

    .line 235
    iget-object v8, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    int-to-long v8, v8

    int-to-long v10, v0

    mul-long v8, v8, v10

    int-to-long v10, v7

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 236
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    goto :goto_0

    .line 238
    :cond_2
    invoke-direct {p0, v4}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    goto :goto_0

    .line 227
    :cond_3
    invoke-direct {p0, v4}, Lcom/narvii/media/online/audio/MusicPlayer;->scrollProgress(I)V

    .line 247
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    if-eqz v0, :cond_8

    .line 248
    iget v7, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    if-eqz v7, :cond_7

    if-eq v7, v6, :cond_6

    if-eq v7, v5, :cond_7

    if-eq v7, v3, :cond_5

    if-eq v7, v2, :cond_5

    if-eq v7, v1, :cond_7

    goto :goto_1

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    invoke-virtual {v0, v5}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    goto :goto_1

    .line 255
    :cond_6
    invoke-virtual {v0, v6}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    goto :goto_1

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    invoke-virtual {v0, v4}, Lcom/narvii/media/online/audio/MusicPlayStatusView;->setStatus(I)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public bindViews(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 124
    iput-object p2, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    .line 126
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->updatePlayingView()V

    return-void
.end method

.method public clearViewBind(Lcom/narvii/media/online/audio/MusicSliderView;Lcom/narvii/media/online/audio/MusicPlayStatusView;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 136
    iput-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    if-ne p2, p1, :cond_1

    if-eqz p1, :cond_1

    .line 140
    iput-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatusView:Lcom/narvii/media/online/audio/MusicPlayStatusView;

    :cond_1
    return-void
.end method

.method public isCurrentPlayMusic(Lcom/narvii/media/online/audio/model/Sound;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/model/Sound;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 282
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isPlaying()Z
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

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

    .line 298
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->seek(F)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x2

    .line 199
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    :cond_0
    return-void
.end method

.method public play(Lcom/narvii/media/online/audio/model/Sound;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/narvii/media/online/audio/MusicPlayer;->getcurrentProgress()F

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->resumeSeekCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    iget-object v2, v2, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    const/4 v0, 0x4

    .line 152
    :try_start_0
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    .line 154
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 155
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDownloadState(Lcom/narvii/media/online/audio/model/Sound;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->audioDownloader:Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-virtual {v0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;->getDwonloadedFile(Lcom/narvii/media/online/audio/model/Sound;)Ljava/io/File;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/Sound;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 115
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 190
    iget v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->playingStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, v0}, Lcom/narvii/media/online/audio/MusicPlayer;->setPlayingStatus(I)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer;->currentPlayMusic:Lcom/narvii/media/online/audio/model/Sound;

    return-void
.end method
