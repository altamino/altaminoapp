.class public final Lcom/google/android/exoplayer2/extractor/mp4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;
.implements Lcom/google/android/exoplayer2/extractor/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/k$a;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/r;

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Lcom/google/android/exoplayer2/util/c0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final atomHeader:Lcom/google/android/exoplayer2/util/c0;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

.field private fileType:I

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final nalLength:Lcom/google/android/exoplayer2/util/c0;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/c0;

.field private parserState:I

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Lcom/google/android/exoplayer2/util/c0;

.field private final sefReader:Lcom/google/android/exoplayer2/extractor/mp4/m;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/i;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->FACTORY:Lcom/google/android/exoplayer2/extractor/r;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->flags:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/m;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/m;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/m;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->slowMotionMetadataEntries:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    const/16 v2, 0x10

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    sget-object v2, Lcom/google/android/exoplayer2/util/y;->NAL_START_CODE:[B

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->nalStartCode:Lcom/google/android/exoplayer2/util/c0;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/c0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->scratch:Lcom/google/android/exoplayer2/util/c0;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleTrackIndex:I

    .line 10
    sget-object p1, Lcom/google/android/exoplayer2/extractor/n;->PLACEHOLDER:Lcom/google/android/exoplayer2/extractor/n;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    new-array p1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    return-void
.end method

.method private static A(I)Z
    .locals 1

    .line 1
    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x66747970

    if-eq p0, v0, :cond_1

    const v0, 0x75647461

    if-eq p0, v0, :cond_1

    const v0, 0x6b657973

    if-eq p0, v0, :cond_1

    const v0, 0x696c7374

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private B(Lcom/google/android/exoplayer2/extractor/mp4/k$a;J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/r;->a(J)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/r;->b(J)I

    .line 13
    move-result v1

    .line 14
    .line 15
    :cond_0
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleIndex:I

    .line 16
    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/extractor/mp4/o;)Lcom/google/android/exoplayer2/extractor/mp4/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->m(Lcom/google/android/exoplayer2/extractor/mp4/o;)Lcom/google/android/exoplayer2/extractor/mp4/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/k;->n()[Lcom/google/android/exoplayer2/extractor/l;

    move-result-object v0

    return-object v0
.end method

.method private static g(I)I
    .locals 1

    .line 1
    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static h([Lcom/google/android/exoplayer2/extractor/mp4/k$a;)[[J
    .locals 15

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    new-array v0, v0, [[J

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    new-array v1, v1, [I

    .line 7
    array-length v2, p0

    .line 8
    .line 9
    new-array v2, v2, [J

    .line 10
    array-length v3, p0

    .line 11
    .line 12
    new-array v3, v3, [Z

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    array-length v6, p0

    .line 16
    .line 17
    if-ge v5, v6, :cond_0

    .line 18
    .line 19
    aget-object v6, p0, v5

    .line 20
    .line 21
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 22
    .line 23
    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/r;->sampleCount:I

    .line 24
    .line 25
    new-array v6, v6, [J

    .line 26
    .line 27
    aput-object v6, v0, v5

    .line 28
    .line 29
    aget-object v6, p0, v5

    .line 30
    .line 31
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 32
    .line 33
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/r;->timestampsUs:[J

    .line 34
    .line 35
    aget-wide v7, v6, v4

    .line 36
    .line 37
    aput-wide v7, v2, v5

    .line 38
    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    const-wide/16 v5, 0x0

    .line 43
    move v7, v4

    .line 44
    :goto_1
    array-length v8, p0

    .line 45
    .line 46
    if-ge v7, v8, :cond_4

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const-wide v8, 0x7fffffffffffffffL

    .line 52
    const/4 v10, -0x1

    .line 53
    move v11, v4

    .line 54
    :goto_2
    array-length v12, p0

    .line 55
    .line 56
    if-ge v11, v12, :cond_2

    .line 57
    .line 58
    aget-boolean v12, v3, v11

    .line 59
    .line 60
    if-nez v12, :cond_1

    .line 61
    .line 62
    aget-wide v12, v2, v11

    .line 63
    .line 64
    cmp-long v14, v12, v8

    .line 65
    .line 66
    if-gtz v14, :cond_1

    .line 67
    move v10, v11

    .line 68
    move-wide v8, v12

    .line 69
    .line 70
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_2
    aget v8, v1, v10

    .line 74
    .line 75
    aget-object v9, v0, v10

    .line 76
    .line 77
    aput-wide v5, v9, v8

    .line 78
    .line 79
    aget-object v11, p0, v10

    .line 80
    .line 81
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 82
    .line 83
    iget-object v12, v11, Lcom/google/android/exoplayer2/extractor/mp4/r;->sizes:[I

    .line 84
    .line 85
    aget v12, v12, v8

    .line 86
    int-to-long v12, v12

    .line 87
    add-long/2addr v5, v12

    .line 88
    const/4 v12, 0x1

    .line 89
    add-int/2addr v8, v12

    .line 90
    .line 91
    aput v8, v1, v10

    .line 92
    array-length v9, v9

    .line 93
    .line 94
    if-ge v8, v9, :cond_3

    .line 95
    .line 96
    iget-object v9, v11, Lcom/google/android/exoplayer2/extractor/mp4/r;->timestampsUs:[J

    .line 97
    .line 98
    aget-wide v8, v9, v8

    .line 99
    .line 100
    aput-wide v8, v2, v10

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_3
    aput-boolean v12, v3, v10

    .line 104
    .line 105
    add-int/lit8 v7, v7, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    return-object v0
.end method

.method private i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    return-void
.end method

.method private static k(Lcom/google/android/exoplayer2/extractor/mp4/r;J)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/r;->a(J)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/r;->b(J)I

    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method

.method private l(J)I
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    const/4 v4, -0x1

    .line 4
    move v6, v4

    .line 5
    const/4 v7, 0x0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v8, 0x7fffffffffffffffL

    .line 11
    const/4 v10, 0x1

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v11, 0x7fffffffffffffffL

    .line 17
    const/4 v13, 0x1

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v14, 0x7fffffffffffffffL

    .line 23
    .line 24
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 25
    array-length v5, v3

    .line 26
    .line 27
    if-ge v7, v5, :cond_7

    .line 28
    .line 29
    aget-object v3, v3, v7

    .line 30
    .line 31
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleIndex:I

    .line 32
    .line 33
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 34
    .line 35
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/r;->sampleCount:I

    .line 36
    .line 37
    if-ne v5, v1, :cond_0

    .line 38
    goto :goto_3

    .line 39
    .line 40
    :cond_0
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/r;->offsets:[J

    .line 41
    .line 42
    aget-wide v2, v1, v5

    .line 43
    .line 44
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->accumulatedSampleSizes:[[J

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, [[J

    .line 51
    .line 52
    aget-object v1, v1, v7

    .line 53
    .line 54
    aget-wide v16, v1, v5

    .line 55
    .line 56
    sub-long v2, v2, p1

    .line 57
    .line 58
    const-wide/16 v18, 0x0

    .line 59
    .line 60
    cmp-long v1, v2, v18

    .line 61
    .line 62
    if-ltz v1, :cond_2

    .line 63
    .line 64
    .line 65
    const-wide/32 v18, 0x40000

    .line 66
    .line 67
    cmp-long v1, v2, v18

    .line 68
    .line 69
    if-ltz v1, :cond_1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 74
    .line 75
    :goto_2
    if-nez v1, :cond_3

    .line 76
    .line 77
    if-nez v13, :cond_4

    .line 78
    .line 79
    :cond_3
    if-ne v1, v13, :cond_5

    .line 80
    .line 81
    cmp-long v5, v2, v14

    .line 82
    .line 83
    if-gez v5, :cond_5

    .line 84
    :cond_4
    move v13, v1

    .line 85
    move-wide v14, v2

    .line 86
    move v6, v7

    .line 87
    .line 88
    move-wide/from16 v11, v16

    .line 89
    .line 90
    :cond_5
    cmp-long v2, v16, v8

    .line 91
    .line 92
    if-gez v2, :cond_6

    .line 93
    move v10, v1

    .line 94
    move v4, v7

    .line 95
    .line 96
    move-wide/from16 v8, v16

    .line 97
    .line 98
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :cond_7
    const-wide v1, 0x7fffffffffffffffL

    .line 105
    .line 106
    cmp-long v1, v8, v1

    .line 107
    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    if-eqz v10, :cond_8

    .line 111
    .line 112
    .line 113
    const-wide/32 v1, 0xa00000

    .line 114
    add-long/2addr v8, v1

    .line 115
    .line 116
    cmp-long v1, v11, v8

    .line 117
    .line 118
    if-gez v1, :cond_9

    .line 119
    :cond_8
    move v4, v6

    .line 120
    :cond_9
    return v4
.end method

.method private static synthetic m(Lcom/google/android/exoplayer2/extractor/mp4/o;)Lcom/google/android/exoplayer2/extractor/mp4/o;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic n()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/l;

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/k;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    aput-object v1, v0, v2

    .line 12
    return-object v0
.end method

.method private static o(Lcom/google/android/exoplayer2/extractor/mp4/r;JJ)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->k(Lcom/google/android/exoplayer2/extractor/mp4/r;J)I

    .line 4
    move-result p1

    .line 5
    const/4 p2, -0x1

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    return-wide p3

    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/r;->offsets:[J

    .line 11
    .line 12
    aget-wide p1, p0, p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method private p(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->L(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->e(Lcom/google/android/exoplayer2/util/c0;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 35
    return-void
.end method

.method private q(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 18
    .line 19
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->endPosition:J

    .line 20
    .line 21
    cmp-long v0, v2, p1

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 32
    .line 33
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/a;->type:I

    .line 34
    .line 35
    .line 36
    const v3, 0x6d6f6f76

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->t(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 47
    .line 48
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->d(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 72
    .line 73
    if-eq p1, v1, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->i()V

    .line 77
    :cond_3
    return-void
.end method

.method private r()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->fileType:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->flags:I

    .line 8
    and-int/2addr v0, v1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 13
    const/4 v1, 0x4

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    new-array v3, v3, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 32
    .line 33
    aput-object v4, v3, v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 37
    .line 38
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/a2$b;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/a2$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 60
    .line 61
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$b;

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 73
    :cond_1
    return-void
.end method

.method private static s(Lcom/google/android/exoplayer2/util/c0;)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->g(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->g(I)I

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    return v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method private t(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    new-instance v9, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->fileType:I

    .line 12
    const/4 v11, 0x1

    .line 13
    .line 14
    if-ne v2, v11, :cond_0

    .line 15
    move v7, v11

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v7, 0x0

    .line 18
    .line 19
    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/extractor/x;

    .line 20
    .line 21
    .line 22
    invoke-direct {v12}, Lcom/google/android/exoplayer2/extractor/x;-><init>()V

    .line 23
    .line 24
    .line 25
    const v2, 0x75647461

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->B(Lcom/google/android/exoplayer2/extractor/mp4/a$b;)Landroid/util/Pair;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 40
    .line 41
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v12, v3}, Lcom/google/android/exoplayer2/extractor/x;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 49
    :cond_1
    move-object v14, v2

    .line 50
    move-object v15, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v14, 0x0

    .line 53
    const/4 v15, 0x0

    .line 54
    .line 55
    .line 56
    :goto_1
    const v2, 0x6d657461

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->n(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 66
    move-result-object v2

    .line 67
    move-object v8, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 v8, 0x0

    .line 70
    .line 71
    :goto_2
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->flags:I

    .line 72
    and-int/2addr v2, v11

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    move v6, v11

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    const/4 v6, 0x0

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :goto_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    const/4 v5, 0x0

    .line 84
    .line 85
    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/j;

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v16 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/j;-><init>()V

    .line 89
    .line 90
    move-object/from16 v1, p1

    .line 91
    move-object v2, v12

    .line 92
    move-object v13, v8

    .line 93
    .line 94
    move-object/from16 v8, v16

    .line 95
    .line 96
    .line 97
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/b;->A(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/x;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/g;)Ljava/util/List;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    move-wide v10, v4

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v7, -0x1

    .line 111
    .line 112
    :goto_4
    if-ge v6, v2, :cond_c

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v17

    .line 117
    .line 118
    move-object/from16 v8, v17

    .line 119
    .line 120
    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 121
    .line 122
    iget v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/r;->sampleCount:I

    .line 123
    .line 124
    if-nez v3, :cond_5

    .line 125
    .line 126
    move-object/from16 v18, v1

    .line 127
    .line 128
    move/from16 v19, v2

    .line 129
    const/4 v1, -0x1

    .line 130
    const/4 v8, 0x1

    .line 131
    .line 132
    goto/16 :goto_a

    .line 133
    .line 134
    :cond_5
    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/r;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 135
    .line 136
    move-object/from16 v18, v1

    .line 137
    .line 138
    move/from16 v19, v2

    .line 139
    .line 140
    iget-wide v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->durationUs:J

    .line 141
    .line 142
    cmp-long v20, v1, v4

    .line 143
    .line 144
    if-eqz v20, :cond_6

    .line 145
    goto :goto_5

    .line 146
    .line 147
    :cond_6
    iget-wide v1, v8, Lcom/google/android/exoplayer2/extractor/mp4/r;->durationUs:J

    .line 148
    .line 149
    .line 150
    :goto_5
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 151
    move-result-wide v10

    .line 152
    .line 153
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 154
    .line 155
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 156
    .line 157
    move-wide/from16 v21, v10

    .line 158
    .line 159
    iget v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    .line 160
    .line 161
    .line 162
    invoke-interface {v5, v6, v10}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    .line 166
    invoke-direct {v4, v3, v8, v5}, Lcom/google/android/exoplayer2/extractor/mp4/k$a;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/o;Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/e0;)V

    .line 167
    .line 168
    iget-object v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    .line 169
    .line 170
    iget-object v5, v5, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 171
    .line 172
    const-string v10, "audio/true-hd"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result v5

    .line 177
    .line 178
    if-eqz v5, :cond_7

    .line 179
    .line 180
    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/r;->maximumSize:I

    .line 181
    .line 182
    mul-int/lit8 v5, v5, 0x10

    .line 183
    goto :goto_6

    .line 184
    .line 185
    :cond_7
    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/r;->maximumSize:I

    .line 186
    .line 187
    add-int/lit8 v5, v5, 0x1e

    .line 188
    .line 189
    :goto_6
    iget-object v10, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 193
    move-result-object v10

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 197
    .line 198
    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    .line 199
    const/4 v11, 0x2

    .line 200
    .line 201
    if-ne v5, v11, :cond_8

    .line 202
    .line 203
    const-wide/16 v23, 0x0

    .line 204
    .line 205
    cmp-long v5, v1, v23

    .line 206
    .line 207
    if-lez v5, :cond_8

    .line 208
    .line 209
    iget v5, v8, Lcom/google/android/exoplayer2/extractor/mp4/r;->sampleCount:I

    .line 210
    const/4 v8, 0x1

    .line 211
    .line 212
    if-le v5, v8, :cond_8

    .line 213
    int-to-float v5, v5

    .line 214
    long-to-float v1, v1

    .line 215
    .line 216
    .line 217
    const v2, 0x49742400    # 1000000.0f

    .line 218
    div-float/2addr v1, v2

    .line 219
    div-float/2addr v5, v1

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/a2$b;->P(F)Lcom/google/android/exoplayer2/a2$b;

    .line 223
    .line 224
    :cond_8
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    .line 225
    .line 226
    .line 227
    invoke-static {v1, v12, v10}, Lcom/google/android/exoplayer2/extractor/mp4/h;->k(ILcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/a2$b;)V

    .line 228
    .line 229
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    .line 230
    .line 231
    new-array v2, v11, [Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 232
    const/4 v5, 0x0

    .line 233
    .line 234
    aput-object v14, v2, v5

    .line 235
    .line 236
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->slowMotionMetadataEntries:Ljava/util/List;

    .line 237
    .line 238
    .line 239
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 240
    move-result v5

    .line 241
    .line 242
    if-eqz v5, :cond_9

    .line 243
    const/4 v5, 0x0

    .line 244
    :goto_7
    const/4 v8, 0x1

    .line 245
    goto :goto_8

    .line 246
    .line 247
    :cond_9
    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 248
    .line 249
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->slowMotionMetadataEntries:Ljava/util/List;

    .line 250
    .line 251
    .line 252
    invoke-direct {v5, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 253
    goto :goto_7

    .line 254
    .line 255
    :goto_8
    aput-object v5, v2, v8

    .line 256
    .line 257
    .line 258
    invoke-static {v1, v15, v13, v10, v2}, Lcom/google/android/exoplayer2/extractor/mp4/h;->l(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/a2$b;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 259
    .line 260
    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 264
    move-result-object v2

    .line 265
    .line 266
    .line 267
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 268
    .line 269
    iget v1, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    .line 270
    .line 271
    if-ne v1, v11, :cond_a

    .line 272
    const/4 v1, -0x1

    .line 273
    .line 274
    if-ne v7, v1, :cond_b

    .line 275
    .line 276
    .line 277
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 278
    move-result v7

    .line 279
    goto :goto_9

    .line 280
    :cond_a
    const/4 v1, -0x1

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_9
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    move-wide/from16 v10, v21

    .line 286
    .line 287
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 288
    .line 289
    move-object/from16 v1, v18

    .line 290
    .line 291
    move/from16 v2, v19

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_c
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->firstVideoTrackIndex:I

    .line 301
    .line 302
    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->durationUs:J

    .line 303
    const/4 v1, 0x0

    .line 304
    .line 305
    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 306
    .line 307
    .line 308
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 309
    move-result-object v1

    .line 310
    .line 311
    check-cast v1, [Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 312
    .line 313
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 314
    .line 315
    .line 316
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/k;->h([Lcom/google/android/exoplayer2/extractor/mp4/k$a;)[[J

    .line 317
    move-result-object v1

    .line 318
    .line 319
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->accumulatedSampleSizes:[[J

    .line 320
    .line 321
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 322
    .line 323
    .line 324
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 325
    .line 326
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    .line 327
    .line 328
    .line 329
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 330
    return-void
.end method

.method private u(J)V
    .locals 13

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 3
    .line 4
    .line 5
    const v1, 0x6d707664

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 19
    int-to-long v5, v1

    .line 20
    .line 21
    add-long v9, p1, v5

    .line 22
    .line 23
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 24
    int-to-long v1, v1

    .line 25
    .line 26
    sub-long v11, v5, v1

    .line 27
    move-object v2, v0

    .line 28
    move-wide v5, p1

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    .line 34
    :cond_0
    return-void
.end method

.method private v(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BIIZ)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->r()V

    .line 24
    return v3

    .line 25
    .line 26
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 37
    move-result-wide v4

    .line 38
    .line 39
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 45
    move-result v0

    .line 46
    .line 47
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 48
    .line 49
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 50
    .line 51
    const-wide/16 v6, 0x1

    .line 52
    .line 53
    cmp-long v0, v4, v6

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 65
    .line 66
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 67
    add-int/2addr v0, v2

    .line 68
    .line 69
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->I()J

    .line 75
    move-result-wide v4

    .line 76
    .line 77
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    const-wide/16 v6, 0x0

    .line 81
    .line 82
    cmp-long v0, v4, v6

    .line 83
    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 88
    move-result-wide v4

    .line 89
    .line 90
    const-wide/16 v6, -0x1

    .line 91
    .line 92
    cmp-long v0, v4, v6

    .line 93
    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->endPosition:J

    .line 107
    .line 108
    :cond_3
    cmp-long v0, v4, v6

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 114
    move-result-wide v6

    .line 115
    sub-long/2addr v4, v6

    .line 116
    .line 117
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 118
    int-to-long v6, v0

    .line 119
    add-long/2addr v4, v6

    .line 120
    .line 121
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 122
    .line 123
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 124
    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 126
    int-to-long v6, v0

    .line 127
    .line 128
    cmp-long v0, v4, v6

    .line 129
    .line 130
    if-ltz v0, :cond_b

    .line 131
    .line 132
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->z(I)Z

    .line 136
    move-result v0

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 142
    move-result-wide v2

    .line 143
    .line 144
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 145
    add-long/2addr v2, v4

    .line 146
    .line 147
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 148
    int-to-long v6, v0

    .line 149
    sub-long/2addr v2, v6

    .line 150
    int-to-long v6, v0

    .line 151
    .line 152
    cmp-long v0, v4, v6

    .line 153
    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 157
    .line 158
    .line 159
    const v4, 0x6d657461

    .line 160
    .line 161
    if-ne v0, v4, :cond_5

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/k;->p(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 165
    .line 166
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 167
    .line 168
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 169
    .line 170
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;-><init>(IJ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 177
    .line 178
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 179
    .line 180
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 181
    int-to-long v6, p1

    .line 182
    .line 183
    cmp-long p1, v4, v6

    .line 184
    .line 185
    if-nez p1, :cond_6

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/k;->q(J)V

    .line 189
    goto :goto_3

    .line 190
    .line 191
    .line 192
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->i()V

    .line 193
    goto :goto_3

    .line 194
    .line 195
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->A(I)Z

    .line 199
    move-result v0

    .line 200
    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 204
    .line 205
    if-ne p1, v2, :cond_8

    .line 206
    move p1, v1

    .line 207
    goto :goto_1

    .line 208
    :cond_8
    move p1, v3

    .line 209
    .line 210
    .line 211
    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 212
    .line 213
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 214
    .line 215
    .line 216
    const-wide/32 v6, 0x7fffffff

    .line 217
    .line 218
    cmp-long p1, v4, v6

    .line 219
    .line 220
    if-gtz p1, :cond_9

    .line 221
    move p1, v1

    .line 222
    goto :goto_2

    .line 223
    :cond_9
    move p1, v3

    .line 224
    .line 225
    .line 226
    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 227
    .line 228
    new-instance p1, Lcom/google/android/exoplayer2/util/c0;

    .line 229
    .line 230
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 231
    long-to-int v0, v4

    .line 232
    .line 233
    .line 234
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/c0;-><init>(I)V

    .line 235
    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeader:Lcom/google/android/exoplayer2/util/c0;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 240
    move-result-object v0

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 244
    move-result-object v4

    .line 245
    .line 246
    .line 247
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomData:Lcom/google/android/exoplayer2/util/c0;

    .line 250
    .line 251
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 252
    goto :goto_3

    .line 253
    .line 254
    .line 255
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 256
    move-result-wide v2

    .line 257
    .line 258
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 259
    int-to-long v4, p1

    .line 260
    sub-long/2addr v2, v4

    .line 261
    .line 262
    .line 263
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/k;->u(J)V

    .line 264
    const/4 p1, 0x0

    .line 265
    .line 266
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomData:Lcom/google/android/exoplayer2/util/c0;

    .line 267
    .line 268
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 269
    :goto_3
    return v1

    .line 270
    .line 271
    :cond_b
    const-string p1, "Atom size less than header length (unsupported)."

    .line 272
    .line 273
    .line 274
    invoke-static {p1}, Lcom/google/android/exoplayer2/v2;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/v2;

    .line 275
    move-result-object p1

    .line 276
    throw p1
.end method

.method private w(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomSize:J

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 5
    int-to-long v2, v2

    .line 6
    sub-long/2addr v0, v2

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 10
    move-result-wide v2

    .line 11
    add-long/2addr v2, v0

    .line 12
    .line 13
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomData:Lcom/google/android/exoplayer2/util/c0;

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 24
    long-to-int v0, v0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2, v7, v0}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 30
    .line 31
    .line 32
    const p2, 0x66747970

    .line 33
    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/k;->s(Lcom/google/android/exoplayer2/util/c0;)I

    .line 38
    move-result p1

    .line 39
    .line 40
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->fileType:I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 58
    .line 59
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 60
    .line 61
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomType:I

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/a$b;-><init>(ILcom/google/android/exoplayer2/util/c0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->e(Lcom/google/android/exoplayer2/extractor/mp4/a$b;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_1
    const-wide/32 v7, 0x40000

    .line 72
    .line 73
    cmp-long v4, v0, v7

    .line 74
    .line 75
    if-gez v4, :cond_3

    .line 76
    long-to-int p2, v0

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 80
    :cond_2
    :goto_0
    move p1, v6

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 85
    move-result-wide v7

    .line 86
    add-long/2addr v7, v0

    .line 87
    .line 88
    iput-wide v7, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 89
    move p1, v5

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/k;->q(J)V

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 97
    const/4 p2, 0x2

    .line 98
    .line 99
    if-eq p1, p2, :cond_4

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move v5, v6

    .line 102
    :goto_2
    return v5
.end method

.method private x(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleTrackIndex:I

    .line 11
    const/4 v5, -0x1

    .line 12
    .line 13
    if-ne v4, v5, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/k;->l(J)I

    .line 17
    move-result v4

    .line 18
    .line 19
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleTrackIndex:I

    .line 20
    .line 21
    if-ne v4, v5, :cond_0

    .line 22
    return v5

    .line 23
    .line 24
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 25
    .line 26
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleTrackIndex:I

    .line 27
    .line 28
    aget-object v4, v4, v6

    .line 29
    .line 30
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->trackOutput:Lcom/google/android/exoplayer2/extractor/e0;

    .line 31
    .line 32
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleIndex:I

    .line 33
    .line 34
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 35
    .line 36
    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/r;->offsets:[J

    .line 37
    .line 38
    aget-wide v8, v7, v15

    .line 39
    .line 40
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/r;->sizes:[I

    .line 41
    .line 42
    aget v6, v6, v15

    .line 43
    .line 44
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;

    .line 45
    .line 46
    sub-long v2, v8, v2

    .line 47
    .line 48
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 49
    int-to-long v10, v7

    .line 50
    add-long/2addr v2, v10

    .line 51
    .line 52
    const-wide/16 v10, 0x0

    .line 53
    .line 54
    cmp-long v7, v2, v10

    .line 55
    const/4 v12, 0x1

    .line 56
    .line 57
    if-ltz v7, :cond_c

    .line 58
    .line 59
    .line 60
    const-wide/32 v10, 0x40000

    .line 61
    .line 62
    cmp-long v7, v2, v10

    .line 63
    .line 64
    if-ltz v7, :cond_1

    .line 65
    .line 66
    move-object/from16 v1, p2

    .line 67
    .line 68
    move/from16 v17, v12

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_1
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 73
    .line 74
    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/o;->sampleTransformation:I

    .line 75
    .line 76
    if-ne v7, v12, :cond_2

    .line 77
    .line 78
    const-wide/16 v7, 0x8

    .line 79
    add-long/2addr v2, v7

    .line 80
    .line 81
    add-int/lit8 v6, v6, -0x8

    .line 82
    :cond_2
    long-to-int v2, v2

    .line 83
    .line 84
    .line 85
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 86
    .line 87
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 88
    .line 89
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/o;->nalUnitLengthFieldLength:I

    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v10, 0x0

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 99
    move-result-object v2

    .line 100
    .line 101
    aput-byte v10, v2, v10

    .line 102
    .line 103
    aput-byte v10, v2, v12

    .line 104
    const/4 v3, 0x2

    .line 105
    .line 106
    aput-byte v10, v2, v3

    .line 107
    .line 108
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->track:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 109
    .line 110
    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->nalUnitLengthFieldLength:I

    .line 111
    .line 112
    rsub-int/lit8 v7, v3, 0x4

    .line 113
    .line 114
    :goto_0
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 115
    .line 116
    if-ge v8, v6, :cond_5

    .line 117
    .line 118
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 119
    .line 120
    if-nez v8, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v2, v7, v3}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    .line 124
    .line 125
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 126
    add-int/2addr v8, v3

    .line 127
    .line 128
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 129
    .line 130
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 134
    .line 135
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->nalLength:Lcom/google/android/exoplayer2/util/c0;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 139
    move-result v8

    .line 140
    .line 141
    if-ltz v8, :cond_3

    .line 142
    .line 143
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 144
    .line 145
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->nalStartCode:Lcom/google/android/exoplayer2/util/c0;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 149
    .line 150
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->nalStartCode:Lcom/google/android/exoplayer2/util/c0;

    .line 151
    const/4 v9, 0x4

    .line 152
    .line 153
    .line 154
    invoke-interface {v14, v8, v9}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 155
    .line 156
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 157
    add-int/2addr v8, v9

    .line 158
    .line 159
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 160
    add-int/2addr v6, v7

    .line 161
    goto :goto_0

    .line 162
    .line 163
    :cond_3
    const-string v1, "Invalid NAL length"

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v11}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 167
    move-result-object v1

    .line 168
    throw v1

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-interface {v14, v1, v8, v10}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/h;IZ)I

    .line 172
    move-result v8

    .line 173
    .line 174
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 175
    add-int/2addr v9, v8

    .line 176
    .line 177
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 178
    .line 179
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 180
    add-int/2addr v9, v8

    .line 181
    .line 182
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 183
    .line 184
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 185
    sub-int/2addr v9, v8

    .line 186
    .line 187
    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 188
    goto :goto_0

    .line 189
    :cond_5
    move v1, v6

    .line 190
    goto :goto_2

    .line 191
    .line 192
    :cond_6
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    .line 193
    .line 194
    iget-object v2, v2, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 195
    .line 196
    const-string v3, "audio/ac4"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v2

    .line 201
    .line 202
    if-eqz v2, :cond_8

    .line 203
    .line 204
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 205
    .line 206
    if-nez v2, :cond_7

    .line 207
    .line 208
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 209
    .line 210
    .line 211
    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/audio/c;->a(ILcom/google/android/exoplayer2/util/c0;)V

    .line 212
    .line 213
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->scratch:Lcom/google/android/exoplayer2/util/c0;

    .line 214
    const/4 v3, 0x7

    .line 215
    .line 216
    .line 217
    invoke-interface {v14, v2, v3}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 218
    .line 219
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 220
    add-int/2addr v2, v3

    .line 221
    .line 222
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 223
    .line 224
    :cond_7
    add-int/lit8 v6, v6, 0x7

    .line 225
    goto :goto_1

    .line 226
    .line 227
    :cond_8
    if-eqz v13, :cond_9

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/extractor/f0;->d(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 231
    .line 232
    :cond_9
    :goto_1
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 233
    .line 234
    if-ge v2, v6, :cond_5

    .line 235
    .line 236
    sub-int v2, v6, v2

    .line 237
    .line 238
    .line 239
    invoke-interface {v14, v1, v2, v10}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/h;IZ)I

    .line 240
    move-result v2

    .line 241
    .line 242
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 243
    add-int/2addr v3, v2

    .line 244
    .line 245
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 246
    .line 247
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 248
    add-int/2addr v3, v2

    .line 249
    .line 250
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 251
    .line 252
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 253
    sub-int/2addr v3, v2

    .line 254
    .line 255
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 256
    goto :goto_1

    .line 257
    .line 258
    :goto_2
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 259
    .line 260
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/r;->timestampsUs:[J

    .line 261
    .line 262
    aget-wide v8, v3, v15

    .line 263
    .line 264
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/r;->flags:[I

    .line 265
    .line 266
    aget v2, v2, v15

    .line 267
    .line 268
    if-eqz v13, :cond_a

    .line 269
    const/4 v3, 0x0

    .line 270
    .line 271
    const/16 v16, 0x0

    .line 272
    move-object v6, v13

    .line 273
    move-object v7, v14

    .line 274
    move v10, v2

    .line 275
    move-object v2, v11

    .line 276
    move v11, v1

    .line 277
    .line 278
    move/from16 v17, v12

    .line 279
    move v12, v3

    .line 280
    move-object v1, v13

    .line 281
    .line 282
    move-object/from16 v13, v16

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/extractor/f0;->c(Lcom/google/android/exoplayer2/extractor/e0;JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 286
    .line 287
    add-int/lit8 v15, v15, 0x1

    .line 288
    .line 289
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 290
    .line 291
    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/r;->sampleCount:I

    .line 292
    .line 293
    if-ne v15, v3, :cond_b

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v14, v2}, Lcom/google/android/exoplayer2/extractor/f0;->a(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 297
    goto :goto_3

    .line 298
    .line 299
    :cond_a
    move/from16 v17, v12

    .line 300
    const/4 v11, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    move-object v6, v14

    .line 303
    move-wide v7, v8

    .line 304
    move v9, v2

    .line 305
    move v10, v1

    .line 306
    .line 307
    .line 308
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 309
    .line 310
    :cond_b
    :goto_3
    iget v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleIndex:I

    .line 311
    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    .line 314
    iput v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleIndex:I

    .line 315
    .line 316
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleTrackIndex:I

    .line 317
    const/4 v1, 0x0

    .line 318
    .line 319
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 320
    .line 321
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 322
    .line 323
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 324
    return v1

    .line 325
    .line 326
    :cond_c
    move/from16 v17, v12

    .line 327
    .line 328
    move-object/from16 v1, p2

    .line 329
    .line 330
    :goto_4
    iput-wide v8, v1, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 331
    return v17
.end method

.method private y(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/m;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->slowMotionMetadataEntries:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/m;->c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;Ljava/util/List;)I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/a0;->position:J

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long p2, v0, v2

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->i()V

    .line 23
    :cond_0
    return p1
.end method

.method private static z(I)Z
    .locals 1

    .line 1
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-eq p0, v0, :cond_1

    const v0, 0x6d657461

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->flags:I

    .line 3
    .line 4
    and-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/n;->d(Lcom/google/android/exoplayer2/extractor/m;Z)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->y(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 24
    throw p1

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->x(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I

    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    .line 31
    .line 32
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->w(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    return v1

    .line 37
    .line 38
    .line 39
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/k;->v(Lcom/google/android/exoplayer2/extractor/m;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    const/4 p1, -0x1

    .line 44
    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->extractorOutput:Lcom/google/android/exoplayer2/extractor/n;

    return-void
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->j(JI)Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(JI)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v1, p1

    .line 5
    .line 6
    move/from16 v3, p3

    .line 7
    .line 8
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 9
    array-length v5, v4

    .line 10
    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 14
    .line 15
    sget-object v2, Lcom/google/android/exoplayer2/extractor/c0;->START:Lcom/google/android/exoplayer2/extractor/c0;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 19
    return-object v1

    .line 20
    :cond_0
    const/4 v5, -0x1

    .line 21
    .line 22
    if-eq v3, v5, :cond_1

    .line 23
    move v6, v3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->firstVideoTrackIndex:I

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    const-wide/16 v9, -0x1

    .line 34
    .line 35
    if-eq v6, v5, :cond_3

    .line 36
    .line 37
    aget-object v4, v4, v6

    .line 38
    .line 39
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 40
    .line 41
    .line 42
    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->k(Lcom/google/android/exoplayer2/extractor/mp4/r;J)I

    .line 43
    move-result v6

    .line 44
    .line 45
    if-ne v6, v5, :cond_2

    .line 46
    .line 47
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 48
    .line 49
    sget-object v2, Lcom/google/android/exoplayer2/extractor/c0;->START:Lcom/google/android/exoplayer2/extractor/c0;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 53
    return-object v1

    .line 54
    .line 55
    :cond_2
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/r;->timestampsUs:[J

    .line 56
    .line 57
    aget-wide v12, v11, v6

    .line 58
    .line 59
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/r;->offsets:[J

    .line 60
    .line 61
    aget-wide v14, v11, v6

    .line 62
    .line 63
    cmp-long v11, v12, v1

    .line 64
    .line 65
    if-gez v11, :cond_4

    .line 66
    .line 67
    iget v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/r;->sampleCount:I

    .line 68
    .line 69
    add-int/lit8 v11, v11, -0x1

    .line 70
    .line 71
    if-ge v6, v11, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/r;->b(J)I

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eq v1, v5, :cond_4

    .line 78
    .line 79
    if-eq v1, v6, :cond_4

    .line 80
    .line 81
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/r;->timestampsUs:[J

    .line 82
    .line 83
    aget-wide v9, v2, v1

    .line 84
    .line 85
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/r;->offsets:[J

    .line 86
    .line 87
    aget-wide v1, v2, v1

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    .line 94
    move-wide v12, v1

    .line 95
    :cond_4
    move-wide v1, v9

    .line 96
    move-wide v9, v7

    .line 97
    .line 98
    :goto_1
    if-ne v3, v5, :cond_7

    .line 99
    const/4 v3, 0x0

    .line 100
    .line 101
    :goto_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 102
    array-length v5, v4

    .line 103
    .line 104
    if-ge v3, v5, :cond_7

    .line 105
    .line 106
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/k;->firstVideoTrackIndex:I

    .line 107
    .line 108
    if-eq v3, v5, :cond_6

    .line 109
    .line 110
    aget-object v4, v4, v3

    .line 111
    .line 112
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 113
    .line 114
    .line 115
    invoke-static {v4, v12, v13, v14, v15}, Lcom/google/android/exoplayer2/extractor/mp4/k;->o(Lcom/google/android/exoplayer2/extractor/mp4/r;JJ)J

    .line 116
    move-result-wide v5

    .line 117
    .line 118
    cmp-long v11, v9, v7

    .line 119
    .line 120
    if-eqz v11, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-static {v4, v9, v10, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->o(Lcom/google/android/exoplayer2/extractor/mp4/r;JJ)J

    .line 124
    move-result-wide v1

    .line 125
    :cond_5
    move-wide v14, v5

    .line 126
    .line 127
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_7
    new-instance v3, Lcom/google/android/exoplayer2/extractor/c0;

    .line 131
    .line 132
    .line 133
    invoke-direct {v3, v12, v13, v14, v15}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 134
    .line 135
    cmp-long v4, v9, v7

    .line 136
    .line 137
    if-nez v4, :cond_8

    .line 138
    .line 139
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 143
    return-object v1

    .line 144
    .line 145
    :cond_8
    new-instance v4, Lcom/google/android/exoplayer2/extractor/c0;

    .line 146
    .line 147
    .line 148
    invoke-direct {v4, v9, v10, v1, v2}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    .line 149
    .line 150
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;Lcom/google/android/exoplayer2/extractor/c0;)V

    .line 154
    return-object v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->containerAtoms:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->atomHeaderBytesRead:I

    .line 9
    const/4 v1, -0x1

    .line 10
    .line 11
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleTrackIndex:I

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesRead:I

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleBytesWritten:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sampleCurrentNalBytesRemaining:I

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    cmp-long p1, p1, v1

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->parserState:I

    .line 26
    const/4 p2, 0x3

    .line 27
    .line 28
    if-eq p1, p2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->i()V

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/m;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/m;->g()V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->slowMotionMetadataEntries:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/k;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/k$a;

    .line 46
    array-length p2, p1

    .line 47
    .line 48
    :goto_0
    if-ge v0, p2, :cond_3

    .line 49
    .line 50
    aget-object v1, p1, v0

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/k;->B(Lcom/google/android/exoplayer2/extractor/mp4/k$a;J)V

    .line 54
    .line 55
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/k$a;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/f0;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/f0;->b()V

    .line 61
    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    return-void
.end method
