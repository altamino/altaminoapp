.class final Lcom/google/android/exoplayer2/extractor/flv/d;
.super Lcom/google/android/exoplayer2/extractor/flv/e;
.source "SourceFile"


# static fields
.field private static final AMF_TYPE_BOOLEAN:I = 0x1

.field private static final AMF_TYPE_DATE:I = 0xb

.field private static final AMF_TYPE_ECMA_ARRAY:I = 0x8

.field private static final AMF_TYPE_END_MARKER:I = 0x9

.field private static final AMF_TYPE_NUMBER:I = 0x0

.field private static final AMF_TYPE_OBJECT:I = 0x3

.field private static final AMF_TYPE_STRICT_ARRAY:I = 0xa

.field private static final AMF_TYPE_STRING:I = 0x2

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_FILE_POSITIONS:Ljava/lang/String; = "filepositions"

.field private static final KEY_KEY_FRAMES:Ljava/lang/String; = "keyframes"

.field private static final KEY_TIMES:Ljava/lang/String; = "times"

.field private static final NAME_METADATA:Ljava/lang/String; = "onMetaData"


# instance fields
.field private durationUs:J

.field private keyFrameTagPositions:[J

.field private keyFrameTimesUs:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/k;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/flv/e;-><init>(Lcom/google/android/exoplayer2/extractor/e0;)V

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->durationUs:J

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    new-array v1, v0, [J

    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTimesUs:[J

    .line 21
    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTagPositions:[J

    .line 25
    return-void
.end method

.method private static g(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static h(Lcom/google/android/exoplayer2/util/c0;I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_5

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0xa

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->i(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/Date;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->m(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/ArrayList;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->k(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/HashMap;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->l(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/HashMap;

    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->n(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    .line 52
    .line 53
    :cond_5
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->g(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/Boolean;

    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    .line 57
    .line 58
    :cond_6
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->j(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/Double;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method private static i(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/Date;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->j(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/Double;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 10
    move-result-wide v1

    .line 11
    double-to-long v1, v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 19
    return-object v0
.end method

.method private static j(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/Double;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->w()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static k(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/c0;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->n(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->o(Lcom/google/android/exoplayer2/util/c0;)I

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/extractor/flv/d;->h(Lcom/google/android/exoplayer2/util/c0;I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v1
.end method

.method private static l(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/c0;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->n(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->o(Lcom/google/android/exoplayer2/util/c0;)I

    .line 13
    move-result v2

    .line 14
    .line 15
    const/16 v3, 0x9

    .line 16
    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    return-object v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/extractor/flv/d;->h(Lcom/google/android/exoplayer2/util/c0;I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_0
.end method

.method private static m(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/c0;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/flv/d;->o(Lcom/google/android/exoplayer2/util/c0;)I

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/flv/d;->h(Lcom/google/android/exoplayer2/util/c0;I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-object v1
.end method

.method private static n(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 12
    .line 13
    new-instance v2, Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 21
    return-object v2
.end method

.method private static o(Lcom/google/android/exoplayer2/util/c0;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method protected b(Lcom/google/android/exoplayer2/util/c0;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method protected c(Lcom/google/android/exoplayer2/util/c0;J)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/flv/d;->o(Lcom/google/android/exoplayer2/util/c0;)I

    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x2

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eq p2, p3, :cond_0

    .line 9
    return v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/flv/d;->n(Lcom/google/android/exoplayer2/util/c0;)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    const-string p3, "onMetaData"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p2

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    return v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 26
    move-result p2

    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    return v0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/flv/d;->o(Lcom/google/android/exoplayer2/util/c0;)I

    .line 33
    move-result p2

    .line 34
    .line 35
    const/16 p3, 0x8

    .line 36
    .line 37
    if-eq p2, p3, :cond_3

    .line 38
    return v0

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/flv/d;->k(Lcom/google/android/exoplayer2/util/c0;)Ljava/util/HashMap;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string p2, "duration"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    instance-of p3, p2, Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v1, 0x412e848000000000L    # 1000000.0

    .line 56
    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    check-cast p2, Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 63
    move-result-wide p2

    .line 64
    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    cmpl-double v3, p2, v3

    .line 68
    .line 69
    if-lez v3, :cond_4

    .line 70
    mul-double/2addr p2, v1

    .line 71
    double-to-long p2, p2

    .line 72
    .line 73
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->durationUs:J

    .line 74
    .line 75
    :cond_4
    const-string p2, "keyframes"

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    instance-of p2, p1, Ljava/util/Map;

    .line 82
    .line 83
    if-eqz p2, :cond_6

    .line 84
    .line 85
    check-cast p1, Ljava/util/Map;

    .line 86
    .line 87
    const-string p2, "filepositions"

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    const-string p3, "times"

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    instance-of p3, p2, Ljava/util/List;

    .line 100
    .line 101
    if-eqz p3, :cond_6

    .line 102
    .line 103
    instance-of p3, p1, Ljava/util/List;

    .line 104
    .line 105
    if-eqz p3, :cond_6

    .line 106
    .line 107
    check-cast p2, Ljava/util/List;

    .line 108
    .line 109
    check-cast p1, Ljava/util/List;

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 113
    move-result p3

    .line 114
    .line 115
    new-array v3, p3, [J

    .line 116
    .line 117
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTimesUs:[J

    .line 118
    .line 119
    new-array v3, p3, [J

    .line 120
    .line 121
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTagPositions:[J

    .line 122
    move v3, v0

    .line 123
    .line 124
    :goto_0
    if-ge v3, p3, :cond_6

    .line 125
    .line 126
    .line 127
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    instance-of v6, v5, Ljava/lang/Double;

    .line 135
    .line 136
    if-eqz v6, :cond_5

    .line 137
    .line 138
    instance-of v6, v4, Ljava/lang/Double;

    .line 139
    .line 140
    if-eqz v6, :cond_5

    .line 141
    .line 142
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTimesUs:[J

    .line 143
    .line 144
    check-cast v5, Ljava/lang/Double;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 148
    move-result-wide v7

    .line 149
    mul-double/2addr v7, v1

    .line 150
    double-to-long v7, v7

    .line 151
    .line 152
    aput-wide v7, v6, v3

    .line 153
    .line 154
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTagPositions:[J

    .line 155
    .line 156
    check-cast v4, Ljava/lang/Double;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    .line 160
    move-result-wide v6

    .line 161
    .line 162
    aput-wide v6, v5, v3

    .line 163
    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 165
    goto :goto_0

    .line 166
    .line 167
    :cond_5
    new-array p1, v0, [J

    .line 168
    .line 169
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTimesUs:[J

    .line 170
    .line 171
    new-array p1, v0, [J

    .line 172
    .line 173
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTagPositions:[J

    .line 174
    :cond_6
    return v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->durationUs:J

    return-wide v0
.end method

.method public e()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTagPositions:[J

    return-object v0
.end method

.method public f()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/d;->keyFrameTimesUs:[J

    return-object v0
.end method
