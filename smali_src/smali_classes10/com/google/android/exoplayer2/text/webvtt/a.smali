.class public final Lcom/google/android/exoplayer2/text/webvtt/a;
.super Lcom/google/android/exoplayer2/text/h;
.source "SourceFile"


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I = 0x7061796c

.field private static final TYPE_sttg:I = 0x73747467

.field private static final TYPE_vttc:I = 0x76747463


# instance fields
.field private final sampleData:Lcom/google/android/exoplayer2/util/c0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Mp4WebvttDecoder"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/h;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/c0;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 13
    return-void
.end method

.method private static x(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/text/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    move-object v2, v1

    .line 4
    .line 5
    :cond_0
    :goto_0
    if-lez p1, :cond_3

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    if-lt p1, v3, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 13
    move-result v4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 17
    move-result v5

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x8

    .line 20
    sub-int/2addr v4, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 28
    move-result v6

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v6, v4}, Lcom/google/android/exoplayer2/util/o0;->B([BII)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 36
    sub-int/2addr p1, v4

    .line 37
    .line 38
    .line 39
    const v4, 0x73747467

    .line 40
    .line 41
    if-ne v5, v4, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/f;->o(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/b$b;

    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    const v4, 0x7061796c

    .line 50
    .line 51
    if-ne v5, v4, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v3}, Lcom/google/android/exoplayer2/text/webvtt/f;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    .line 63
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/text/k;

    .line 67
    .line 68
    const-string p1, "Incomplete vtt cue box header found."

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0

    .line 73
    .line 74
    :cond_3
    if-nez v1, :cond_4

    .line 75
    .line 76
    const-string v1, ""

    .line 77
    .line 78
    :cond_4
    if-eqz v2, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/b$b;->o(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/b$b;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/b$b;->a()Lcom/google/android/exoplayer2/text/b;

    .line 86
    move-result-object p0

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/f;->l(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/b;

    .line 91
    move-result-object p0

    .line 92
    :goto_1
    return-object p0
.end method


# virtual methods
.method protected v([BIZ)Lcom/google/android/exoplayer2/text/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/c0;->N([BI)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 16
    move-result p2

    .line 17
    .line 18
    if-lez p2, :cond_2

    .line 19
    .line 20
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 24
    move-result p2

    .line 25
    .line 26
    const/16 p3, 0x8

    .line 27
    .line 28
    if-lt p2, p3, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 34
    move-result p2

    .line 35
    .line 36
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 40
    move-result p3

    .line 41
    .line 42
    .line 43
    const v0, 0x76747463

    .line 44
    .line 45
    if-ne p3, v0, :cond_0

    .line 46
    .line 47
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 48
    .line 49
    add-int/lit8 p2, p2, -0x8

    .line 50
    .line 51
    .line 52
    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/text/webvtt/a;->x(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/text/b;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/a;->sampleData:Lcom/google/android/exoplayer2/util/c0;

    .line 60
    .line 61
    add-int/lit8 p2, p2, -0x8

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/text/k;

    .line 68
    .line 69
    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/k;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1

    .line 74
    .line 75
    :cond_2
    new-instance p2, Lcom/google/android/exoplayer2/text/webvtt/b;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/webvtt/b;-><init>(Ljava/util/List;)V

    .line 79
    return-object p2
.end method
