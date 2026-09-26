.class final Lcom/google/android/exoplayer2/extractor/mp4/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH:I = 0x8


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field private currentlyInFragment:Z

.field private final defaultInitializationVector:Lcom/google/android/exoplayer2/util/c0;

.field public defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/c;

.field private final encryptionSignalByte:Lcom/google/android/exoplayer2/util/c0;

.field public firstSampleToOutputIndex:I

.field public final fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

.field public moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

.field public final output:Lcom/google/android/exoplayer2/extractor/e0;

.field public final scratch:Lcom/google/android/exoplayer2/util/c0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/mp4/c;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/q;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 17
    .line 18
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/c0;-><init>()V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/c0;

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/c0;-><init>()V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/c0;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->j(Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/mp4/c;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/mp4/g$b;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 3
    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/mp4/g$b;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 3
    return p1
.end method


# virtual methods
.method public c()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/r;->flags:[I

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/q;->sampleIsSyncFrameTable:[Z

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 20
    .line 21
    aget-boolean v0, v0, v1

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g()Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    or-int/2addr v0, v1

    .line 36
    :cond_2
    return v0
.end method

.method public d()J
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/r;->offsets:[J

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 11
    .line 12
    aget-wide v1, v0, v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/q;->trunDataPosition:[J

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentTrackRunIndex:I

    .line 20
    .line 21
    aget-wide v1, v0, v1

    .line 22
    :goto_0
    return-wide v1
.end method

.method public e()J
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/r;->timestampsUs:[J

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 11
    .line 12
    aget-wide v1, v0, v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/q;->c(I)J

    .line 21
    move-result-wide v1

    .line 22
    :goto_0
    return-wide v1
.end method

.method public f()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/r;->sizes:[I

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/q;->sampleSizeTable:[I

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 20
    .line 21
    aget v0, v0, v1

    .line 22
    :goto_0
    return v0
.end method

.method public g()Lcom/google/android/exoplayer2/extractor/mp4/p;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/q;->header:Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 17
    .line 18
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/c;->sampleDescriptionIndex:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/q;->trackEncryptionBox:Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/r;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/o;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    :goto_0
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-boolean v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/p;->isEncrypted:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    move-object v1, v2

    .line 41
    :cond_2
    return-object v1
.end method

.method public h()Z
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return v2

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleInTrackRun:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleInTrackRun:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/q;->trunLength:[I

    .line 22
    .line 23
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentTrackRunIndex:I

    .line 24
    .line 25
    aget v3, v3, v4

    .line 26
    .line 27
    if-ne v0, v3, :cond_1

    .line 28
    add-int/2addr v4, v1

    .line 29
    .line 30
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentTrackRunIndex:I

    .line 31
    .line 32
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleInTrackRun:I

    .line 33
    return v2

    .line 34
    :cond_1
    return v1
.end method

.method public i(II)I
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g()Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/p;->perSampleIvSize:I

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/q;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/c0;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/p;->defaultInitializationVector:[B

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, [B

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/c0;

    .line 28
    array-length v3, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/util/c0;->N([BI)V

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->defaultInitializationVector:Lcom/google/android/exoplayer2/util/c0;

    .line 34
    array-length v0, v0

    .line 35
    move-object v9, v2

    .line 36
    move v2, v0

    .line 37
    move-object v0, v9

    .line 38
    .line 39
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 40
    .line 41
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/q;->g(I)Z

    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x1

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v5, v1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    move v5, v4

    .line 55
    .line 56
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/c0;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 60
    move-result-object v6

    .line 61
    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    const/16 v7, 0x80

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v7, v1

    .line 67
    :goto_3
    or-int/2addr v7, v2

    .line 68
    int-to-byte v7, v7

    .line 69
    .line 70
    aput-byte v7, v6, v1

    .line 71
    .line 72
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/c0;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 76
    .line 77
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 78
    .line 79
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->encryptionSignalByte:Lcom/google/android/exoplayer2/util/c0;

    .line 80
    .line 81
    .line 82
    invoke-interface {v6, v7, v4, v4}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/c0;II)V

    .line 83
    .line 84
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 85
    .line 86
    .line 87
    invoke-interface {v6, v0, v2, v4}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/c0;II)V

    .line 88
    .line 89
    if-nez v5, :cond_5

    .line 90
    add-int/2addr v2, v4

    .line 91
    return v2

    .line 92
    :cond_5
    const/4 v0, 0x6

    .line 93
    const/4 v5, 0x3

    .line 94
    const/4 v6, 0x2

    .line 95
    .line 96
    const/16 v7, 0x8

    .line 97
    .line 98
    if-nez v3, :cond_6

    .line 99
    .line 100
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 104
    .line 105
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 109
    move-result-object v3

    .line 110
    .line 111
    aput-byte v1, v3, v1

    .line 112
    .line 113
    aput-byte v4, v3, v4

    .line 114
    .line 115
    shr-int/lit8 v1, p2, 0x8

    .line 116
    .line 117
    and-int/lit16 v1, v1, 0xff

    .line 118
    int-to-byte v1, v1

    .line 119
    .line 120
    aput-byte v1, v3, v6

    .line 121
    .line 122
    and-int/lit16 p2, p2, 0xff

    .line 123
    int-to-byte p2, p2

    .line 124
    .line 125
    aput-byte p2, v3, v5

    .line 126
    .line 127
    shr-int/lit8 p2, p1, 0x18

    .line 128
    .line 129
    and-int/lit16 p2, p2, 0xff

    .line 130
    int-to-byte p2, p2

    .line 131
    const/4 v1, 0x4

    .line 132
    .line 133
    aput-byte p2, v3, v1

    .line 134
    .line 135
    shr-int/lit8 p2, p1, 0x10

    .line 136
    .line 137
    and-int/lit16 p2, p2, 0xff

    .line 138
    int-to-byte p2, p2

    .line 139
    const/4 v1, 0x5

    .line 140
    .line 141
    aput-byte p2, v3, v1

    .line 142
    .line 143
    shr-int/lit8 p2, p1, 0x8

    .line 144
    .line 145
    and-int/lit16 p2, p2, 0xff

    .line 146
    int-to-byte p2, p2

    .line 147
    .line 148
    aput-byte p2, v3, v0

    .line 149
    .line 150
    and-int/lit16 p1, p1, 0xff

    .line 151
    int-to-byte p1, p1

    .line 152
    const/4 p2, 0x7

    .line 153
    .line 154
    aput-byte p1, v3, p2

    .line 155
    .line 156
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, p2, v7, v4}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/c0;II)V

    .line 162
    .line 163
    add-int/lit8 v2, v2, 0x9

    .line 164
    return v2

    .line 165
    .line 166
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/q;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/c0;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 172
    move-result v3

    .line 173
    const/4 v8, -0x2

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 177
    mul-int/2addr v3, v0

    .line 178
    add-int/2addr v3, v6

    .line 179
    .line 180
    if-eqz p2, :cond_7

    .line 181
    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 195
    .line 196
    aget-byte p1, v0, v6

    .line 197
    .line 198
    and-int/lit16 p1, p1, 0xff

    .line 199
    shl-int/2addr p1, v7

    .line 200
    .line 201
    aget-byte v1, v0, v5

    .line 202
    .line 203
    and-int/lit16 v1, v1, 0xff

    .line 204
    or-int/2addr p1, v1

    .line 205
    add-int/2addr p1, p2

    .line 206
    .line 207
    shr-int/lit8 p2, p1, 0x8

    .line 208
    .line 209
    and-int/lit16 p2, p2, 0xff

    .line 210
    int-to-byte p2, p2

    .line 211
    .line 212
    aput-byte p2, v0, v6

    .line 213
    .line 214
    and-int/lit16 p1, p1, 0xff

    .line 215
    int-to-byte p1, p1

    .line 216
    .line 217
    aput-byte p1, v0, v5

    .line 218
    .line 219
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 220
    .line 221
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 222
    .line 223
    .line 224
    invoke-interface {p2, p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/c0;II)V

    .line 225
    add-int/2addr v2, v4

    .line 226
    add-int/2addr v2, v3

    .line 227
    return v2
.end method

.method public j(Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/mp4/c;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->defaultSampleValues:Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/r;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->k()V

    .line 17
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/q;->f()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentTrackRunIndex:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleInTrackRun:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->firstSampleToOutputIndex:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentlyInFragment:Z

    .line 17
    return-void
.end method

.method public l(J)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 3
    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 5
    .line 6
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/q;->sampleCount:I

    .line 7
    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/q;->c(I)J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    cmp-long v1, v1, p1

    .line 15
    .line 16
    if-gez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/q;->sampleIsSyncFrameTable:[Z

    .line 21
    .line 22
    aget-boolean v1, v1, v0

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->firstSampleToOutputIndex:I

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->g()Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/q;->sampleEncryptionData:Lcom/google/android/exoplayer2/util/c0;

    .line 12
    .line 13
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/p;->perSampleIvSize:I

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->currentSampleIndex:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/q;->g(I)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 32
    move-result v0

    .line 33
    .line 34
    mul-int/lit8 v0, v0, 0x6

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 38
    :cond_2
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/r;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->fragment:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/q;->header:Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 15
    .line 16
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/c;->sampleDescriptionIndex:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/o;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/p;->schemeType:Ljava/lang/String;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->moovSampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/r;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->output:Lcom/google/android/exoplayer2/extractor/e0;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 54
    return-void
.end method
