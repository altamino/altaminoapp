.class public Lcom/google/android/exoplayer2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/g2;


# static fields
.field public static final DEFAULT_AUDIO_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_BACK_BUFFER_DURATION_MS:I = 0x0

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final DEFAULT_BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final DEFAULT_CAMERA_MOTION_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_IMAGE_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MAX_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_METADATA_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_MIN_BUFFER_MS:I = 0xc350

.field public static final DEFAULT_MIN_BUFFER_SIZE:I = 0xc80000

.field public static final DEFAULT_MUXED_BUFFER_SIZE:I = 0x89a0000

.field public static final DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS:Z = false

.field public static final DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME:Z = false

.field public static final DEFAULT_TARGET_BUFFER_BYTES:I = -0x1

.field public static final DEFAULT_TEXT_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_VIDEO_BUFFER_SIZE:I = 0x7d00000


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/p;

.field private final backBufferDurationUs:J

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isLoading:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final prioritizeTimeOverSizeThresholds:Z

.field private final retainBackBufferFromKeyframe:Z

.field private targetBufferBytes:I

.field private final targetBufferBytesOverwrite:I


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    new-instance v1, Lcom/google/android/exoplayer2/upstream/p;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/p;-><init>(ZI)V

    const v2, 0xc350

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/k;-><init>(Lcom/google/android/exoplayer2/upstream/p;IIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/p;IIIIIZIZ)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    .line 3
    invoke-static {p4, v0, v1, v2}, Lcom/google/android/exoplayer2/k;->d(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-static {p5, v0, v3, v2}, Lcom/google/android/exoplayer2/k;->d(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferMs"

    .line 5
    invoke-static {p2, p4, v4, v1}, Lcom/google/android/exoplayer2/k;->d(IILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p2, p5, v4, v3}, Lcom/google/android/exoplayer2/k;->d(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 7
    invoke-static {p3, p2, v1, v4}, Lcom/google/android/exoplayer2/k;->d(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    .line 8
    invoke-static {p8, v0, v1, v2}, Lcom/google/android/exoplayer2/k;->d(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/k;->allocator:Lcom/google/android/exoplayer2/upstream/p;

    int-to-long p1, p2

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->minBufferUs:J

    int-to-long p1, p3

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->maxBufferUs:J

    int-to-long p1, p4

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->bufferForPlaybackUs:J

    int-to-long p1, p5

    .line 12
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->bufferForPlaybackAfterRebufferUs:J

    iput p6, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytesOverwrite:I

    const/4 p1, -0x1

    if-eq p6, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p6, 0xc80000

    :goto_0
    iput p6, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytes:I

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/k;->prioritizeTimeOverSizeThresholds:Z

    int-to-long p1, p8

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->backBufferDurationUs:J

    iput-boolean p9, p0, Lcom/google/android/exoplayer2/k;->retainBackBufferFromKeyframe:Z

    return-void
.end method

.method private static d(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    if-lt p0, p1, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    .line 7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, " cannot be less than "

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 29
    return-void
.end method

.method private static f(I)I
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x20000

    .line 3
    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 11
    throw p0

    .line 12
    :pswitch_1
    return v0

    .line 13
    .line 14
    :pswitch_2
    const/high16 p0, 0x7d00000

    .line 15
    return p0

    .line 16
    .line 17
    :pswitch_3
    const/high16 p0, 0xc80000

    .line 18
    return p0

    .line 19
    .line 20
    :pswitch_4
    const/high16 p0, 0x89a0000

    .line 21
    return p0

    .line 22
    :pswitch_5
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    nop

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private g(Z)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytesOverwrite:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0xc80000

    .line 8
    .line 9
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytes:I

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k;->isLoading:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->allocator:Lcom/google/android/exoplayer2/upstream/p;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->d()V

    .line 20
    :cond_1
    return-void
.end method


# virtual methods
.method public a(JJF)Z
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->allocator:Lcom/google/android/exoplayer2/upstream/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->c()I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget p2, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytes:I

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-lt p1, p2, :cond_0

    .line 13
    move p1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    .line 17
    :goto_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/k;->minBufferUs:J

    .line 18
    .line 19
    const/high16 p2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpl-float p2, p5, p2

    .line 22
    .line 23
    if-lez p2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3, p5}, Lcom/google/android/exoplayer2/util/o0;->U(JF)J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    iget-wide v4, p0, Lcom/google/android/exoplayer2/k;->maxBufferUs:J

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 33
    move-result-wide v2

    .line 34
    .line 35
    .line 36
    :cond_1
    const-wide/32 v4, 0x7a120

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    cmp-long p2, p3, v2

    .line 43
    .line 44
    if-gez p2, :cond_4

    .line 45
    .line 46
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/k;->prioritizeTimeOverSizeThresholds:Z

    .line 47
    .line 48
    if-nez p2, :cond_3

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v0, v1

    .line 53
    .line 54
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k;->isLoading:Z

    .line 55
    .line 56
    if-nez v0, :cond_6

    .line 57
    .line 58
    cmp-long p1, p3, v4

    .line 59
    .line 60
    if-gez p1, :cond_6

    .line 61
    .line 62
    const-string p1, "DefaultLoadControl"

    .line 63
    .line 64
    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/k;->maxBufferUs:J

    .line 71
    .line 72
    cmp-long p2, p3, v2

    .line 73
    .line 74
    if-gez p2, :cond_5

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/k;->isLoading:Z

    .line 79
    .line 80
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/k;->isLoading:Z

    .line 81
    return p1
.end method

.method public b([Lcom/google/android/exoplayer2/m3;Lcom/google/android/exoplayer2/source/h1;[Lcom/google/android/exoplayer2/trackselection/s;)V
    .locals 1

    .line 1
    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytesOverwrite:I

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/k;->e([Lcom/google/android/exoplayer2/m3;[Lcom/google/android/exoplayer2/trackselection/s;)I

    .line 9
    move-result p2

    .line 10
    .line 11
    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytes:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->allocator:Lcom/google/android/exoplayer2/upstream/p;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/p;->e(I)V

    .line 17
    return-void
.end method

.method public c(JFZJ)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/o0;->Z(JF)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    iget-wide p3, p0, Lcom/google/android/exoplayer2/k;->bufferForPlaybackAfterRebufferUs:J

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-wide p3, p0, Lcom/google/android/exoplayer2/k;->bufferForPlaybackUs:J

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    cmp-long v0, p5, v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-wide/16 v0, 0x2

    .line 23
    div-long/2addr p5, v0

    .line 24
    .line 25
    .line 26
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 27
    move-result-wide p3

    .line 28
    .line 29
    :cond_1
    const-wide/16 p5, 0x0

    .line 30
    .line 31
    cmp-long p5, p3, p5

    .line 32
    .line 33
    if-lez p5, :cond_3

    .line 34
    .line 35
    cmp-long p1, p1, p3

    .line 36
    .line 37
    if-gez p1, :cond_3

    .line 38
    .line 39
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/k;->prioritizeTimeOverSizeThresholds:Z

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/exoplayer2/k;->allocator:Lcom/google/android/exoplayer2/upstream/p;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/p;->c()I

    .line 47
    move-result p1

    .line 48
    .line 49
    iget p2, p0, Lcom/google/android/exoplayer2/k;->targetBufferBytes:I

    .line 50
    .line 51
    if-lt p1, p2, :cond_2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 56
    :goto_2
    return p1
.end method

.method protected e([Lcom/google/android/exoplayer2/m3;[Lcom/google/android/exoplayer2/trackselection/s;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v2, p2, v0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    aget-object v2, p1, v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Lcom/google/android/exoplayer2/m3;->getTrackType()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->f(I)I

    .line 19
    move-result v2

    .line 20
    add-int/2addr v1, v2

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    const/high16 p1, 0xc80000

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public getAllocator()Lcom/google/android/exoplayer2/upstream/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->allocator:Lcom/google/android/exoplayer2/upstream/p;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k;->g(Z)V

    .line 5
    return-void
.end method

.method public onReleased()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k;->g(Z)V

    .line 5
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k;->g(Z)V

    .line 5
    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k;->retainBackBufferFromKeyframe:Z

    return v0
.end method
