.class public final Lcom/google/android/exoplayer2/extractor/ts/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# static fields
.field private static final TAG:Ljava/lang/String; = "Id3Reader"


# instance fields
.field private final id3Header:Lcom/google/android/exoplayer2/util/c0;

.field private output:Lcom/google/android/exoplayer2/extractor/e0;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleTimeUs:J

    .line 20
    return-void
.end method


# virtual methods
.method public b(JI)V
    .locals 2

    .line 1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleTimeUs:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleSize:I

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->writingSample:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-ge v1, v2, :cond_3

    .line 21
    .line 22
    rsub-int/lit8 v1, v1, 0xa

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 34
    move-result v4

    .line 35
    .line 36
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 40
    move-result-object v5

    .line 41
    .line 42
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    .line 48
    add-int/2addr v3, v1

    .line 49
    .line 50
    if-ne v3, v2, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 62
    move-result v1

    .line 63
    .line 64
    const/16 v4, 0x49

    .line 65
    .line 66
    if-ne v4, v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 72
    move-result v1

    .line 73
    .line 74
    const/16 v4, 0x44

    .line 75
    .line 76
    if-ne v4, v1, :cond_2

    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 82
    move-result v1

    .line 83
    .line 84
    const/16 v4, 0x33

    .line 85
    .line 86
    if-eq v4, v1, :cond_1

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 90
    const/4 v3, 0x3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 94
    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->id3Header:Lcom/google/android/exoplayer2/util/c0;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->C()I

    .line 99
    move-result v1

    .line 100
    add-int/2addr v1, v2

    .line 101
    .line 102
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleSize:I

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    .line 106
    .line 107
    const-string v0, "Discarding invalid ID3 tag"

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->writingSample:Z

    .line 113
    return-void

    .line 114
    .line 115
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleSize:I

    .line 116
    .line 117
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    .line 118
    sub-int/2addr v1, v2

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 122
    move-result v0

    .line 123
    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 125
    .line 126
    .line 127
    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 128
    .line 129
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    .line 130
    add-int/2addr p1, v0

    .line 131
    .line 132
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    .line 133
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->c()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x5

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$d;->b()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    const-string v0, "application/id3"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 41
    return-void
.end method

.method public packetFinished()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->writingSample:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleSize:I

    .line 12
    .line 13
    if-eqz v5, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleBytesRead:I

    .line 16
    .line 17
    if-eq v0, v5, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleTimeUs:J

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    cmp-long v0, v2, v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    .line 36
    .line 37
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->writingSample:Z

    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->sampleTimeUs:J

    return-void
.end method
