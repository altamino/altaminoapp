.class public final Lcom/google/android/exoplayer2/extractor/ts/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# static fields
.field private static final HEADER_SIZE:I = 0x80

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lcom/google/android/exoplayer2/a2;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBits:Lcom/google/android/exoplayer2/util/b0;

.field private final headerScratchBytes:Lcom/google/android/exoplayer2/util/c0;

.field private final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastByteWas0B:Z

.field private output:Lcom/google/android/exoplayer2/extractor/e0;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBits:Lcom/google/android/exoplayer2/util/b0;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/util/c0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/b0;->data:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBytes:Lcom/google/android/exoplayer2/util/c0;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->timeUs:J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->language:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/c0;[BI)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

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
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 18
    .line 19
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

    .line 20
    add-int/2addr p1, v0

    .line 21
    .line 22
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBits:Lcom/google/android/exoplayer2/util/b0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/b0;->p(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBits:Lcom/google/android/exoplayer2/util/b0;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b;->e(Lcom/google/android/exoplayer2/util/b0;)Lcom/google/android/exoplayer2/audio/b$b;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->format:Lcom/google/android/exoplayer2/a2;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->channelCount:I

    .line 19
    .line 20
    iget v3, v1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->sampleRate:I

    .line 25
    .line 26
    iget v3, v1, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->mimeType:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/a2$b;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->formatId:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->mimeType:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->channelCount:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iget v2, v0, Lcom/google/android/exoplayer2/audio/b$b;->sampleRate:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->language:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->format:Lcom/google/android/exoplayer2/a2;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 82
    .line 83
    .line 84
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 85
    .line 86
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/b$b;->frameSize:I

    .line 87
    .line 88
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->sampleSize:I

    .line 89
    .line 90
    iget v0, v0, Lcom/google/android/exoplayer2/audio/b$b;->sampleCount:I

    .line 91
    int-to-long v0, v0

    .line 92
    .line 93
    .line 94
    const-wide/32 v2, 0xf4240

    .line 95
    mul-long/2addr v0, v2

    .line 96
    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->format:Lcom/google/android/exoplayer2/a2;

    .line 98
    .line 99
    iget v2, v2, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 100
    int-to-long v2, v2

    .line 101
    div-long/2addr v0, v2

    .line 102
    .line 103
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->sampleDurationUs:J

    .line 104
    return-void
.end method

.method private f(Lcom/google/android/exoplayer2/util/c0;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-lez v0, :cond_4

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->lastByteWas0B:Z

    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    move v1, v3

    .line 22
    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->lastByteWas0B:Z

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 28
    move-result v0

    .line 29
    .line 30
    const/16 v4, 0x77

    .line 31
    .line 32
    if-ne v0, v4, :cond_2

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->lastByteWas0B:Z

    .line 35
    return v3

    .line 36
    .line 37
    :cond_2
    if-ne v0, v2, :cond_3

    .line 38
    move v1, v3

    .line 39
    .line 40
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->lastByteWas0B:Z

    .line 41
    goto :goto_0

    .line 42
    :cond_4
    return v1
.end method


# virtual methods
.method public b(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->timeUs:J

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_5

    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->state:I

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    if-eq v0, v3, :cond_3

    .line 21
    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 27
    move-result v0

    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->sampleSize:I

    .line 30
    .line 31
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

    .line 32
    sub-int/2addr v2, v3

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 42
    .line 43
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

    .line 44
    add-int/2addr v2, v0

    .line 45
    .line 46
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

    .line 47
    .line 48
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->sampleSize:I

    .line 49
    .line 50
    if-ne v2, v7, :cond_0

    .line 51
    .line 52
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->timeUs:J

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    cmp-long v0, v4, v2

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 64
    const/4 v6, 0x1

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    .line 68
    .line 69
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 70
    .line 71
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->timeUs:J

    .line 72
    .line 73
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->sampleDurationUs:J

    .line 74
    add-long/2addr v2, v4

    .line 75
    .line 76
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->timeUs:J

    .line 77
    .line 78
    :cond_2
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->state:I

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBytes:Lcom/google/android/exoplayer2/util/c0;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 85
    move-result-object v0

    .line 86
    .line 87
    const/16 v3, 0x80

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/c;->a(Lcom/google/android/exoplayer2/util/c0;[BI)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/c;->e()V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBytes:Lcom/google/android/exoplayer2/util/c0;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBytes:Lcom/google/android/exoplayer2/util/c0;

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 109
    .line 110
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->state:I

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/c;->f(Lcom/google/android/exoplayer2/util/c0;)Z

    .line 115
    move-result v0

    .line 116
    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->state:I

    .line 120
    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBytes:Lcom/google/android/exoplayer2/util/c0;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 125
    move-result-object v0

    .line 126
    .line 127
    const/16 v4, 0xb

    .line 128
    .line 129
    aput-byte v4, v0, v1

    .line 130
    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->headerScratchBytes:Lcom/google/android/exoplayer2/util/c0;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 135
    move-result-object v0

    .line 136
    .line 137
    const/16 v1, 0x77

    .line 138
    .line 139
    aput-byte v1, v0, v3

    .line 140
    .line 141
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    :cond_5
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->b()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->formatId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->c()I

    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->output:Lcom/google/android/exoplayer2/extractor/e0;

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

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->state:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->bytesRead:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->lastByteWas0B:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c;->timeUs:J

    return-void
.end method
