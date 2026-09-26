.class final Lcom/google/android/exoplayer2/extractor/ogg/b;
.super Lcom/google/android/exoplayer2/extractor/ogg/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/b$a;
    }
.end annotation


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final FRAME_HEADER_SAMPLE_NUMBER_OFFSET:I = 0x4


# instance fields
.field private flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private streamMetadata:Lcom/google/android/exoplayer2/extractor/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/i;-><init>()V

    .line 4
    return-void
.end method

.method private n(Lcom/google/android/exoplayer2/util/c0;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    aget-byte v0, v0, v1

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 10
    const/4 v1, 0x4

    .line 11
    shr-int/2addr v0, v1

    .line 12
    const/4 v2, 0x6

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    const/4 v2, 0x7

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->K()J

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/s;->j(Lcom/google/android/exoplayer2/util/c0;I)I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 32
    return v0
.end method

.method private static o([B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget-byte p0, p0, v0

    .line 4
    const/4 v1, -0x1

    .line 5
    .line 6
    if-ne p0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    return v0
.end method

.method public static p(Lcom/google/android/exoplayer2/util/c0;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 11
    move-result v0

    .line 12
    .line 13
    const/16 v1, 0x7f

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    .line 22
    const-wide/32 v2, 0x464c4143

    .line 23
    .line 24
    cmp-long p0, v0, v2

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
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
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/b;->o([B)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    return-wide v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/b;->n(Lcom/google/android/exoplayer2/util/c0;)I

    .line 17
    move-result p1

    .line 18
    int-to-long v0, p1

    .line 19
    return-wide v0
.end method

.method protected i(Lcom/google/android/exoplayer2/util/c0;JLcom/google/android/exoplayer2/extractor/ogg/i$b;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->streamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/google/android/exoplayer2/extractor/v;

    .line 12
    .line 13
    const/16 p3, 0x11

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0, p3}, Lcom/google/android/exoplayer2/extractor/v;-><init>([BI)V

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->streamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 19
    .line 20
    const/16 p3, 0x9

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->f()I

    .line 24
    move-result p1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    move-result-object p1

    .line 29
    const/4 p3, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1, p3}, Lcom/google/android/exoplayer2/extractor/v;->h([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 36
    return v2

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    .line 39
    aget-byte v4, v0, v3

    .line 40
    .line 41
    and-int/lit8 v4, v4, 0x7f

    .line 42
    const/4 v5, 0x3

    .line 43
    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/t;->g(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/v$a;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/v;->c(Lcom/google/android/exoplayer2/extractor/v$a;)Lcom/google/android/exoplayer2/extractor/v;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->streamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 55
    .line 56
    new-instance p3, Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    .line 57
    .line 58
    .line 59
    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplayer2/extractor/ogg/b$a;-><init>(Lcom/google/android/exoplayer2/extractor/v;Lcom/google/android/exoplayer2/extractor/v$a;)V

    .line 60
    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    .line 62
    return v2

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/b;->o([B)Z

    .line 66
    move-result p1

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->b(J)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    .line 78
    .line 79
    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/g;

    .line 80
    .line 81
    :cond_2
    iget-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return v3

    .line 86
    :cond_3
    return v2
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
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->streamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->flacOggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    .line 11
    :cond_0
    return-void
.end method
