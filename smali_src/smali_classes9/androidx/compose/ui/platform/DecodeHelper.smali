.class public final Landroidx/compose/ui/platform/DecodeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final parcel:Landroid/os/Parcel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "string"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "obtain()"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 24
    move-result-object p1

    .line 25
    array-length v2, p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    return-void
.end method

.method private final a()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final b()F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->e()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->c(F)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private final c()B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final e()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final i()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final j()Landroidx/compose/ui/graphics/Shadow;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Landroidx/compose/ui/graphics/Shadow;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DecodeHelper;->d()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->e()F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->e()F

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 18
    move-result-wide v3

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->e()F

    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v0, v7

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/k;)V

    .line 28
    return-object v7
.end method

.method private final l()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final m()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->i()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->b()Landroidx/compose/ui/text/style/TextDecoration;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextDecoration;->e()I

    .line 14
    move-result v2

    .line 15
    and-int/2addr v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->d()Landroidx/compose/ui/text/style/TextDecoration;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextDecoration;->e()I

    .line 30
    move-result v5

    .line 31
    and-int/2addr v0, v5

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    move v0, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v3

    .line 37
    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x2

    .line 42
    .line 43
    new-array v0, v0, [Landroidx/compose/ui/text/style/TextDecoration;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->b()Landroidx/compose/ui/text/style/TextDecoration;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    aput-object v2, v0, v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->d()Landroidx/compose/ui/text/style/TextDecoration;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    aput-object v2, v0, v4

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->a(Ljava/util/List;)Landroidx/compose/ui/text/style/TextDecoration;

    .line 63
    move-result-object v0

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    if-eqz v2, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->b()Landroidx/compose/ui/text/style/TextDecoration;

    .line 70
    move-result-object v0

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_3
    if-eqz v0, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->d()Landroidx/compose/ui/text/style/TextDecoration;

    .line 77
    move-result-object v0

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->c()Landroidx/compose/ui/text/style/TextDecoration;

    .line 82
    move-result-object v0

    .line 83
    :goto_2
    return-object v0
.end method

.method private final n()Landroidx/compose/ui/text/style/TextGeometricTransform;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->e()F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->e()F

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 14
    return-object v0
.end method

.method private final p()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method


# virtual methods
.method public final d()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->p()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final f()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->c()B

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 29
    move-result v0

    .line 30
    :goto_0
    return v0
.end method

.method public final g()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->c()B

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->b()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x3

    .line 25
    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->c()I

    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, 0x2

    .line 35
    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->d()I

    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->b()I

    .line 49
    move-result v0

    .line 50
    :goto_0
    return v0
.end method

.method public final h()Landroidx/compose/ui/text/font/FontWeight;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/text/font/FontWeight;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->i()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 10
    return-object v0
.end method

.method public final k()Landroidx/compose/ui/text/SpanStyle;
    .locals 22
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v15, Landroidx/compose/ui/platform/MutableSpanStyle;

    .line 3
    move-object v0, v15

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    .line 14
    const-wide/16 v10, 0x0

    .line 15
    const/4 v12, 0x0

    .line 16
    const/4 v13, 0x0

    .line 17
    const/4 v14, 0x0

    .line 18
    .line 19
    const-wide/16 v16, 0x0

    .line 20
    .line 21
    move-object/from16 v21, v15

    .line 22
    .line 23
    move-wide/from16 v15, v16

    .line 24
    .line 25
    const/16 v17, 0x0

    .line 26
    .line 27
    const/16 v18, 0x0

    .line 28
    .line 29
    const/16 v19, 0x3fff

    .line 30
    .line 31
    const/16 v20, 0x0

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v0 .. v20}, Landroidx/compose/ui/platform/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/k;)V

    .line 35
    .line 36
    move-object/from16 v0, p0

    .line 37
    .line 38
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/platform/DecodeHelper;->parcel:Landroid/os/Parcel;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    .line 45
    if-le v1, v2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->c()B

    .line 49
    move-result v1

    .line 50
    .line 51
    const/16 v3, 0x8

    .line 52
    .line 53
    if-ne v1, v2, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 57
    move-result v1

    .line 58
    .line 59
    if-lt v1, v3, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->d()J

    .line 63
    move-result-wide v1

    .line 64
    .line 65
    move-object/from16 v4, v21

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->c(J)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_0
    move-object/from16 v4, v21

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_1
    move-object/from16 v4, v21

    .line 76
    const/4 v5, 0x2

    .line 77
    const/4 v6, 0x5

    .line 78
    .line 79
    if-ne v1, v5, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 83
    move-result v1

    .line 84
    .line 85
    if-lt v1, v6, :cond_d

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->o()J

    .line 89
    move-result-wide v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->e(J)V

    .line 93
    .line 94
    :cond_2
    :goto_1
    move-object/from16 v21, v4

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const/4 v5, 0x3

    .line 97
    const/4 v7, 0x4

    .line 98
    .line 99
    if-ne v1, v5, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 103
    move-result v1

    .line 104
    .line 105
    if-lt v1, v7, :cond_d

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->h()Landroidx/compose/ui/text/font/FontWeight;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->h(Landroidx/compose/ui/text/font/FontWeight;)V

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :cond_4
    if-ne v1, v7, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 119
    move-result v1

    .line 120
    .line 121
    if-lt v1, v2, :cond_d

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->f()I

    .line 125
    move-result v1

    .line 126
    .line 127
    .line 128
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->c(I)Landroidx/compose/ui/text/font/FontStyle;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->f(Landroidx/compose/ui/text/font/FontStyle;)V

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_5
    if-ne v1, v6, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 139
    move-result v1

    .line 140
    .line 141
    if-lt v1, v2, :cond_d

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->g()I

    .line 145
    move-result v1

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontSynthesis;->e(I)Landroidx/compose/ui/text/font/FontSynthesis;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->g(Landroidx/compose/ui/text/font/FontSynthesis;)V

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    const/4 v2, 0x6

    .line 155
    .line 156
    if-ne v1, v2, :cond_7

    .line 157
    .line 158
    .line 159
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->l()Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->d(Ljava/lang/String;)V

    .line 164
    goto :goto_1

    .line 165
    :cond_7
    const/4 v2, 0x7

    .line 166
    .line 167
    if-ne v1, v2, :cond_8

    .line 168
    .line 169
    .line 170
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 171
    move-result v1

    .line 172
    .line 173
    if-lt v1, v6, :cond_d

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->o()J

    .line 177
    move-result-wide v1

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->i(J)V

    .line 181
    goto :goto_1

    .line 182
    .line 183
    :cond_8
    if-ne v1, v3, :cond_9

    .line 184
    .line 185
    .line 186
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 187
    move-result v1

    .line 188
    .line 189
    if-lt v1, v7, :cond_d

    .line 190
    .line 191
    .line 192
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->b()F

    .line 193
    move-result v1

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Landroidx/compose/ui/text/style/BaselineShift;->b(F)Landroidx/compose/ui/text/style/BaselineShift;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->b(Landroidx/compose/ui/text/style/BaselineShift;)V

    .line 201
    goto :goto_1

    .line 202
    .line 203
    :cond_9
    const/16 v2, 0x9

    .line 204
    .line 205
    if-ne v1, v2, :cond_a

    .line 206
    .line 207
    .line 208
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 209
    move-result v1

    .line 210
    .line 211
    if-lt v1, v3, :cond_d

    .line 212
    .line 213
    .line 214
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->n()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 215
    move-result-object v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->l(Landroidx/compose/ui/text/style/TextGeometricTransform;)V

    .line 219
    goto :goto_1

    .line 220
    .line 221
    :cond_a
    const/16 v2, 0xa

    .line 222
    .line 223
    if-ne v1, v2, :cond_b

    .line 224
    .line 225
    .line 226
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 227
    move-result v1

    .line 228
    .line 229
    if-lt v1, v3, :cond_d

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->d()J

    .line 233
    move-result-wide v1

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/MutableSpanStyle;->a(J)V

    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :cond_b
    const/16 v2, 0xb

    .line 241
    .line 242
    if-ne v1, v2, :cond_c

    .line 243
    .line 244
    .line 245
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 246
    move-result v1

    .line 247
    .line 248
    if-lt v1, v7, :cond_d

    .line 249
    .line 250
    .line 251
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->m()Landroidx/compose/ui/text/style/TextDecoration;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->k(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :cond_c
    const/16 v2, 0xc

    .line 260
    .line 261
    if-ne v1, v2, :cond_2

    .line 262
    .line 263
    .line 264
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->a()I

    .line 265
    move-result v1

    .line 266
    .line 267
    const/16 v2, 0x14

    .line 268
    .line 269
    if-lt v1, v2, :cond_d

    .line 270
    .line 271
    .line 272
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/DecodeHelper;->j()Landroidx/compose/ui/graphics/Shadow;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/MutableSpanStyle;->j(Landroidx/compose/ui/graphics/Shadow;)V

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    .line 281
    :cond_d
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/platform/MutableSpanStyle;->m()Landroidx/compose/ui/text/SpanStyle;

    .line 282
    move-result-object v1

    .line 283
    return-object v1
.end method

.method public final o()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->c()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 13
    move-result-wide v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->c()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    :goto_0
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->c()J

    .line 36
    move-result-wide v2

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->a()J

    .line 48
    move-result-wide v0

    .line 49
    return-wide v0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/DecodeHelper;->e()F

    .line 53
    move-result v2

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->a(FJ)J

    .line 57
    move-result-wide v0

    .line 58
    return-wide v0
.end method
