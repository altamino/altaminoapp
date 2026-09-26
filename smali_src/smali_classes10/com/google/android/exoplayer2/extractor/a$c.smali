.class public Lcom/google/android/exoplayer2/extractor/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private ceilingBytePosition:J

.field private ceilingTimePosition:J

.field private floorBytePosition:J

.field private floorTimePosition:J

.field private nextSearchBytePosition:J

.field private final seekTimeUs:J

.field private final targetTimePosition:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/a$c;->seekTimeUs:J

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/a$c;->targetTimePosition:J

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/a$c;->floorTimePosition:J

    .line 10
    .line 11
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/a$c;->ceilingTimePosition:J

    .line 12
    .line 13
    iput-wide p9, p0, Lcom/google/android/exoplayer2/extractor/a$c;->floorBytePosition:J

    .line 14
    .line 15
    iput-wide p11, p0, Lcom/google/android/exoplayer2/extractor/a$c;->ceilingBytePosition:J

    .line 16
    .line 17
    iput-wide p13, p0, Lcom/google/android/exoplayer2/extractor/a$c;->approxBytesPerFrame:J

    .line 18
    .line 19
    .line 20
    invoke-static/range {p3 .. p14}, Lcom/google/android/exoplayer2/extractor/a$c;->h(JJJJJJ)J

    .line 21
    move-result-wide p1

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/a$c;->nextSearchBytePosition:J

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/a$c;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a$c;->l()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/a$c;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a$c;->j()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/a$c;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a$c;->i()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/extractor/a$c;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a$c;->k()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/extractor/a$c;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a$c;->m()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/extractor/a$c;JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/a$c;->o(JJ)V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/extractor/a$c;JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/a$c;->p(JJ)V

    .line 4
    return-void
.end method

.method protected static h(JJJJJJ)J
    .locals 7

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    add-long v2, p6, v0

    .line 5
    .line 6
    cmp-long v2, v2, p8

    .line 7
    .line 8
    if-gez v2, :cond_1

    .line 9
    .line 10
    add-long v2, p2, v0

    .line 11
    .line 12
    cmp-long v2, v2, p4

    .line 13
    .line 14
    if-ltz v2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sub-long v2, p0, p2

    .line 18
    .line 19
    sub-long v4, p8, p6

    .line 20
    long-to-float v4, v4

    .line 21
    .line 22
    sub-long v5, p4, p2

    .line 23
    long-to-float v5, v5

    .line 24
    div-float/2addr v4, v5

    .line 25
    long-to-float v2, v2

    .line 26
    mul-float/2addr v2, v4

    .line 27
    float-to-long v2, v2

    .line 28
    .line 29
    const-wide/16 v4, 0x14

    .line 30
    .line 31
    div-long v4, v2, v4

    .line 32
    add-long/2addr v2, p6

    .line 33
    .line 34
    sub-long v2, v2, p10

    .line 35
    sub-long/2addr v2, v4

    .line 36
    .line 37
    sub-long v0, p8, v0

    .line 38
    move-wide p0, v2

    .line 39
    move-wide p2, p6

    .line 40
    move-wide p4, v0

    .line 41
    .line 42
    .line 43
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/util/o0;->q(JJJ)J

    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    :cond_1
    :goto_0
    return-wide p6
.end method

.method private i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$c;->ceilingBytePosition:J

    return-wide v0
.end method

.method private j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$c;->floorBytePosition:J

    return-wide v0
.end method

.method private k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$c;->nextSearchBytePosition:J

    return-wide v0
.end method

.method private l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$c;->seekTimeUs:J

    return-wide v0
.end method

.method private m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$c;->targetTimePosition:J

    return-wide v0
.end method

.method private n()V
    .locals 12

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$c;->targetTimePosition:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a$c;->floorTimePosition:J

    .line 5
    .line 6
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a$c;->ceilingTimePosition:J

    .line 7
    .line 8
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/a$c;->floorBytePosition:J

    .line 9
    .line 10
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/a$c;->ceilingBytePosition:J

    .line 11
    .line 12
    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/a$c;->approxBytesPerFrame:J

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/extractor/a$c;->h(JJJJJJ)J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a$c;->nextSearchBytePosition:J

    .line 19
    return-void
.end method

.method private o(JJ)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/a$c;->ceilingTimePosition:J

    .line 3
    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/a$c;->ceilingBytePosition:J

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a$c;->n()V

    .line 8
    return-void
.end method

.method private p(JJ)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/a$c;->floorTimePosition:J

    .line 3
    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/a$c;->floorBytePosition:J

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a$c;->n()V

    .line 8
    return-void
.end method
