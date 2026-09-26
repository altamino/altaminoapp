.class public final Lcom/google/android/exoplayer2/extractor/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/t$a;
    }
.end annotation


# static fields
.field private static final SEEK_POINT_SIZE:I = 0x12

.field private static final STREAM_MARKER:I = 0x664c6143

.field private static final SYNC_CODE:I = 0x3ffe


# direct methods
.method public static a(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    const-wide/32 v4, 0x664c6143

    .line 22
    .line 23
    cmp-long p0, v0, v4

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v3, 0x1

    .line 27
    :cond_0
    return v3
.end method

.method public static b(Lcom/google/android/exoplayer2/extractor/m;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 21
    move-result v0

    .line 22
    .line 23
    shr-int/lit8 v1, v0, 0x2

    .line 24
    .line 25
    const/16 v2, 0x3ffe

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 31
    return v0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 35
    .line 36
    const-string p0, "First frame does not start with sync code."

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method public static c(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    sget-object p1, Lv2/b;->NO_FRAMES_PREDICATE:Lv2/b$a;

    .line 8
    .line 9
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/y;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/y;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/y;->a(Lcom/google/android/exoplayer2/extractor/m;Lv2/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->h()I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v0, p0

    .line 27
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static d(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/extractor/t;->c(Lcom/google/android/exoplayer2/extractor/m;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 15
    move-result-wide v2

    .line 16
    sub-long/2addr v2, v0

    .line 17
    long-to-int v0, v2

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 21
    return-object p1
.end method

.method public static e(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/t$a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    .line 6
    const/4 v1, 0x4

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/b0;->data:[B

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x7

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 26
    move-result v4

    .line 27
    .line 28
    const/16 v5, 0x18

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 32
    move-result v0

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/t;->h(Lcom/google/android/exoplayer2/extractor/m;)Lcom/google/android/exoplayer2/extractor/v;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/t$a;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iget-object v5, p1, Lcom/google/android/exoplayer2/extractor/t$a;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 45
    .line 46
    if-eqz v5, :cond_4

    .line 47
    const/4 v6, 0x3

    .line 48
    .line 49
    if-ne v4, v6, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/t;->f(Lcom/google/android/exoplayer2/extractor/m;I)Lcom/google/android/exoplayer2/extractor/v$a;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/extractor/v;->c(Lcom/google/android/exoplayer2/extractor/v$a;)Lcom/google/android/exoplayer2/extractor/v;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/t$a;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    if-ne v4, v1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/t;->j(Lcom/google/android/exoplayer2/extractor/m;I)Ljava/util/List;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/extractor/v;->d(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/v;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/t$a;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v6, 0x6

    .line 75
    .line 76
    if-ne v4, v6, :cond_3

    .line 77
    .line 78
    new-instance v4, Lcom/google/android/exoplayer2/util/c0;

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-interface {p0, v6, v3, v0}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->a(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/extractor/v;->b(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/v;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/t$a;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 110
    :goto_0
    return v2

    .line 111
    .line 112
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 116
    throw p0
.end method

.method private static f(Lcom/google/android/exoplayer2/extractor/m;I)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/t;->g(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/v$a;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static g(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/v$a;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->G()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 12
    move-result v1

    .line 13
    int-to-long v1, v1

    .line 14
    int-to-long v3, v0

    .line 15
    add-long/2addr v1, v3

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x12

    .line 18
    .line 19
    new-array v3, v0, [J

    .line 20
    .line 21
    new-array v4, v0, [J

    .line 22
    const/4 v5, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v5, v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->w()J

    .line 28
    move-result-wide v6

    .line 29
    .line 30
    const-wide/16 v8, -0x1

    .line 31
    .line 32
    cmp-long v8, v6, v8

    .line 33
    .line 34
    if-nez v8, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 42
    move-result-object v4

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_0
    aput-wide v6, v3, v5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->w()J

    .line 49
    move-result-wide v6

    .line 50
    .line 51
    aput-wide v6, v4, v5

    .line 52
    const/4 v6, 0x2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 56
    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 62
    move-result v0

    .line 63
    int-to-long v5, v0

    .line 64
    sub-long/2addr v1, v5

    .line 65
    long-to-int v0, v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 69
    .line 70
    new-instance p0, Lcom/google/android/exoplayer2/extractor/v$a;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/v$a;-><init>([J[J)V

    .line 74
    return-object p0
.end method

.method private static h(Lcom/google/android/exoplayer2/extractor/m;)Lcom/google/android/exoplayer2/extractor/v;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x26

    .line 3
    .line 4
    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 9
    .line 10
    new-instance p0, Lcom/google/android/exoplayer2/extractor/v;

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/extractor/v;-><init>([BI)V

    .line 15
    return-object p0
.end method

.method public static i(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    const-wide/32 v2, 0x664c6143

    .line 22
    .line 23
    cmp-long p0, v0, v2

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    const-string p0, "Failed to read FLAC stream marker."

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 33
    move-result-object p0

    .line 34
    throw p0
.end method

.method private static j(Lcom/google/android/exoplayer2/extractor/m;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/m;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 14
    const/4 p0, 0x4

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/h0;->j(Lcom/google/android/exoplayer2/util/c0;ZZ)Lcom/google/android/exoplayer2/extractor/h0$b;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/h0$b;->comments:[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
