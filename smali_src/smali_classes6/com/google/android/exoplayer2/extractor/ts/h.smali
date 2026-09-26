.class public final Lcom/google/android/exoplayer2/extractor/ts/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/r;

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field private static final MAX_PACKET_SIZE:I = 0x800

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE:I = 0x3e8


# instance fields
.field private averageFrameSize:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private firstFramePosition:J

.field private firstSampleTimestampUs:J

.field private final flags:I

.field private hasCalculatedAverageFrameSize:Z

.field private hasOutputSeekMap:Z

.field private final packetBuffer:Lcom/google/android/exoplayer2/util/c0;

.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/i;

.field private final scratch:Lcom/google/android/exoplayer2/util/c0;

.field private final scratchBits:Lcom/google/android/exoplayer2/util/b0;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/g;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/h;->FACTORY:Lcom/google/android/exoplayer2/extractor/r;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->flags:I

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/i;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/i;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->packetBuffer:Lcom/google/android/exoplayer2/util/c0;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->averageFrameSize:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->firstFramePosition:J

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratchBits:Lcom/google/android/exoplayer2/util/b0;

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/h;->h()[Lcom/google/android/exoplayer2/extractor/l;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->hasCalculatedAverageFrameSize:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->averageFrameSize:I

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/h;->j(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    move v2, v1

    .line 27
    :cond_2
    const/4 v5, 0x1

    .line 28
    .line 29
    :try_start_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v6, v1, v7, v5}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BIIZ)Z

    .line 38
    move-result v6

    .line 39
    .line 40
    if-eqz v6, :cond_7

    .line 41
    .line 42
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 46
    .line 47
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 51
    move-result v6

    .line 52
    .line 53
    .line 54
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/ts/i;->k(I)Z

    .line 55
    move-result v6

    .line 56
    .line 57
    if-nez v6, :cond_3

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 64
    move-result-object v6

    .line 65
    const/4 v7, 0x4

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v6, v1, v7, v5}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BIIZ)Z

    .line 69
    move-result v6

    .line 70
    .line 71
    if-nez v6, :cond_4

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratchBits:Lcom/google/android/exoplayer2/util/b0;

    .line 75
    .line 76
    const/16 v7, 0xe

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/b0;->p(I)V

    .line 80
    .line 81
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratchBits:Lcom/google/android/exoplayer2/util/b0;

    .line 82
    .line 83
    const/16 v7, 0xd

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 87
    move-result v6

    .line 88
    const/4 v7, 0x6

    .line 89
    .line 90
    if-le v6, v7, :cond_6

    .line 91
    int-to-long v7, v6

    .line 92
    add-long/2addr v3, v7

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    const/16 v7, 0x3e8

    .line 97
    .line 98
    if-ne v2, v7, :cond_5

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_5
    add-int/lit8 v6, v6, -0x6

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v6, v5}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(IZ)Z

    .line 105
    move-result v6

    .line 106
    .line 107
    if-nez v6, :cond_2

    .line 108
    :goto_0
    goto :goto_1

    .line 109
    .line 110
    :cond_6
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->hasCalculatedAverageFrameSize:Z

    .line 111
    .line 112
    const-string v1, "Malformed ADTS stream"

    .line 113
    const/4 v6, 0x0

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 117
    move-result-object v1

    .line 118
    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :catch_0
    :cond_7
    :goto_1
    move v1, v2

    .line 120
    .line 121
    .line 122
    :goto_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 123
    .line 124
    if-lez v1, :cond_8

    .line 125
    int-to-long v0, v1

    .line 126
    div-long/2addr v3, v0

    .line 127
    long-to-int p1, v3

    .line 128
    .line 129
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->averageFrameSize:I

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :cond_8
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->averageFrameSize:I

    .line 133
    .line 134
    :goto_3
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->hasCalculatedAverageFrameSize:Z

    .line 135
    return-void
.end method

.method private static f(IJ)I
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    .line 3
    .line 4
    const-wide/32 v2, 0x7a1200

    .line 5
    mul-long/2addr v0, v2

    .line 6
    div-long/2addr v0, p1

    .line 7
    long-to-int p0, v0

    .line 8
    return p0
.end method

.method private g(JZ)Lcom/google/android/exoplayer2/extractor/b0;
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->averageFrameSize:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/i;->i()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/h;->f(IJ)I

    .line 12
    move-result v8

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/extractor/e;

    .line 15
    .line 16
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->firstFramePosition:J

    .line 17
    .line 18
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->averageFrameSize:I

    .line 19
    move-object v3, v0

    .line 20
    move-wide v4, p1

    .line 21
    move v10, p3

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/e;-><init>(JJIIZ)V

    .line 25
    return-object v0
.end method

.method private static synthetic h()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/l;

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/h;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/h;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    aput-object v1, v0, v2

    .line 12
    return-object v0
.end method

