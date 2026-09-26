.class public final Lcom/google/android/exoplayer2/extractor/avi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/avi/b$c;,
        Lcom/google/android/exoplayer2/extractor/avi/b$b;
    }
.end annotation


# static fields
.field private static final AVIIF_KEYFRAME:I = 0x10

.field public static final FOURCC_AVI_:I = 0x20495641

.field public static final FOURCC_JUNK:I = 0x4b4e554a

.field public static final FOURCC_LIST:I = 0x5453494c

.field public static final FOURCC_RIFF:I = 0x46464952

.field public static final FOURCC_auds:I = 0x73647561

.field public static final FOURCC_avih:I = 0x68697661

.field public static final FOURCC_hdrl:I = 0x6c726468

.field public static final FOURCC_idx1:I = 0x31786469

.field public static final FOURCC_movi:I = 0x69766f6d

.field public static final FOURCC_strf:I = 0x66727473

.field public static final FOURCC_strh:I = 0x68727473

.field public static final FOURCC_strl:I = 0x6c727473

.field public static final FOURCC_strn:I = 0x6e727473

.field public static final FOURCC_txts:I = 0x73747874

.field public static final FOURCC_vids:I = 0x73646976

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_FINDING_IDX1_HEADER:I = 0x4

.field private static final STATE_FINDING_MOVI_HEADER:I = 0x3

.field private static final STATE_READING_HDRL_BODY:I = 0x2

.field private static final STATE_READING_HDRL_HEADER:I = 0x1

.field private static final STATE_READING_IDX1_BODY:I = 0x5

.field private static final STATE_READING_SAMPLES:I = 0x6

.field private static final STATE_SKIPPING_TO_HDRL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AviExtractor"


# instance fields
.field private aviHeader:Lcom/google/android/exoplayer2/extractor/avi/c;

.field private final chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

.field private chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

.field private currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private hdrlSize:I

.field private idx1BodySize:I

.field private moviEnd:J

.field private moviStart:J

.field private pendingReposition:J

.field private final scratch:Lcom/google/android/exoplayer2/util/c0;

.field private seekMapHasBeenOutput:Z

