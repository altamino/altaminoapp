.class public final Landroidx/media3/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x12

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Landroidx/media3/common/Format;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field private final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

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
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private d(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 7
    .line 8
    sub-int v1, p3, v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->l([BII)V

    .line 18
    .line 19
    iget p1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 20
    add-int/2addr p1, v0

    .line 21
    .line 22
    iput p1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 23
    .line 24
    if-ne p1, p3, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private e()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/extractor/DtsUtil;->g([BLjava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/Format;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v0}, Landroidx/media3/extractor/DtsUtil;->a([B)I

    .line 30
    move-result v1

    .line 31
    .line 32
    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/extractor/DtsUtil;->f([B)I

    .line 36
    move-result v0

    .line 37
    int-to-long v0, v0

    .line 38
    .line 39
    .line 40
    const-wide/32 v2, 0xf4240

    .line 41
    mul-long/2addr v0, v2

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    .line 44
    .line 45
    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    .line 46
    int-to-long v2, v2

    .line 47
    div-long/2addr v0, v2

    .line 48
    long-to-int v0, v0

    .line 49
    int-to-long v0, v0

    .line 50
    .line 51
    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 52
    return-void
.end method

.method private f(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 10
    .line 11
    shl-int/lit8 v0, v0, 0x8

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    .line 17
    move-result v2

    .line 18
    or-int/2addr v0, v2

    .line 19
    .line 20
    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/media3/extractor/DtsUtil;->d(I)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 35
    .line 36
    shr-int/lit8 v2, v0, 0x18

    .line 37
    .line 38
    and-int/lit16 v2, v2, 0xff

    .line 39
    int-to-byte v2, v2

    .line 40
    .line 41
    aput-byte v2, p1, v1

    .line 42
    .line 43
    shr-int/lit8 v2, v0, 0x10

    .line 44
    .line 45
    and-int/lit16 v2, v2, 0xff

    .line 46
    int-to-byte v2, v2

    .line 47
    const/4 v3, 0x1

    .line 48
    .line 49
    aput-byte v2, p1, v3

    .line 50
    .line 51
    shr-int/lit8 v2, v0, 0x8

    .line 52
    .line 53
    and-int/lit16 v2, v2, 0xff

    .line 54
    int-to-byte v2, v2

    .line 55
    const/4 v4, 0x2

    .line 56
    .line 57
    aput-byte v2, p1, v4

    .line 58
    .line 59
    and-int/lit16 v0, v0, 0xff

    .line 60
    int-to-byte v0, v0

    .line 61
    const/4 v2, 0x3

    .line 62
    .line 63
    aput-byte v0, p1, v2

    .line 64
    const/4 p1, 0x4

    .line 65
    .line 66
    iput p1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 67
    .line 68
    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 69
    return v3

    .line 70
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

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
    if-lez v0, :cond_5

    .line 12
    .line 13
    iget v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x2

    .line 19
    .line 20
    if-eq v0, v1, :cond_3

    .line 21
    .line 22
    if-ne v0, v3, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 26
    move-result v0

    .line 27
    .line 28
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 29
    .line 30
    iget v3, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 31
    sub-int/2addr v1, v3

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result v0

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 41
    .line 42
    iget v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 43
    add-int/2addr v1, v0

    .line 44
    .line 45
    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 46
    .line 47
    iget v7, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 48
    .line 49
    if-ne v1, v7, :cond_0

    .line 50
    .line 51
    iget-wide v4, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    .line 58
    cmp-long v0, v4, v0

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 63
    const/4 v6, 0x1

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    .line 67
    .line 68
    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->f(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 69
    .line 70
    iget-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 71
    .line 72
    iget-wide v3, p0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    .line 73
    add-long/2addr v0, v3

    .line 74
    .line 75
    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    .line 76
    .line 77
    :cond_1
    iput v2, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 84
    throw p1

    .line 85
    .line 86
    :cond_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->e()[B

    .line 90
    move-result-object v0

    .line 91
    .line 92
    const/16 v1, 0x12

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/DtsReader;->d(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Landroidx/media3/extractor/ts/DtsReader;->e()V

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->U(I)V

    .line 107
    .line 108
    iget-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 109
    .line 110
    iget-object v2, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v2, v1}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 114
    .line 115
    iput v3, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/DtsReader;->f(Landroidx/media3/common/util/ParsableByteArray;)Z

    .line 120
    move-result v0

    .line 121
    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    iput v1, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    return-void
.end method

.method public b(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public c(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->c()I

    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 21
    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method
