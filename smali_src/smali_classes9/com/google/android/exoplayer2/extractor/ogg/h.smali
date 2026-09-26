.class final Lcom/google/android/exoplayer2/extractor/ogg/h;
.super Lcom/google/android/exoplayer2/extractor/ogg/i;
.source "SourceFile"


# static fields
.field private static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field private static final OPUS_ID_HEADER_SIGNATURE:[B


# instance fields
.field private firstCommentHeaderSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/ogg/h;->OPUS_ID_HEADER_SIGNATURE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/h;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/i;-><init>()V

    .line 4
    return-void
.end method

.method private n([B)J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-byte v0, p1, v0

    .line 4
    .line 5
    and-int/lit16 v1, v0, 0xff

    .line 6
    const/4 v2, 0x3

    .line 7
    and-int/2addr v0, v2

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v4, 0x2

    .line 12
    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    if-eq v0, v4, :cond_1

    .line 16
    .line 17
    aget-byte p1, p1, v3

    .line 18
    .line 19
    and-int/lit8 v4, p1, 0x3f

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v4, v3

    .line 22
    .line 23
    :cond_1
    :goto_0
    shr-int/lit8 p1, v1, 0x3

    .line 24
    .line 25
    and-int/lit8 v0, p1, 0x3

    .line 26
    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    if-lt p1, v1, :cond_2

    .line 30
    .line 31
    const/16 p1, 0x9c4

    .line 32
    shl-int/2addr p1, v0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_2
    const/16 v1, 0xc

    .line 36
    .line 37
    const/16 v5, 0x2710

    .line 38
    .line 39
    if-lt p1, v1, :cond_3

    .line 40
    and-int/2addr p1, v3

    .line 41
    .line 42
    shl-int p1, v5, p1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_3
    if-ne v0, v2, :cond_4

    .line 46
    .line 47
    .line 48
    const p1, 0xea60

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_4
    shl-int p1, v5, v0

    .line 52
    :goto_1
    int-to-long v0, v4

    .line 53
    int-to-long v2, p1

    .line 54
    mul-long/2addr v0, v2

    .line 55
    return-wide v0
.end method

.method private static o(Lcom/google/android/exoplayer2/util/c0;[B)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    return v2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 13
    move-result v0

    .line 14
    array-length v1, p1

    .line 15
    .line 16
    new-array v1, v1, [B

    .line 17
    array-length v3, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static p(Lcom/google/android/exoplayer2/util/c0;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/h;->OPUS_ID_HEADER_SIGNATURE:[B

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/h;->o(Lcom/google/android/exoplayer2/util/c0;[B)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method


# virtual methods
.method protected f(Lcom/google/android/exoplayer2/util/c0;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/h;->n([B)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->c(J)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method protected i(Lcom/google/android/exoplayer2/util/c0;JLcom/google/android/exoplayer2/extractor/ogg/i$b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    sget-object p2, Lcom/google/android/exoplayer2/extractor/ogg/h;->OPUS_ID_HEADER_SIGNATURE:[B

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/h;->o(Lcom/google/android/exoplayer2/util/c0;[B)Z

    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/i0;->c([B)I

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/i0;->a([B)Ljava/util/List;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    return p3

    .line 35
    .line 36
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 40
    .line 41
    const-string v1, "audio/opus"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    const v0, 0xbb80

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 67
    return p3

    .line 68
    .line 69
    :cond_1
    sget-object p2, Lcom/google/android/exoplayer2/extractor/ogg/h;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/h;->o(Lcom/google/android/exoplayer2/util/c0;[B)Z

    .line 73
    move-result v0

    .line 74
    const/4 v1, 0x0

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/h;->firstCommentHeaderSeen:Z

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    return p3

    .line 87
    .line 88
    :cond_2
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/h;->firstCommentHeaderSeen:Z

    .line 89
    array-length p2, p2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v1, v1}, Lcom/google/android/exoplayer2/extractor/h0;->j(Lcom/google/android/exoplayer2/util/c0;ZZ)Lcom/google/android/exoplayer2/extractor/h0$b;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/h0$b;->comments:[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/google/common/collect/a0;->u([Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/h0;->c(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    if-nez p1, :cond_3

    .line 109
    return p3

    .line 110
    .line 111
    :cond_3
    iget-object p2, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/a2$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 134
    return p3

    .line 135
    .line 136
    :cond_4
    iget-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return v1
.end method

.method protected l(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->l(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/h;->firstCommentHeaderSeen:Z

    .line 9
    :cond_0
    return-void
.end method
