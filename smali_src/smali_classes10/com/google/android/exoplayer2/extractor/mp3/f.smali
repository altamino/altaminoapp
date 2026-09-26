.class public final Lcom/google/android/exoplayer2/extractor/mp3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/r;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x8

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field public static final FLAG_ENABLE_INDEX_SEEKING:I = 0x4

.field private static final MAX_SNIFF_BYTES:I = 0x8000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Lv2/b$a;

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I = 0x496e666f

.field private static final SEEK_HEADER_UNSET:I = 0x0

.field private static final SEEK_HEADER_VBRI:I = 0x56425249

.field private static final SEEK_HEADER_XING:I = 0x58696e67


# instance fields
.field private basisTimeUs:J

.field private currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

.field private disableSeeking:Z

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private firstSamplePosition:J

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/x;

.field private final id3Peeker:Lcom/google/android/exoplayer2/extractor/y;

.field private isSeekInProgress:Z

.field private metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private realTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Lcom/google/android/exoplayer2/util/c0;

.field private seekTimeUs:J

.field private seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

.field private final skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

.field private final synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

.field private synchronizedHeaderData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/d;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/f;->FACTORY:Lcom/google/android/exoplayer2/extractor/r;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/e;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/e;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/f;->REQUIRED_ID3_FRAME_PREDICATE:Lv2/b$a;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->flags:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->forcedFirstSampleTimestampUs:J

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/audio/h0$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/h0$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/x;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/x;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->basisTimeUs:J

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/y;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/y;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->id3Peeker:Lcom/google/android/exoplayer2/extractor/y;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/k;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/k;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp3/f;->n()[Lcom/google/android/exoplayer2/extractor/l;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(IIIII)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/f;->o(IIIII)Z

    move-result p0

    return p0
.end method

.method private f()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/extractor/m;)Lcom/google/android/exoplayer2/extractor/mp3/g;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->q(Lcom/google/android/exoplayer2/extractor/m;)Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/f;->p(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/c;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->disableSeeking:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/g$a;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp3/g$a;-><init>()V

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->flags:I

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x4

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/b0;->getDurationUs()J

    .line 36
    move-result-wide v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/mp3/g;->a()J

    .line 40
    move-result-wide v0

    .line 41
    :goto_0
    move-wide v9, v0

    .line 42
    move-wide v5, v2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->getDurationUs()J

    .line 49
    move-result-wide v2

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/g;->a()J

    .line 53
    move-result-wide v0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->k(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    .line 60
    move-result-wide v2

    .line 61
    .line 62
    const-wide/16 v0, -0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 69
    move-result-wide v7

    .line 70
    move-object v4, v0

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/mp3/b;-><init>(JJJ)V

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_3
    if-eqz v1, :cond_4

    .line 77
    move-object v0, v1

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_4
    if-eqz v0, :cond_5

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    const/4 v0, 0x0

    .line 83
    :goto_2
    const/4 v1, 0x1

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->isSeekable()Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-nez v2, :cond_8

    .line 92
    .line 93
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->flags:I

    .line 94
    and-int/2addr v2, v1

    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->flags:I

    .line 99
    .line 100
    and-int/lit8 v0, v0, 0x2

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    goto :goto_3

    .line 104
    :cond_7
    const/4 v1, 0x0

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->j(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 108
    move-result-object v0

    .line 109
    :cond_8
    return-object v0
.end method

.method private h(J)J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->basisTimeUs:J

    .line 3
    .line 4
    .line 5
    const-wide/32 v2, 0xf4240

    .line 6
    mul-long/2addr p1, v2

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 9
    .line 10
    iget v2, v2, Lcom/google/android/exoplayer2/audio/h0$a;->sampleRate:I

    .line 11
    int-to-long v2, v2

    .line 12
    div-long/2addr p1, v2

    .line 13
    add-long/2addr v0, p1

    .line 14
    return-wide v0
.end method

.method private j(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/extractor/mp3/g;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/h0$a;->a(I)Z

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/a;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 33
    move-result-wide v3

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 37
    move-result-wide v5

    .line 38
    .line 39
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 40
    move-object v2, v0

    .line 41
    move v8, p2

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mp3/a;-><init>(JJLcom/google/android/exoplayer2/audio/h0$a;Z)V

    .line 45
    return-object v0
.end method

.method private static k(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 5
    .param p0    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->g(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, "TLEN"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object p0, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    return-wide v0
.end method

.method private static l(Lcom/google/android/exoplayer2/util/c0;I)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v1, p1, 0x4

    .line 7
    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    const v0, 0x58696e67

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    .line 23
    const v0, 0x496e666f

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    :cond_0
    return p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 30
    move-result p1

    .line 31
    .line 32
    const/16 v0, 0x28

    .line 33
    .line 34
    if-lt p1, v0, :cond_2

    .line 35
    .line 36
    const/16 p1, 0x24

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 43
    move-result p0

    .line 44
    .line 45
    .line 46
    const p1, 0x56425249

    .line 47
    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    return p1

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method private static m(IJ)Z
    .locals 4

    .line 1
    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic n()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/l;

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/f;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    aput-object v1, v0, v2

    .line 12
    return-object v0
.end method

.method private static synthetic o(IIIII)Z
    .locals 3

    .line 1
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-eq p4, v2, :cond_1

    if-eq p0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static p(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/c;
    .locals 4
    .param p0    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->h()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->g(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->k(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/c;->b(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Lcom/google/android/exoplayer2/extractor/mp3/c;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private q(Lcom/google/android/exoplayer2/extractor/m;)Lcom/google/android/exoplayer2/extractor/mp3/g;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v5, Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 5
    .line 6
    iget v0, v0, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 7
    .line 8
    .line 9
    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 16
    .line 17
    iget v1, v1, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 18
    const/4 v6, 0x0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v6, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 24
    .line 25
    iget v1, v0, Lcom/google/android/exoplayer2/audio/h0$a;->version:I

    .line 26
    const/4 v2, 0x1

    .line 27
    and-int/2addr v1, v2

    .line 28
    .line 29
    const/16 v3, 0x15

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget v0, v0, Lcom/google/android/exoplayer2/audio/h0$a;->channels:I

    .line 34
    .line 35
    if-eq v0, v2, :cond_0

    .line 36
    .line 37
    const/16 v3, 0x24

    .line 38
    :cond_0
    :goto_0
    move v7, v3

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/audio/h0$a;->channels:I

    .line 42
    .line 43
    if-eq v0, v2, :cond_2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    const/16 v3, 0xd

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/extractor/mp3/f;->l(Lcom/google/android/exoplayer2/util/c0;I)I

    .line 51
    move-result v8

    .line 52
    .line 53
    .line 54
    const v0, 0x58696e67

    .line 55
    .line 56
    .line 57
    const v9, 0x496e666f

    .line 58
    .line 59
    if-eq v8, v0, :cond_5

    .line 60
    .line 61
    if-ne v8, v9, :cond_3

    .line 62
    goto :goto_2

    .line 63
    .line 64
    .line 65
    :cond_3
    const v0, 0x56425249

    .line 66
    .line 67
    if-ne v8, v0, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 71
    move-result-wide v0

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 75
    move-result-wide v2

    .line 76
    .line 77
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 78
    .line 79
    .line 80
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp3/h;->b(JJLcom/google/android/exoplayer2/audio/h0$a;Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/mp3/h;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 84
    .line 85
    iget v1, v1, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 89
    goto :goto_3

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 93
    const/4 v0, 0x0

    .line 94
    goto :goto_3

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 98
    move-result-wide v0

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 102
    move-result-wide v2

    .line 103
    .line 104
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 105
    .line 106
    .line 107
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp3/i;->b(JJLcom/google/android/exoplayer2/audio/h0$a;Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/mp3/i;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/x;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/x;->a()Z

    .line 116
    move-result v1

    .line 117
    .line 118
    if-nez v1, :cond_6

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 122
    .line 123
    add-int/lit16 v7, v7, 0x8d

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v7}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 132
    move-result-object v1

    .line 133
    const/4 v2, 0x3

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v1, v6, v2}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 137
    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 142
    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/x;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->G()I

    .line 149
    move-result v2

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/x;->d(I)Z

    .line 153
    .line 154
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 155
    .line 156
    iget v1, v1, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 157
    .line 158
    .line 159
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->isSeekable()Z

    .line 165
    move-result v1

    .line 166
    .line 167
    if-nez v1, :cond_7

    .line 168
    .line 169
    if-ne v8, v9, :cond_7

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/extractor/mp3/f;->j(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :cond_7
    :goto_3
    return-object v0
.end method

.method private r(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/g;->a()J

    .line 9
    move-result-wide v2

    .line 10
    .line 11
    const-wide/16 v4, -0x1

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 19
    move-result-wide v4

    .line 20
    .line 21
    const-wide/16 v6, 0x4

    .line 22
    sub-long/2addr v2, v6

    .line 23
    .line 24
    cmp-long v0, v4, v2

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    return v1

    .line 28
    .line 29
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x4

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BIIZ)Z

    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    xor-int/2addr p1, v1

    .line 41
    return p1

    .line 42
    :catch_0
    return v1
.end method

.method private s(Lcom/google/android/exoplayer2/extractor/m;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeaderData:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->u(Lcom/google/android/exoplayer2/extractor/m;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 p1, -0x1

    .line 11
    return p1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->g(Lcom/google/android/exoplayer2/extractor/m;)Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/exoplayer2/a2$b;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/h0$a;->mimeType:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const/16 v2, 0x1000

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 50
    .line 51
    iget v2, v2, Lcom/google/android/exoplayer2/audio/h0$a;->channels:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 58
    .line 59
    iget v2, v2, Lcom/google/android/exoplayer2/audio/h0$a;->sampleRate:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/x;

    .line 66
    .line 67
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/x;->encoderDelay:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->N(I)Lcom/google/android/exoplayer2/a2$b;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/x;

    .line 74
    .line 75
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/x;->encoderPadding:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->O(I)Lcom/google/android/exoplayer2/a2$b;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->flags:I

    .line 82
    .line 83
    and-int/lit8 v2, v2, 0x8

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    const/4 v2, 0x0

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 104
    move-result-wide v0

    .line 105
    .line 106
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->firstSamplePosition:J

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->firstSamplePosition:J

    .line 110
    .line 111
    const-wide/16 v2, 0x0

    .line 112
    .line 113
    cmp-long v0, v0, v2

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 119
    move-result-wide v0

    .line 120
    .line 121
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->firstSamplePosition:J

    .line 122
    .line 123
    cmp-long v4, v0, v2

    .line 124
    .line 125
    if-gez v4, :cond_3

    .line 126
    sub-long/2addr v2, v0

    .line 127
    long-to-int v0, v2

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->t(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 134
    move-result p1

    .line 135
    return p1
.end method

.method private t(Lcom/google/android/exoplayer2/extractor/m;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->sampleBytesRemaining:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->r(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return v2

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 28
    move-result v0

    .line 29
    .line 30
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeaderData:I

    .line 31
    int-to-long v4, v4

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/f;->m(IJ)Z

    .line 35
    move-result v4

    .line 36
    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/h0;->j(I)I

    .line 41
    move-result v4

    .line 42
    .line 43
    if-ne v4, v2, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/audio/h0$a;->a(I)Z

    .line 50
    .line 51
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->basisTimeUs:J

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    .line 58
    cmp-long v0, v4, v6

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 66
    move-result-wide v4

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/g;->getTimeUs(J)J

    .line 70
    move-result-wide v4

    .line 71
    .line 72
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->basisTimeUs:J

    .line 73
    .line 74
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->forcedFirstSampleTimestampUs:J

    .line 75
    .line 76
    cmp-long v0, v4, v6

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 81
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/g;->getTimeUs(J)J

    .line 86
    move-result-wide v4

    .line 87
    .line 88
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->basisTimeUs:J

    .line 89
    .line 90
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->forcedFirstSampleTimestampUs:J

    .line 91
    sub-long/2addr v8, v4

    .line 92
    add-long/2addr v6, v8

    .line 93
    .line 94
    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->basisTimeUs:J

    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 97
    .line 98
    iget v4, v0, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 99
    .line 100
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->sampleBytesRemaining:I

    .line 101
    .line 102
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 103
    .line 104
    instance-of v5, v4, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 105
    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 109
    .line 110
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->samplesRead:J

    .line 111
    .line 112
    iget v0, v0, Lcom/google/android/exoplayer2/audio/h0$a;->samplesPerFrame:I

    .line 113
    int-to-long v7, v0

    .line 114
    add-long/2addr v5, v7

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/f;->h(J)J

    .line 118
    move-result-wide v5

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 122
    move-result-wide v7

    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 125
    .line 126
    iget v0, v0, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 127
    int-to-long v9, v0

    .line 128
    add-long/2addr v7, v9

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp3/b;->c(JJ)V

    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->isSeekInProgress:Z

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seekTimeUs:J

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/b;->b(J)Z

    .line 141
    move-result v0

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->isSeekInProgress:Z

    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 150
    goto :goto_1

    .line 151
    .line 152
    .line 153
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 154
    .line 155
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeaderData:I

    .line 156
    return v3

    .line 157
    .line 158
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 159
    .line 160
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->sampleBytesRemaining:I

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/h;IZ)I

    .line 164
    move-result p1

    .line 165
    .line 166
    if-ne p1, v2, :cond_5

    .line 167
    return v2

    .line 168
    .line 169
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->sampleBytesRemaining:I

    .line 170
    sub-int/2addr v0, p1

    .line 171
    .line 172
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->sampleBytesRemaining:I

    .line 173
    .line 174
    if-lez v0, :cond_6

    .line 175
    return v3

    .line 176
    .line 177
    :cond_6
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 178
    .line 179
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->samplesRead:J

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->h(J)J

    .line 183
    move-result-wide v5

    .line 184
    const/4 v7, 0x1

    .line 185
    .line 186
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 187
    .line 188
    iget v8, p1, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 189
    const/4 v9, 0x0

    .line 190
    const/4 v10, 0x0

    .line 191
    .line 192
    .line 193
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 194
    .line 195
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->samplesRead:J

    .line 196
    .line 197
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 198
    .line 199
    iget p1, p1, Lcom/google/android/exoplayer2/audio/h0$a;->samplesPerFrame:I

    .line 200
    int-to-long v4, p1

    .line 201
    add-long/2addr v0, v4

    .line 202
    .line 203
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->samplesRead:J

    .line 204
    .line 205
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->sampleBytesRemaining:I

    .line 206
    return v3
.end method

.method private u(Lcom/google/android/exoplayer2/extractor/m;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    const v0, 0x8000

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    const/high16 v0, 0x20000

    .line 9
    .line 10
    .line 11
    :goto_0
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
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->flags:I

    .line 26
    .line 27
    and-int/lit8 v1, v1, 0x8

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    move-object v1, v2

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp3/f;->REQUIRED_ID3_FRAME_PREDICATE:Lv2/b$a;

    .line 34
    .line 35
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->id3Peeker:Lcom/google/android/exoplayer2/extractor/y;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p1, v1}, Lcom/google/android/exoplayer2/extractor/y;->a(Lcom/google/android/exoplayer2/extractor/m;Lv2/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/x;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/x;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 52
    move-result-wide v4

    .line 53
    long-to-int v1, v4

    .line 54
    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 59
    :cond_3
    move v4, v3

    .line 60
    :goto_2
    move v5, v4

    .line 61
    move v6, v5

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v1, v3

    .line 64
    move v4, v1

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->r(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 69
    move-result v7

    .line 70
    const/4 v8, 0x1

    .line 71
    .line 72
    if-eqz v7, :cond_6

    .line 73
    .line 74
    if-lez v5, :cond_5

    .line 75
    goto :goto_5

    .line 76
    .line 77
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    .line 78
    .line 79
    .line 80
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 81
    throw p1

    .line 82
    .line 83
    :cond_6
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 87
    .line 88
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 92
    move-result v7

    .line 93
    .line 94
    if-eqz v4, :cond_7

    .line 95
    int-to-long v9, v4

    .line 96
    .line 97
    .line 98
    invoke-static {v7, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp3/f;->m(IJ)Z

    .line 99
    move-result v9

    .line 100
    .line 101
    if-eqz v9, :cond_8

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-static {v7}, Lcom/google/android/exoplayer2/audio/h0;->j(I)I

    .line 105
    move-result v9

    .line 106
    const/4 v10, -0x1

    .line 107
    .line 108
    if-ne v9, v10, :cond_c

    .line 109
    .line 110
    :cond_8
    add-int/lit8 v4, v6, 0x1

    .line 111
    .line 112
    if-ne v6, v0, :cond_a

    .line 113
    .line 114
    if-eqz p2, :cond_9

    .line 115
    return v3

    .line 116
    .line 117
    :cond_9
    const-string p1, "Searched too many bytes."

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 121
    move-result-object p1

    .line 122
    throw p1

    .line 123
    .line 124
    :cond_a
    if-eqz p2, :cond_b

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 128
    .line 129
    add-int v5, v1, v4

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 133
    goto :goto_4

    .line 134
    .line 135
    .line 136
    :cond_b
    invoke-interface {p1, v8}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 137
    :goto_4
    move v5, v3

    .line 138
    move v6, v4

    .line 139
    move v4, v5

    .line 140
    goto :goto_3

    .line 141
    .line 142
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 143
    .line 144
    if-ne v5, v8, :cond_d

    .line 145
    .line 146
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/audio/h0$a;->a(I)Z

    .line 150
    move v4, v7

    .line 151
    goto :goto_7

    .line 152
    :cond_d
    const/4 v7, 0x4

    .line 153
    .line 154
    if-ne v5, v7, :cond_f

    .line 155
    .line 156
    :goto_5
    if-eqz p2, :cond_e

    .line 157
    add-int/2addr v1, v6

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 161
    goto :goto_6

    .line 162
    .line 163
    .line 164
    :cond_e
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 165
    .line 166
    :goto_6
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeaderData:I

    .line 167
    return v8

    .line 168
    .line 169
    :cond_f
    :goto_7
    add-int/lit8 v9, v9, -0x4

    .line 170
    .line 171
    .line 172
    invoke-interface {p1, v9}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    .line 173
    goto :goto_3
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
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->u(Lcom/google/android/exoplayer2/extractor/m;Z)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->f()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->s(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 7
    move-result p1

    .line 8
    const/4 p2, -0x1

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 13
    .line 14
    instance-of p2, p2, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->samplesRead:J

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->h(J)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/b0;->getDurationUs()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    cmp-long p2, v2, v0

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 35
    .line 36
    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/b;->d(J)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 47
    :cond_0
    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 18
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->disableSeeking:Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->synchronizedHeaderData:I

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->basisTimeUs:J

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->samplesRead:J

    .line 15
    .line 16
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->sampleBytesRemaining:I

    .line 17
    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seekTimeUs:J

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 21
    .line 22
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/b;->b(J)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 p1, 0x1

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->isSeekInProgress:Z

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 40
    :cond_0
    return-void
.end method
