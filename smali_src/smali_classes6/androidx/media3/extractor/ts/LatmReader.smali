.class public final Landroidx/media3/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x400

.field private static final STATE_FINDING_SYNC_1:I = 0x0

.field private static final STATE_FINDING_SYNC_2:I = 0x1

.field private static final STATE_READING_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final SYNC_BYTE_FIRST:I = 0x56

.field private static final SYNC_BYTE_SECOND:I = 0xe0


# instance fields
.field private audioMuxVersionA:I

.field private bytesRead:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private format:Landroidx/media3/common/Format;

.field private formatId:Ljava/lang/String;

.field private frameLengthType:I

.field private final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private numSubframes:I

.field private otherDataLenBits:J

.field private otherDataPresent:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private final sampleBitArray:Landroidx/media3/common/util/ParsableBitArray;

.field private final sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private sampleDurationUs:J

.field private sampleRateHz:I

.field private sampleSize:I

.field private secondHeaderByte:I

.field private state:I

.field private streamMuxRead:Z

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 6
    .line 7
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 8
    .line 9
    const/16 v0, 0x400

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media3/common/util/ParsableBitArray;

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    iput-wide v0, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    .line 33
    return-void
.end method

.method private static d(Landroidx/media3/common/util/ParsableBitArray;)J
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 5
    move-result v0

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 13
    move-result p0

    .line 14
    int-to-long v0, p0

    .line 15
    return-wide v0
.end method