.field private state:I


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
    const/16 v1, 0xc

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/avi/b$c;-><init>(Lcom/google/android/exoplayer2/extractor/avi/b$a;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/exoplayer2/extractor/j;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/j;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 33
    .line 34
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviStart:J

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviEnd:J

    .line 39
    const/4 v0, -0x1

    .line 40
    .line 41
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->hdrlSize:I

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->durationUs:J

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/avi/b;)[Lcom/google/android/exoplayer2/extractor/avi/e;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 3
    return-object p0
.end method

.method private static e(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    and-long/2addr v0, v2

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 16
    :cond_0
    return-void
.end method

.method private f(I)Lcom/google/android/exoplayer2/extractor/avi/e;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/extractor/avi/e;->j(I)Z

    .line 12
    move-result v4

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    return-object v3

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method private g(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x6c726468

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/extractor/avi/f;->c(ILcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/avi/f;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/avi/f;->getType()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-ne v1, v0, :cond_4

    .line 15
    .line 16
    const-class v0, Lcom/google/android/exoplayer2/extractor/avi/c;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/avi/f;->b(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/exoplayer2/extractor/avi/c;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->aviHeader:Lcom/google/android/exoplayer2/extractor/avi/c;

    .line 27
    .line 28
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/c;->totalFrames:I

    .line 29
    int-to-long v1, v1

    .line 30
    .line 31
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/avi/c;->frameDurationUs:I

    .line 32
    int-to-long v3, v0

    .line 33
    mul-long/2addr v1, v3

    .line 34
    .line 35
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->durationUs:J

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/avi/f;->children:Lcom/google/common/collect/a0;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/common/collect/a0;->m()Lcom/google/common/collect/l1;

    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x0

    .line 48
    move v2, v1

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Lcom/google/android/exoplayer2/extractor/avi/a;

    .line 61
    .line 62
    .line 63
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/avi/a;->getType()I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    const v5, 0x6c727473

    .line 68
    .line 69
    if-ne v4, v5, :cond_0

    .line 70
    .line 71
    check-cast v3, Lcom/google/android/exoplayer2/extractor/avi/f;

    .line 72
    .line 73
    add-int/lit8 v4, v2, 0x1

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/extractor/avi/b;->j(Lcom/google/android/exoplayer2/extractor/avi/f;I)Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    move v2, v4

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_2
    new-array p1, v1, [Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    check-cast p1, [Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 100
    return-void

    .line 101
    .line 102
    :cond_3
    const-string p1, "AviHeader not found"

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 106
    move-result-object p1

    .line 107
    throw p1

    .line 108
    .line 109
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    const-string v1, "Unexpected header list type "

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/avi/f;->getType()I

    .line 121
    move-result p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 132
    move-result-object p1

    .line 133
    throw p1
.end method

.method private h(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/b;->i(Lcom/google/android/exoplayer2/util/c0;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 8
    move-result v2

    .line 9
    .line 10
    const/16 v3, 0x10

    .line 11
    .line 12
    if-lt v2, v3, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 24
    move-result v5

    .line 25
    int-to-long v5, v5

    .line 26
    add-long/2addr v5, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/avi/b;->f(I)Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    and-int/2addr v4, v3

    .line 38
    .line 39
    if-ne v4, v3, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/avi/e;->b(J)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/avi/e;->k()V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 49
    array-length v0, p1

    .line 50
    const/4 v1, 0x0

    .line 51
    .line 52
    :goto_1
    if-ge v1, v0, :cond_3

    .line 53
    .line 54
    aget-object v2, p1, v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/avi/e;->c()V

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 p1, 0x1

    .line 62
    .line 63
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->seekMapHasBeenOutput:Z

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 66
    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/b$b;

    .line 68
    .line 69
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->durationUs:J

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/extractor/avi/b$b;-><init>(Lcom/google/android/exoplayer2/extractor/avi/b;J)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 76
    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/util/c0;)J
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    return-wide v2

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 15
    move-result v0

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 24
    move-result v1

    .line 25
    int-to-long v4, v1

    .line 26
    .line 27
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviStart:J

    .line 28
    .line 29
    cmp-long v1, v4, v6

    .line 30
    .line 31
    if-lez v1, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    const-wide/16 v1, 0x8

    .line 35
    .line 36
    add-long v2, v6, v1

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 40
    return-wide v2
.end method

.method private j(Lcom/google/android/exoplayer2/extractor/avi/f;I)Lcom/google/android/exoplayer2/extractor/avi/e;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/android/exoplayer2/extractor/avi/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/avi/f;->b(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/extractor/avi/d;

    .line 9
    .line 10
    const-class v1, Lcom/google/android/exoplayer2/extractor/avi/g;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/extractor/avi/f;->b(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/a;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/exoplayer2/extractor/avi/g;

    .line 17
    .line 18
    const-string v2, "AviExtractor"

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string p1, "Missing Stream Header"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object v3

    .line 28
    .line 29
    :cond_0
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string p1, "Missing Stream Format"

    .line 32
    .line 33
    .line 34
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v3

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/avi/d;->a()J

    .line 39
    move-result-wide v11

    .line 40
    .line 41
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/avi/g;->format:Lcom/google/android/exoplayer2/a2;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    .line 49
    .line 50
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/avi/d;->suggestedBufferSize:I

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 56
    .line 57
    :cond_2
    const-class v4, Lcom/google/android/exoplayer2/extractor/avi/h;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/extractor/avi/f;->b(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/a;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/google/android/exoplayer2/extractor/avi/h;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/avi/h;->name:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/a2$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 71
    .line 72
    :cond_3
    iget-object p1, v1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/x;->i(Ljava/lang/String;)I

    .line 76
    move-result v6

    .line 77
    const/4 p1, 0x1

    .line 78
    .line 79
    if-eq v6, p1, :cond_5

    .line 80
    const/4 p1, 0x2

    .line 81
    .line 82
    if-ne v6, p1, :cond_4

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    return-object v3

    .line 85
    .line 86
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, p2, v6}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 90
    move-result-object v10

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-interface {v10, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 98
    .line 99
    new-instance p1, Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 100
    .line 101
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/avi/d;->length:I

    .line 102
    move-object v4, p1

    .line 103
    move v5, p2

    .line 104
    move-wide v7, v11

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/avi/e;-><init>(IIJILcom/google/android/exoplayer2/extractor/e0;)V

    .line 108
    .line 109
    iput-wide v11, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->durationUs:J

    .line 110
    return-object p1
.end method

.method private k(Lcom/google/android/exoplayer2/extractor/m;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviEnd:J

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/avi/e;->m(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_6

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/avi/b;->e(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const/16 v2, 0xc

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    const v3, 0x5453494c

    .line 56
    .line 57
    const/16 v4, 0x8

    .line 58
    .line 59
    if-ne v0, v3, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    const v3, 0x69766f6d

    .line 74
    .line 75
    if-ne v0, v3, :cond_2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move v2, v4

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 84
    return v1

    .line 85
    .line 86
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 90
    move-result v2

    .line 91
    .line 92
    .line 93
    const v3, 0x4b4e554a    # 1.352225E7f

    .line 94
    .line 95
    if-ne v0, v3, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 99
    move-result-wide v3

    .line 100
    int-to-long v5, v2

    .line 101
    add-long/2addr v3, v5

    .line 102
    .line 103
    const-wide/16 v5, 0x8

    .line 104
    add-long/2addr v3, v5

    .line 105
    .line 106
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 107
    return v1

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/b;->f(I)Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 123
    move-result-wide v3

    .line 124
    int-to-long v5, v2

    .line 125
    add-long/2addr v3, v5

    .line 126
    .line 127
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 128
    return v1

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/avi/e;->n(I)V

    .line 132
    .line 133
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 134
    :cond_6
    :goto_1
    return v1
.end method

.method private l(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 15
    .line 16
    cmp-long v6, v4, v0

    .line 17
    .line 18
    if-ltz v6, :cond_1

    .line 19
    .line 20
    .line 21
    const-wide/32 v6, 0x40000

    .line 22
    add-long/2addr v6, v0

    .line 23
    .line 24
    cmp-long v6, v4, v6

    .line 25
    .line 26
    if-lez v6, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sub-long/2addr v4, v0

    .line 29
    long-to-int p2, v4

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    :goto_0
    iput-wide v4, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 39
    .line 40
    :goto_2
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 41
    return p1
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    const v0, 0x46464952

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    return v2

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 32
    const/4 v0, 0x4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    const v0, 0x20495641

    .line 45
    .line 46
    if-ne p1, v0, :cond_1

    .line 47
    const/4 v2, 0x1

    .line 48
    :cond_1
    return v2
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/b;->l(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x6

    .line 14
    .line 15
    const/16 v4, 0xc

    .line 16
    const/4 v5, 0x0

    .line 17
    .line 18
    .line 19
    packed-switch p2, :pswitch_data_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/AssertionError;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 25
    throw p1

    .line 26
    .line 27
    .line 28
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/b;->k(Lcom/google/android/exoplayer2/extractor/m;)I

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    .line 32
    :pswitch_1
    new-instance p2, Lcom/google/android/exoplayer2/util/c0;

    .line 33
    .line 34
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->idx1BodySize:I

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->idx1BodySize:I

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0, v5, v1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/avi/b;->h(Lcom/google/android/exoplayer2/util/c0;)V

    .line 50
    .line 51
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 52
    .line 53
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviStart:J

    .line 54
    .line 55
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 56
    return v5

    .line 57
    .line 58
    :pswitch_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 62
    move-result-object p2

    .line 63
    .line 64
    const/16 v0, 0x8

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, p2, v5, v0}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 68
    .line 69
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 73
    .line 74
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 78
    move-result p2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 84
    move-result v0

    .line 85
    .line 86
    .line 87
    const v1, 0x31786469

    .line 88
    .line 89
    if-ne p2, v1, :cond_1

    .line 90
    const/4 p1, 0x5

    .line 91
    .line 92
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 93
    .line 94
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->idx1BodySize:I

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 99
    move-result-wide p1

    .line 100
    int-to-long v0, v0

    .line 101
    add-long/2addr p1, v0

    .line 102
    .line 103
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 104
    :goto_0
    return v5

    .line 105
    .line 106
    :pswitch_3
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviStart:J

    .line 107
    .line 108
    const-wide/16 v8, -0x1

    .line 109
    .line 110
    cmp-long p2, v6, v8

    .line 111
    .line 112
    if-eqz p2, :cond_2

    .line 113
    .line 114
    .line 115
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 116
    move-result-wide v6

    .line 117
    .line 118
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviStart:J

    .line 119
    .line 120
    cmp-long p2, v6, v8

    .line 121
    .line 122
    if-eqz p2, :cond_2

    .line 123
    .line 124
    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 125
    return v5

    .line 126
    .line 127
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 131
    move-result-object p2

    .line 132
    .line 133
    .line 134
    invoke-interface {p1, p2, v5, v4}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 138
    .line 139
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 143
    .line 144
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/extractor/avi/b$c;->a(Lcom/google/android/exoplayer2/util/c0;)V

    .line 150
    .line 151
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->q()I

    .line 155
    move-result p2

    .line 156
    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 158
    .line 159
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/avi/b$c;->chunkType:I

    .line 160
    .line 161
    .line 162
    const v6, 0x46464952

    .line 163
    .line 164
    if-ne v1, v6, :cond_3

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 168
    return v5

    .line 169
    .line 170
    .line 171
    :cond_3
    const v4, 0x5453494c

    .line 172
    .line 173
    const-wide/16 v6, 0x8

    .line 174
    .line 175
    if-ne v1, v4, :cond_7

    .line 176
    .line 177
    .line 178
    const v1, 0x69766f6d

    .line 179
    .line 180
    if-eq p2, v1, :cond_4

    .line 181
    goto :goto_1

    .line 182
    .line 183
    .line 184
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 185
    move-result-wide v8

    .line 186
    .line 187
    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviStart:J

    .line 188
    .line 189
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 190
    .line 191
    iget p2, p2, Lcom/google/android/exoplayer2/extractor/avi/b$c;->size:I

    .line 192
    int-to-long v10, p2

    .line 193
    add-long/2addr v8, v10

    .line 194
    add-long/2addr v8, v6

    .line 195
    .line 196
    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviEnd:J

    .line 197
    .line 198
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->seekMapHasBeenOutput:Z

    .line 199
    .line 200
    if-nez p2, :cond_6

    .line 201
    .line 202
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->aviHeader:Lcom/google/android/exoplayer2/extractor/avi/c;

    .line 203
    .line 204
    .line 205
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object p2

    .line 207
    .line 208
    check-cast p2, Lcom/google/android/exoplayer2/extractor/avi/c;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/avi/c;->a()Z

    .line 212
    move-result p2

    .line 213
    .line 214
    if-eqz p2, :cond_5

    .line 215
    .line 216
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 217
    .line 218
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->moviEnd:J

    .line 219
    .line 220
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 221
    return v5

    .line 222
    .line 223
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 224
    .line 225
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$b;

    .line 226
    .line 227
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->durationUs:J

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v6, v7}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    .line 231
    .line 232
    .line 233
    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 234
    .line 235
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->seekMapHasBeenOutput:Z

    .line 236
    .line 237
    .line 238
    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 239
    move-result-wide p1

    .line 240
    .line 241
    const-wide/16 v0, 0xc

    .line 242
    add-long/2addr p1, v0

    .line 243
    .line 244
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 245
    .line 246
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 247
    return v5

    .line 248
    .line 249
    .line 250
    :cond_7
    :goto_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 251
    move-result-wide p1

    .line 252
    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 254
    .line 255
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/avi/b$c;->size:I

    .line 256
    int-to-long v0, v0

    .line 257
    add-long/2addr p1, v0

    .line 258
    add-long/2addr p1, v6

    .line 259
    .line 260
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 261
    return v5

    .line 262
    .line 263
    :pswitch_4
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->hdrlSize:I

    .line 264
    sub-int/2addr p2, v2

    .line 265
    .line 266
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 267
    .line 268
    .line 269
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 273
    move-result-object v1

    .line 274
    .line 275
    .line 276
    invoke-interface {p1, v1, v5, p2}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 277
    .line 278
    .line 279
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/b;->g(Lcom/google/android/exoplayer2/util/c0;)V

    .line 280
    const/4 p1, 0x3

    .line 281
    .line 282
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 283
    return v5

    .line 284
    .line 285
    :pswitch_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 289
    move-result-object p2

    .line 290
    .line 291
    .line 292
    invoke-interface {p1, p2, v5, v4}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 293
    .line 294
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 298
    .line 299
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 300
    .line 301
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/b$c;->b(Lcom/google/android/exoplayer2/util/c0;)V

    .line 305
    .line 306
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 307
    .line 308
    iget p2, p1, Lcom/google/android/exoplayer2/extractor/avi/b$c;->listType:I

    .line 309
    .line 310
    .line 311
    const v0, 0x6c726468

    .line 312
    .line 313
    if-ne p2, v0, :cond_8

    .line 314
    .line 315
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/avi/b$c;->size:I

    .line 316
    .line 317
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->hdrlSize:I

    .line 318
    const/4 p1, 0x2

    .line 319
    .line 320
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 321
    return v5

    .line 322
    .line 323
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    const-string p2, "hdrl expected, found: "

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/b$c;

    .line 334
    .line 335
    iget p2, p2, Lcom/google/android/exoplayer2/extractor/avi/b$c;->listType:I

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object p1

    .line 343
    .line 344
    .line 345
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 346
    move-result-object p1

    .line 347
    throw p1

    .line 348
    .line 349
    .line 350
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/b;->b(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 351
    move-result p2

    .line 352
    .line 353
    if-eqz p2, :cond_9

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 357
    .line 358
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 359
    return v5

    .line 360
    .line 361
    :cond_9
    const-string p1, "AVI Header List not found"

    .line 362
    .line 363
    .line 364
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 365
    move-result-object p1

    .line 366
    throw p1

    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    .line 2
    const-wide/16 p3, -0x1

    .line 3
    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->pendingReposition:J

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 8
    .line 9
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 10
    array-length p4, p3

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    .line 14
    :goto_0
    if-ge v1, p4, :cond_0

    .line 15
    .line 16
    aget-object v2, p3, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/e;->o(J)V

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-wide/16 p3, 0x0

    .line 25
    .line 26
    cmp-long p1, p1, p3

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/e;

    .line 31
    array-length p1, p1

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 p1, 0x3

    .line 38
    .line 39
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 40
    :goto_1
    return-void

    .line 41
    :cond_2
    const/4 p1, 0x6

    .line 42
    .line 43
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/b;->state:I

    .line 44
    return-void
.end method