.method private i(JZ)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->hasOutputSeekMap:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->flags:I

    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->averageFrameSize:I

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/ts/i;->i()J

    .line 32
    move-result-wide v5

    .line 33
    .line 34
    cmp-long v5, v5, v3

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    if-nez p3, :cond_2

    .line 39
    return-void

    .line 40
    .line 41
    :cond_2
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/ts/i;->i()J

    .line 47
    move-result-wide v5

    .line 48
    .line 49
    cmp-long p3, v5, v3

    .line 50
    .line 51
    if-eqz p3, :cond_4

    .line 52
    .line 53
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 54
    .line 55
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->flags:I

    .line 56
    .line 57
    and-int/lit8 v0, v0, 0x2

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    move v2, v1

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/extractor/ts/h;->g(JZ)Lcom/google/android/exoplayer2/extractor/b0;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 71
    .line 72
    new-instance p2, Lcom/google/android/exoplayer2/extractor/b0$b;

    .line 73
    .line 74
    .line 75
    invoke-direct {p2, v3, v4}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 79
    .line 80
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->hasOutputSeekMap:Z

    .line 81
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/extractor/m;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 8
    move-result-object v2

    .line 9
    .line 10
    const/16 v3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->G()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    const v3, 0x494433

    .line 28
    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 36
    .line 37
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->firstFramePosition:J

    .line 38
    .line 39
    const-wide/16 v4, -0x1

    .line 40
    .line 41
    cmp-long p1, v2, v4

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    int-to-long v2, v1

    .line 45
    .line 46
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->firstFramePosition:J

    .line 47
    :cond_0
    return v1

    .line 48
    .line 49
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 50
    const/4 v3, 0x3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->C()I

    .line 59
    move-result v2

    .line 60
    .line 61
    add-int/lit8 v3, v2, 0xa

    .line 62
    add-int/2addr v1, v3

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 66
    goto :goto_0
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/h;->j(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v3, v0

    .line 7
    move v2, v1

    .line 8
    move v4, v2

    .line 9
    .line 10
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 14
    move-result-object v5

    .line 15
    const/4 v6, 0x2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 29
    move-result v5

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/i;->k(I)Z

    .line 33
    move-result v5

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 44
    :goto_0
    move v2, v1

    .line 45
    move v4, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v5, 0x1

    .line 48
    add-int/2addr v2, v5

    .line 49
    const/4 v6, 0x4

    .line 50
    .line 51
    if-lt v2, v6, :cond_2

    .line 52
    .line 53
    const/16 v7, 0xbc

    .line 54
    .line 55
    if-le v4, v7, :cond_2

    .line 56
    return v5

    .line 57
    .line 58
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 62
    move-result-object v5

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 66
    .line 67
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratchBits:Lcom/google/android/exoplayer2/util/b0;

    .line 68
    .line 69
    const/16 v6, 0xe

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/b0;->p(I)V

    .line 73
    .line 74
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->scratchBits:Lcom/google/android/exoplayer2/util/b0;

    .line 75
    .line 76
    const/16 v6, 0xd

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x6

    .line 82
    .line 83
    if-gt v5, v6, :cond_3

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 98
    add-int/2addr v4, v5

    .line 99
    .line 100
    :goto_1
    sub-int v5, v3, v0

    .line 101
    .line 102
    const/16 v6, 0x2000

    .line 103
    .line 104
    if-lt v5, v6, :cond_0

    .line 105
    return v1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->flags:I

    .line 12
    .line 13
    and-int/lit8 v2, p2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    and-int/2addr p2, v3

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const-wide/16 v4, -0x1

    .line 22
    .line 23
    cmp-long p2, v0, v4

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/h;->e(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 29
    .line 30
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->packetBuffer:Lcom/google/android/exoplayer2/util/c0;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 34
    move-result-object p2

    .line 35
    .line 36
    const/16 v2, 0x800

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p2, v4, v2}, Lcom/google/android/exoplayer2/extractor/m;->read([BII)I

    .line 41
    move-result p1

    .line 42
    const/4 p2, -0x1

    .line 43
    .line 44
    if-ne p1, p2, :cond_2

    .line 45
    move v2, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v2, v4

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/h;->i(JZ)V

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    return p2

    .line 54
    .line 55
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->packetBuffer:Lcom/google/android/exoplayer2/util/c0;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 59
    .line 60
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->packetBuffer:Lcom/google/android/exoplayer2/util/c0;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/c0;->O(I)V

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->startedPacket:Z

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 70
    .line 71
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->firstSampleTimestampUs:J

    .line 72
    const/4 p2, 0x4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ts/i;->b(JI)V

    .line 76
    .line 77
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->startedPacket:Z

    .line 78
    .line 79
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 80
    .line 81
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->packetBuffer:Lcom/google/android/exoplayer2/util/c0;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/i;->c(Lcom/google/android/exoplayer2/util/c0;)V

    .line 85
    return v4
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 4

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/i0$d;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ts/i;->d(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 18
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->startedPacket:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->reader:Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/i;->seek()V

    .line 9
    .line 10
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ts/h;->firstSampleTimestampUs:J

    .line 11
    return-void
.end method