.method private e(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->g()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/LatmReader;->j(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/media3/extractor/ts/LatmReader;->audioMuxVersionA:I

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    iget v0, p0, Landroidx/media3/extractor/ts/LatmReader;->numSubframes:I

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/LatmReader;->h(Landroidx/media3/common/util/ParsableBitArray;)I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/ts/LatmReader;->i(Landroidx/media3/common/util/ParsableBitArray;I)V

    .line 35
    .line 36
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/LatmReader;->otherDataPresent:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-wide v0, p0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 41
    long-to-int v0, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 45
    :cond_2
    return-void

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 49
    move-result-object p1

    .line 50
    throw p1

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 54
    move-result-object p1

    .line 55
    throw p1
.end method

.method private f(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1}, Landroidx/media3/extractor/AacUtil;->e(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v2, p0, Landroidx/media3/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 14
    .line 15
    iget v2, v1, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 16
    .line 17
    iput v2, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleRateHz:I

    .line 18
    .line 19
    iget v1, v1, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 20
    .line 21
    iput v1, p0, Landroidx/media3/extractor/ts/LatmReader;->channelCount:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    .line 25
    move-result p1

    .line 26
    sub-int/2addr v0, p1

    .line 27
    return v0
.end method

.method private g(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 5
    move-result v1

    .line 6
    .line 7
    iput v1, p0, Landroidx/media3/extractor/ts/LatmReader;->frameLengthType:I

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-eq v1, v2, :cond_3

    .line 13
    const/4 v3, 0x6

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    const/4 v0, 0x4

    .line 17
    .line 18
    if-eq v1, v0, :cond_2

    .line 19
    const/4 v0, 0x5

    .line 20
    .line 21
    if-eq v1, v0, :cond_2

    .line 22
    .line 23
    if-eq v1, v3, :cond_1

    .line 24
    const/4 v0, 0x7

    .line 25
    .line 26
    if-ne v1, v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 33
    throw p1

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_3
    const/16 v0, 0x9

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_4
    const/16 v0, 0x8

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 53
    :goto_1
    return-void
.end method

.method private h(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/extractor/ts/LatmReader;->frameLengthType:I

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    .line 14
    const/16 v2, 0xff

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method private i(Landroidx/media3/common/util/ParsableBitArray;I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->e()I

    .line 4
    move-result v0

    .line 5
    .line 6
    and-int/lit8 v1, v0, 0x7

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 11
    .line 12
    shr-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 22
    move-result-object v0

    .line 23
    .line 24
    mul-int/lit8 v1, p2, 0x8

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->i([BII)V

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 34
    .line 35
    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0, p2}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 41
    .line 42
    iget-wide v2, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    cmp-long p1, v2, v0

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 54
    const/4 v4, 0x1

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    move v5, p2

    .line 58
    .line 59
    .line 60
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->f(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 61
    .line 62
    iget-wide p1, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    .line 63
    .line 64
    iget-wide v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 65
    add-long/2addr p1, v0

    .line 66
    .line 67
    iput-wide p1, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    .line 68
    :cond_1
    return-void
.end method

.method private j(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 12
    move-result v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    .line 16
    :goto_0
    iput v3, p0, Landroidx/media3/extractor/ts/LatmReader;->audioMuxVersionA:I

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    if-nez v3, :cond_9

    .line 20
    .line 21
    if-ne v1, v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroidx/media3/extractor/ts/LatmReader;->d(Landroidx/media3/common/util/ParsableBitArray;)J

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->g()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_8

    .line 31
    const/4 v3, 0x6

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 35
    move-result v3

    .line 36
    .line 37
    iput v3, p0, Landroidx/media3/extractor/ts/LatmReader;->numSubframes:I

    .line 38
    const/4 v3, 0x4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 42
    move-result v3

    .line 43
    const/4 v5, 0x3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 47
    move-result v5

    .line 48
    .line 49
    if-nez v3, :cond_7

    .line 50
    .line 51
    if-nez v5, :cond_7

    .line 52
    .line 53
    const/16 v3, 0x8

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->e()I

    .line 59
    move-result v4

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/LatmReader;->f(Landroidx/media3/common/util/ParsableBitArray;)I

    .line 63
    move-result v5

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 67
    .line 68
    add-int/lit8 v4, v5, 0x7

    .line 69
    div-int/2addr v4, v3

    .line 70
    .line 71
    new-array v4, v4, [B

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v4, v2, v5}, Landroidx/media3/common/util/ParsableBitArray;->i([BII)V

    .line 75
    .line 76
    new-instance v2, Landroidx/media3/common/Format$Builder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 80
    .line 81
    iget-object v5, p0, Landroidx/media3/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    const-string v5, "audio/mp4a-latm"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    iget-object v5, p0, Landroidx/media3/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    iget v5, p0, Landroidx/media3/extractor/ts/LatmReader;->channelCount:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->J(I)Landroidx/media3/common/Format$Builder;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    iget v5, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleRateHz:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v5}, Landroidx/media3/common/Format$Builder;->h0(I)Landroidx/media3/common/Format$Builder;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->V(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    iget-object v4, p0, Landroidx/media3/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    iget-object v4, p0, Landroidx/media3/extractor/ts/LatmReader;->format:Landroidx/media3/common/Format;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v4

    .line 134
    .line 135
    if-nez v4, :cond_3

    .line 136
    .line 137
    iput-object v2, p0, Landroidx/media3/extractor/ts/LatmReader;->format:Landroidx/media3/common/Format;

    .line 138
    .line 139
    iget v4, v2, Landroidx/media3/common/Format;->sampleRate:I

    .line 140
    int-to-long v4, v4

    .line 141
    .line 142
    .line 143
    const-wide/32 v6, 0x3d090000

    .line 144
    div-long/2addr v6, v4

    .line 145
    .line 146
    iput-wide v6, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 147
    .line 148
    iget-object v4, p0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 149
    .line 150
    .line 151
    invoke-interface {v4, v2}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/Format;)V

    .line 152
    goto :goto_1

    .line 153
    .line 154
    .line 155
    :cond_2
    invoke-static {p1}, Landroidx/media3/extractor/ts/LatmReader;->d(Landroidx/media3/common/util/ParsableBitArray;)J

    .line 156
    move-result-wide v4

    .line 157
    long-to-int v2, v4

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/LatmReader;->f(Landroidx/media3/common/util/ParsableBitArray;)I

    .line 161
    move-result v4

    .line 162
    sub-int/2addr v2, v4

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/LatmReader;->g(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->g()Z

    .line 172
    move-result v2

    .line 173
    .line 174
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/LatmReader;->otherDataPresent:Z

    .line 175
    .line 176
    const-wide/16 v4, 0x0

    .line 177
    .line 178
    iput-wide v4, p0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 179
    .line 180
    if-eqz v2, :cond_5

    .line 181
    .line 182
    if-ne v1, v0, :cond_4

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Landroidx/media3/extractor/ts/LatmReader;->d(Landroidx/media3/common/util/ParsableBitArray;)J

    .line 186
    move-result-wide v0

    .line 187
    .line 188
    iput-wide v0, p0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 189
    goto :goto_2

    .line 190
    .line 191
    .line 192
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->g()Z

    .line 193
    move-result v0

    .line 194
    .line 195
    iget-wide v1, p0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 196
    shl-long/2addr v1, v3

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->h(I)I

    .line 200
    move-result v4

    .line 201
    int-to-long v4, v4

    .line 202
    add-long/2addr v1, v4

    .line 203
    .line 204
    iput-wide v1, p0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    .line 205
    .line 206
    if-nez v0, :cond_4

    .line 207
    .line 208
    .line 209
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->g()Z

    .line 210
    move-result v0

    .line 211
    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableBitArray;->r(I)V

    .line 216
    :cond_6
    return-void

    .line 217
    .line 218
    .line 219
    :cond_7
    invoke-static {v4, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 220
    move-result-object p1

    .line 221
    throw p1

    .line 222
    .line 223
    .line 224
    :cond_8
    invoke-static {v4, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 225
    move-result-object p1

    .line 226
    throw p1

    .line 227
    .line 228
    .line 229
    :cond_9
    invoke-static {v4, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 230
    move-result-object p1

    .line 231
    throw p1
.end method

.method private k(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->Q(I)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media3/common/util/ParsableBitArray;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->n([B)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_7

    .line 12
    .line 13
    iget v0, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    .line 14
    .line 15
    const/16 v1, 0x56

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-eqz v0, :cond_6

    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    if-eq v0, v2, :cond_4

    .line 23
    const/4 v1, 0x3

    .line 24
    .line 25
    if-eq v0, v3, :cond_2

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 31
    move-result v0

    .line 32
    .line 33
    iget v1, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleSize:I

    .line 34
    .line 35
    iget v2, p0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    .line 36
    sub-int/2addr v1, v2

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 40
    move-result v0

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media3/common/util/ParsableBitArray;

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    .line 45
    .line 46
    iget v2, p0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->l([BII)V

    .line 50
    .line 51
    iget v1, p0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    .line 52
    add-int/2addr v1, v0

    .line 53
    .line 54
    iput v1, p0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    .line 55
    .line 56
    iget v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleSize:I

    .line 57
    .line 58
    if-ne v1, v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media3/common/util/ParsableBitArray;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media3/common/util/ParsableBitArray;

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/LatmReader;->e(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 69
    .line 70
    iput v4, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 77
    throw p1

    .line 78
    .line 79
    :cond_2
    iget v0, p0, Landroidx/media3/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 80
    .line 81
    and-int/lit16 v0, v0, -0xe1

    .line 82
    .line 83
    shl-int/lit8 v0, v0, 0x8

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 87
    move-result v2

    .line 88
    or-int/2addr v0, v2

    .line 89
    .line 90
    iput v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleSize:I

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 96
    move-result-object v2

    .line 97
    array-length v2, v2

    .line 98
    .line 99
    if-le v0, v2, :cond_3

    .line 100
    .line 101
    iget v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleSize:I

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/LatmReader;->k(I)V

    .line 105
    .line 106
    :cond_3
    iput v4, p0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    .line 107
    .line 108
    iput v1, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 113
    move-result v0

    .line 114
    .line 115
    and-int/lit16 v2, v0, 0xe0

    .line 116
    .line 117
    const/16 v5, 0xe0

    .line 118
    .line 119
    if-ne v2, v5, :cond_5

    .line 120
    .line 121
    iput v0, p0, Landroidx/media3/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 122
    .line 123
    iput v3, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    .line 124
    goto :goto_0

    .line 125
    .line 126
    :cond_5
    if-eq v0, v1, :cond_0

    .line 127
    .line 128
    iput v4, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    .line 129
    goto :goto_0

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 133
    move-result v0

    .line 134
    .line 135
    if-ne v0, v1, :cond_0

    .line 136
    .line 137
    iput v2, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    :cond_7
    return-void
.end method

.method public b(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public c(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->c()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    return-void
.end method
