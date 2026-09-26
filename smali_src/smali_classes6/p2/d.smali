.class public final Lp2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


# static fields
.field private static final BUFFER_LENGTH:I = 0x8000

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/r;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x1

.field private static final SAMPLE_NUMBER_UNKNOWN:I = -0x1

.field private static final STATE_GET_FRAME_START_MARKER:I = 0x4

.field private static final STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES:I = 0x1

.field private static final STATE_READ_FRAMES:I = 0x5

.field private static final STATE_READ_ID3_METADATA:I = 0x0

.field private static final STATE_READ_METADATA_BLOCKS:I = 0x3

.field private static final STATE_READ_STREAM_MARKER:I = 0x2


# instance fields
.field private binarySearchSeeker:Lp2/b;

.field private final buffer:Lcom/google/android/exoplayer2/util/c0;

.field private currentFrameBytesWritten:I

.field private currentFrameFirstSampleNumber:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

.field private frameStartMarker:I

.field private id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final id3MetadataDisabled:Z

.field private minFrameSize:I

.field private final sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

.field private state:I

.field private final streamMarkerAndInfoBlock:[B

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lp2/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lp2/c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lp2/d;->FACTORY:Lcom/google/android/exoplayer2/extractor/r;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lp2/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lp2/d;->streamMarkerAndInfoBlock:[B

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/c0;-><init>([BI)V

    iput-object v0, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lp2/d;->id3MetadataDisabled:Z

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/s$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/s$a;-><init>()V

    iput-object p1, p0, Lp2/d;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    iput v2, p0, Lp2/d;->state:I

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 1

    .line 1
    invoke-static {}, Lp2/d;->i()[Lcom/google/android/exoplayer2/extractor/l;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/google/android/exoplayer2/util/c0;Z)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 13
    move-result v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x10

    .line 16
    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 21
    .line 22
    iget-object v1, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 23
    .line 24
    iget v2, p0, Lp2/d;->frameStartMarker:I

    .line 25
    .line 26
    iget-object v3, p0, Lp2/d;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/s;->d(Lcom/google/android/exoplayer2/util/c0;Lcom/google/android/exoplayer2/extractor/v;ILcom/google/android/exoplayer2/extractor/s$a;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 36
    .line 37
    iget-object p1, p0, Lp2/d;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    .line 38
    .line 39
    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/s$a;->sampleNumber:J

    .line 40
    return-wide p1

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    if-eqz p2, :cond_5

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 49
    move-result p2

    .line 50
    .line 51
    iget v1, p0, Lp2/d;->minFrameSize:I

    .line 52
    sub-int/2addr p2, v1

    .line 53
    .line 54
    if-gt v0, p2, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 58
    .line 59
    :try_start_0
    iget-object p2, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 60
    .line 61
    iget v1, p0, Lp2/d;->frameStartMarker:I

    .line 62
    .line 63
    iget-object v2, p0, Lp2/d;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/extractor/s;->d(Lcom/google/android/exoplayer2/util/c0;Lcom/google/android/exoplayer2/extractor/v;ILcom/google/android/exoplayer2/extractor/s$a;)Z

    .line 67
    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    const/4 p2, 0x0

    .line 70
    .line 71
    .line 72
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 77
    move-result v2

    .line 78
    .line 79
    if-le v1, v2, :cond_2

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_2
    if-eqz p2, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 86
    .line 87
    iget-object p1, p0, Lp2/d;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/s$a;

    .line 88
    .line 89
    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/s$a;->sampleNumber:J

    .line 90
    return-wide p1

    .line 91
    .line 92
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 97
    move-result p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 101
    goto :goto_4

    .line 102
    .line 103
    .line 104
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 105
    .line 106
    :goto_4
    const-wide/16 p1, -0x1

    .line 107
    return-wide p1
.end method

.method private f(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/t;->b(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lp2/d;->frameStartMarker:I

    .line 7
    .line 8
    iget-object v0, p0, Lp2/d;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/exoplayer2/extractor/n;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1, v2, v3, v4}, Lp2/d;->g(JJ)Lcom/google/android/exoplayer2/extractor/b0;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 30
    const/4 p1, 0x5

    .line 31
    .line 32
    iput p1, p0, Lp2/d;->state:I

    .line 33
    return-void
.end method

.method private g(JJ)Lcom/google/android/exoplayer2/extractor/b0;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 8
    .line 9
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/v;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p3, Lcom/google/android/exoplayer2/extractor/u;

    .line 14
    .line 15
    .line 16
    invoke-direct {p3, v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/u;-><init>(Lcom/google/android/exoplayer2/extractor/v;J)V

    .line 17
    return-object p3

    .line 18
    .line 19
    :cond_0
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    cmp-long v0, p3, v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-wide v0, v2, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long v0, v0, v3

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Lp2/b;

    .line 34
    .line 35
    iget v3, p0, Lp2/d;->frameStartMarker:I

    .line 36
    move-object v1, v0

    .line 37
    move-wide v4, p1

    .line 38
    move-wide v6, p3

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v1 .. v7}, Lp2/b;-><init>(Lcom/google/android/exoplayer2/extractor/v;IJJ)V

    .line 42
    .line 43
    iput-object v0, p0, Lp2/d;->binarySearchSeeker:Lp2/b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a;->b()Lcom/google/android/exoplayer2/extractor/b0;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    .line 50
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/b0$b;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/v;->g()J

    .line 54
    move-result-wide p2

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    .line 58
    return-object p1
.end method

.method private h(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lp2/d;->streamMarkerAndInfoBlock:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    array-length v2, v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 11
    const/4 p1, 0x2

    .line 12
    .line 13
    iput p1, p0, Lp2/d;->state:I

    .line 14
    return-void
.end method

.method private static synthetic i()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/l;

    .line 4
    .line 5
    new-instance v1, Lp2/d;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Lp2/d;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    aput-object v1, v0, v2

    .line 12
    return-object v0
.end method

.method private j()V
    .locals 11

    .line 1
    .line 2
    iget-wide v0, p0, Lp2/d;->currentFrameFirstSampleNumber:J

    .line 3
    .line 4
    .line 5
    const-wide/32 v2, 0xf4240

    .line 6
    mul-long/2addr v0, v2

    .line 7
    .line 8
    iget-object v2, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, Lcom/google/android/exoplayer2/extractor/v;

    .line 15
    .line 16
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 17
    int-to-long v2, v2

    .line 18
    .line 19
    div-long v5, v0, v2

    .line 20
    .line 21
    iget-object v0, p0, Lp2/d;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    .line 28
    check-cast v4, Lcom/google/android/exoplayer2/extractor/e0;

    .line 29
    const/4 v7, 0x1

    .line 30
    .line 31
    iget v8, p0, Lp2/d;->currentFrameBytesWritten:I

    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    .line 35
    .line 36
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 37
    return-void
.end method

.method private k(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lp2/d;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, p0, Lp2/d;->binarySearchSeeker:Lp2/b;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a;->d()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lp2/d;->binarySearchSeeker:Lp2/b;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a;->c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    .line 29
    :cond_0
    iget-wide v0, p0, Lp2/d;->currentFrameFirstSampleNumber:J

    .line 30
    .line 31
    const-wide/16 v2, -0x1

    .line 32
    .line 33
    cmp-long p2, v0, v2

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/s;->i(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/v;)J

    .line 42
    move-result-wide p1

    .line 43
    .line 44
    iput-wide p1, p0, Lp2/d;->currentFrameFirstSampleNumber:J

    .line 45
    return v0

    .line 46
    .line 47
    :cond_1
    iget-object p2, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 51
    move-result p2

    .line 52
    .line 53
    .line 54
    const v1, 0x8000

    .line 55
    .line 56
    if-ge p2, v1, :cond_4

    .line 57
    .line 58
    iget-object v4, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 62
    move-result-object v4

    .line 63
    sub-int/2addr v1, p2

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v4, p2, v1}, Lcom/google/android/exoplayer2/extractor/m;->read([BII)I

    .line 67
    move-result p1

    .line 68
    const/4 v1, -0x1

    .line 69
    .line 70
    if-ne p1, v1, :cond_2

    .line 71
    const/4 v4, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    move v4, v0

    .line 74
    .line 75
    :goto_0
    if-nez v4, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 78
    add-int/2addr p2, p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/c0;->O(I)V

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_3
    iget-object p1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 88
    move-result p1

    .line 89
    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lp2/d;->j()V

    .line 94
    return v1

    .line 95
    :cond_4
    move v4, v0

    .line 96
    .line 97
    :cond_5
    :goto_1
    iget-object p1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 101
    move-result p1

    .line 102
    .line 103
    iget p2, p0, Lp2/d;->currentFrameBytesWritten:I

    .line 104
    .line 105
    iget v1, p0, Lp2/d;->minFrameSize:I

    .line 106
    .line 107
    if-ge p2, v1, :cond_6

    .line 108
    .line 109
    iget-object v5, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 110
    sub-int/2addr v1, p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 114
    move-result p2

    .line 115
    .line 116
    .line 117
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 118
    move-result p2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, p2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 122
    .line 123
    :cond_6
    iget-object p2, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p2, v4}, Lp2/d;->e(Lcom/google/android/exoplayer2/util/c0;Z)J

    .line 127
    move-result-wide v4

    .line 128
    .line 129
    iget-object p2, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 133
    move-result p2

    .line 134
    sub-int/2addr p2, p1

    .line 135
    .line 136
    iget-object v1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 140
    .line 141
    iget-object p1, p0, Lp2/d;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 142
    .line 143
    iget-object v1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 144
    .line 145
    .line 146
    invoke-interface {p1, v1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 147
    .line 148
    iget p1, p0, Lp2/d;->currentFrameBytesWritten:I

    .line 149
    add-int/2addr p1, p2

    .line 150
    .line 151
    iput p1, p0, Lp2/d;->currentFrameBytesWritten:I

    .line 152
    .line 153
    cmp-long p1, v4, v2

    .line 154
    .line 155
    if-eqz p1, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lp2/d;->j()V

    .line 159
    .line 160
    iput v0, p0, Lp2/d;->currentFrameBytesWritten:I

    .line 161
    .line 162
    iput-wide v4, p0, Lp2/d;->currentFrameFirstSampleNumber:J

    .line 163
    .line 164
    :cond_7
    iget-object p1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 168
    move-result p1

    .line 169
    .line 170
    const/16 p2, 0x10

    .line 171
    .line 172
    if-ge p1, p2, :cond_8

    .line 173
    .line 174
    iget-object p1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 178
    move-result p1

    .line 179
    .line 180
    iget-object p2, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 184
    move-result-object p2

    .line 185
    .line 186
    iget-object v1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 190
    move-result v1

    .line 191
    .line 192
    iget-object v2, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 196
    move-result-object v2

    .line 197
    .line 198
    .line 199
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    .line 201
    iget-object p2, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 205
    .line 206
    iget-object p2, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/c0;->O(I)V

    .line 210
    :cond_8
    return v0
.end method

.method private l(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lp2/d;->id3MetadataDisabled:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/t;->d(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lp2/d;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 11
    .line 12
    iput v1, p0, Lp2/d;->state:I

    .line 13
    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/t$a;

    .line 3
    .line 4
    iget-object v1, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/t$a;-><init>(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :goto_0
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/t;->e(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/t$a;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/t$a;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/google/android/exoplayer2/extractor/v;

    .line 23
    .line 24
    iput-object v2, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p1, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 33
    .line 34
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 35
    const/4 v0, 0x6

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result p1

    .line 40
    .line 41
    iput p1, p0, Lp2/d;->minFrameSize:I

    .line 42
    .line 43
    iget-object p1, p0, Lp2/d;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Lcom/google/android/exoplayer2/extractor/e0;

    .line 50
    .line 51
    iget-object v0, p0, Lp2/d;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 52
    .line 53
    iget-object v1, p0, Lp2/d;->streamMarkerAndInfoBlock:[B

    .line 54
    .line 55
    iget-object v2, p0, Lp2/d;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/v;->h([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 63
    const/4 p1, 0x4

    .line 64
    .line 65
    iput p1, p0, Lp2/d;->state:I

    .line 66
    return-void
.end method

.method private n(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/t;->i(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 4
    const/4 p1, 0x3

    .line 5
    .line 6
    iput p1, p0, Lp2/d;->state:I

    .line 7
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/t;->c(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/t;->a(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lp2/d;->state:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eq v0, v2, :cond_4

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    const/4 v2, 0x3

    .line 13
    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    const/4 v2, 0x4

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    const/4 v1, 0x5

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lp2/d;->k(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    throw p1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lp2/d;->f(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 35
    return v1

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0, p1}, Lp2/d;->m(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 39
    return v1

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-direct {p0, p1}, Lp2/d;->n(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 43
    return v1

    .line 44
    .line 45
    .line 46
    :cond_4
    invoke-direct {p0, p1}, Lp2/d;->h(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 47
    return v1

    .line 48
    .line 49
    .line 50
    :cond_5
    invoke-direct {p0, p1}, Lp2/d;->l(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 51
    return v1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lp2/d;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lp2/d;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 14
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long p1, p1, v0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iput p2, p0, Lp2/d;->state:I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lp2/d;->binarySearchSeeker:Lp2/b;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/a;->h(J)V

    .line 18
    .line 19
    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_2
    const-wide/16 v0, -0x1

    .line 25
    .line 26
    :goto_1
    iput-wide v0, p0, Lp2/d;->currentFrameFirstSampleNumber:J

    .line 27
    .line 28
    iput p2, p0, Lp2/d;->currentFrameBytesWritten:I

    .line 29
    .line 30
    iget-object p1, p0, Lp2/d;->buffer:Lcom/google/android/exoplayer2/util/c0;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 34
    return-void
.end method
