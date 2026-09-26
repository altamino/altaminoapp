.class public final Lcom/google/android/exoplayer2/extractor/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/v$a;
    }
.end annotation


# static fields
.field public static final NOT_IN_LOOKUP_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FlacStreamMetadata"


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field private final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:Lcom/google/android/exoplayer2/extractor/v$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final totalSamples:J


# direct methods
.method private constructor <init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0
    .param p10    # Lcom/google/android/exoplayer2/extractor/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->minBlockSizeSamples:I

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/v;->maxBlockSizeSamples:I

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    iput p4, p0, Lcom/google/android/exoplayer2/extractor/v;->maxFrameSize:I

    iput p5, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 17
    invoke-static {p5}, Lcom/google/android/exoplayer2/extractor/v;->k(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRateLookupKey:I

    iput p6, p0, Lcom/google/android/exoplayer2/extractor/v;->channels:I

    iput p7, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSample:I

    .line 18
    invoke-static {p7}, Lcom/google/android/exoplayer2/extractor/v;->f(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSampleLookupKey:I

    iput-wide p8, p0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    iput-object p10, p0, Lcom/google/android/exoplayer2/extractor/v;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/v;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    .line 14
    invoke-static/range {p10 .. p11}, Lcom/google/android/exoplayer2/extractor/v;->a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    .line 15
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/v;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/b0;->p(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/v;->minBlockSizeSamples:I

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->maxBlockSizeSamples:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->maxFrameSize:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/v;->k(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRateLookupKey:I

    const/4 p1, 0x3

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->channels:I

    const/4 p1, 0x5

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSample:I

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/v;->f(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSampleLookupKey:I

    const/16 p1, 0x24

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/b0;->j(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/v;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/v;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/h0;->c(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static f(I)I
    .locals 1

    .line 1
    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static k(I)I
    .locals 0

    .line 1
    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public b(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/v;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/v;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/v;->i(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 9
    move-result-object v12

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v;

    .line 12
    .line 13
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/v;->minBlockSizeSamples:I

    .line 14
    .line 15
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/v;->maxBlockSizeSamples:I

    .line 16
    .line 17
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 18
    .line 19
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/v;->maxFrameSize:I

    .line 20
    .line 21
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 22
    .line 23
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/v;->channels:I

    .line 24
    .line 25
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSample:I

    .line 26
    .line 27
    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 28
    .line 29
    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/v;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    .line 30
    move-object v1, p1

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/extractor/v;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 34
    return-object p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/v$a;)Lcom/google/android/exoplayer2/extractor/v;
    .locals 13
    .param p1    # Lcom/google/android/exoplayer2/extractor/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v12, Lcom/google/android/exoplayer2/extractor/v;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/v;->minBlockSizeSamples:I

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/v;->maxBlockSizeSamples:I

    .line 7
    .line 8
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 9
    .line 10
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/v;->maxFrameSize:I

    .line 11
    .line 12
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 13
    .line 14
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/v;->channels:I

    .line 15
    .line 16
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSample:I

    .line 17
    .line 18
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 19
    .line 20
    iget-object v11, p0, Lcom/google/android/exoplayer2/extractor/v;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 21
    move-object v0, v12

    .line 22
    move-object v10, p1

    .line 23
    .line 24
    .line 25
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/v;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 26
    return-object v12
.end method

.method public d(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/v;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/v;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/h0;->c(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/v;->i(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 8
    move-result-object v11

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/v;->minBlockSizeSamples:I

    .line 13
    .line 14
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/v;->maxBlockSizeSamples:I

    .line 15
    .line 16
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 17
    .line 18
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/v;->maxFrameSize:I

    .line 19
    .line 20
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 21
    .line 22
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/v;->channels:I

    .line 23
    .line 24
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSample:I

    .line 25
    .line 26
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 27
    .line 28
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/v;->seekTable:Lcom/google/android/exoplayer2/extractor/v$a;

    .line 29
    move-object v0, p1

    .line 30
    .line 31
    .line 32
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/v;-><init>(IIIIIIIJLcom/google/android/exoplayer2/extractor/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 33
    return-object p1
.end method

.method public e()J
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/v;->maxFrameSize:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/v;->minFrameSize:I

    .line 8
    int-to-long v2, v2

    .line 9
    add-long/2addr v0, v2

    .line 10
    .line 11
    const-wide/16 v2, 0x2

    .line 12
    div-long/2addr v0, v2

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    :goto_0
    add-long/2addr v0, v2

    .line 16
    goto :goto_2

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/v;->minBlockSizeSamples:I

    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/v;->maxBlockSizeSamples:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    int-to-long v0, v0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    const-wide/16 v0, 0x1000

    .line 29
    .line 30
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/v;->channels:I

    .line 31
    int-to-long v2, v2

    .line 32
    mul-long/2addr v0, v2

    .line 33
    .line 34
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/v;->bitsPerSample:I

    .line 35
    int-to-long v2, v2

    .line 36
    mul-long/2addr v0, v2

    .line 37
    .line 38
    const-wide/16 v2, 0x8

    .line 39
    div-long/2addr v0, v2

    .line 40
    .line 41
    const-wide/16 v2, 0x40

    .line 42
    goto :goto_0

    .line 43
    :goto_2
    return-wide v0
.end method

.method public g()J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const-wide/32 v2, 0xf4240

    .line 18
    mul-long/2addr v0, v2

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 21
    int-to-long v2, v2

    .line 22
    div-long/2addr v0, v2

    .line 23
    :goto_0
    return-wide v0
.end method

.method public h([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2;
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    const/16 v1, -0x80

    .line 4
    .line 5
    aput-byte v1, p1, v0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/v;->maxFrameSize:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/v;->i(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/exoplayer2/a2$b;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 21
    .line 22
    const-string v2, "audio/flac"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/v;->channels:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a2$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public i(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/v;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 9
    move-result-object p1

    .line 10
    :goto_0
    return-object p1
.end method

.method public j(J)J
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/v;->sampleRate:I

    .line 3
    int-to-long v0, v0

    .line 4
    mul-long/2addr p1, v0

    .line 5
    .line 6
    .line 7
    const-wide/32 v0, 0xf4240

    .line 8
    .line 9
    div-long v2, p1, v0

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/v;->totalSamples:J

    .line 14
    .line 15
    const-wide/16 v0, 0x1

    .line 16
    .line 17
    sub-long v6, p1, v0

    .line 18
    .line 19
    .line 20
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/o0;->q(JJJ)J

    .line 21
    move-result-wide p1

    .line 22
    return-wide p1
.end method
