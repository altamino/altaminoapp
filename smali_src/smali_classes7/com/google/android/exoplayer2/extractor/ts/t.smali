.class public final Lcom/google/android/exoplayer2/extractor/ts/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private formatId:Ljava/lang/String;

.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lcom/google/android/exoplayer2/audio/h0$a;

.field private final headerScratch:Lcom/google/android/exoplayer2/util/c0;

.field private final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastByteWasFF:Z

.field private output:Lcom/google/android/exoplayer2/extractor/e0;

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/t;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->state:I

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/util/c0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->headerScratch:Lcom/google/android/exoplayer2/util/c0;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/audio/h0$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/h0$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->header:Lcom/google/android/exoplayer2/audio/h0$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->timeUs:J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->language:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 12
    move-result v2

    .line 13
    .line 14
    :goto_0
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    aget-byte v3, v0, v1

    .line 17
    .line 18
    and-int/lit16 v4, v3, 0xff

    .line 19
    .line 20
    const/16 v5, 0xff

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    move v4, v7

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v4, v6

    .line 28
    .line 29
    :goto_1
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->lastByteWasFF:Z

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    and-int/lit16 v3, v3, 0xe0

    .line 34
    .line 35
    const/16 v5, 0xe0

    .line 36
    .line 37
    if-ne v3, v5, :cond_1

    .line 38
    move v3, v7

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    move v3, v6

    .line 41
    .line 42
    :goto_2
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->lastByteWasFF:Z

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    add-int/lit8 v2, v1, 0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 50
    .line 51
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->lastByteWasFF:Z

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->headerScratch:Lcom/google/android/exoplayer2/util/c0;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 57
    move-result-object p1

    .line 58
    .line 59
    aget-byte v0, v0, v1

    .line 60
    .line 61
    aput-byte v0, p1, v7

    .line 62
    const/4 p1, 0x2

    .line 63
    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 65
    .line 66
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->state:I

    .line 67
    return-void

    .line 68
    .line 69
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 74
    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameSize:I

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 9
    sub-int/2addr v1, v2

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 19
    .line 20
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 21
    add-int/2addr p1, v0

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 24
    .line 25
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameSize:I

    .line 26
    .line 27
    if-ge p1, v4, :cond_0

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->timeUs:J

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    cmp-long p1, v1, v5

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 42
    const/4 v3, 0x1

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 48
    .line 49
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->timeUs:J

    .line 50
    .line 51
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameDurationUs:J

    .line 52
    add-long/2addr v0, v2

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->timeUs:J

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    .line 57
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 58
    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->state:I

    .line 60
    return-void
.end method

.method private f(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 7
    const/4 v2, 0x4

    .line 8
    .line 9
    rsub-int/lit8 v1, v1, 0x4

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->headerScratch:Lcom/google/android/exoplayer2/util/c0;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 25
    .line 26
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 27
    add-int/2addr p1, v0

    .line 28
    .line 29
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 30
    .line 31
    if-ge p1, v2, :cond_0

    .line 32
    return-void

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->headerScratch:Lcom/google/android/exoplayer2/util/c0;

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->header:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->headerScratch:Lcom/google/android/exoplayer2/util/c0;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/h0$a;->a(I)Z

    .line 50
    move-result p1

    .line 51
    const/4 v1, 0x1

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    .line 56
    .line 57
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->state:I

    .line 58
    return-void

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->header:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 61
    .line 62
    iget v3, p1, Lcom/google/android/exoplayer2/audio/h0$a;->frameSize:I

    .line 63
    .line 64
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameSize:I

    .line 65
    .line 66
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->hasOutputFormat:Z

    .line 67
    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    iget v3, p1, Lcom/google/android/exoplayer2/audio/h0$a;->samplesPerFrame:I

    .line 71
    int-to-long v3, v3

    .line 72
    .line 73
    .line 74
    const-wide/32 v5, 0xf4240

    .line 75
    mul-long/2addr v3, v5

    .line 76
    .line 77
    iget p1, p1, Lcom/google/android/exoplayer2/audio/h0$a;->sampleRate:I

    .line 78
    int-to-long v5, p1

    .line 79
    div-long/2addr v3, v5

    .line 80
    .line 81
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameDurationUs:J

    .line 82
    .line 83
    new-instance p1, Lcom/google/android/exoplayer2/a2$b;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 87
    .line 88
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->formatId:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->header:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/h0$a;->mimeType:Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    const/16 v3, 0x1000

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->header:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 109
    .line 110
    iget v3, v3, Lcom/google/android/exoplayer2/audio/h0$a;->channels:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->header:Lcom/google/android/exoplayer2/audio/h0$a;

    .line 117
    .line 118
    iget v3, v3, Lcom/google/android/exoplayer2/audio/h0$a;->sampleRate:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->language:Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 135
    .line 136
    .line 137
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 138
    .line 139
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->hasOutputFormat:Z

    .line 140
    .line 141
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->headerScratch:Lcom/google/android/exoplayer2/util/c0;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 145
    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->headerScratch:Lcom/google/android/exoplayer2/util/c0;

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 152
    const/4 p1, 0x2

    .line 153
    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->state:I

    .line 155
    return-void
.end method


# virtual methods
.method public b(JI)V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->timeUs:J

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_3

    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->state:I

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/t;->e(Lcom/google/android/exoplayer2/util/c0;)V

    .line 25
    goto :goto_0

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/t;->f(Lcom/google/android/exoplayer2/util/c0;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/t;->a(Lcom/google/android/exoplayer2/util/c0;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_3
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
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->formatId:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->output:Lcom/google/android/exoplayer2/extractor/e0;

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

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->state:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->frameBytesRead:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->timeUs:J

    return-void
.end method
