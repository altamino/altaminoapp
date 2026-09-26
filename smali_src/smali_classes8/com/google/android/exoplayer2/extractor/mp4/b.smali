.class final Lcom/google/android/exoplayer2/extractor/mp4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/b$f;,
        Lcom/google/android/exoplayer2/extractor/mp4/b$e;,
        Lcom/google/android/exoplayer2/extractor/mp4/b$c;,
        Lcom/google/android/exoplayer2/extractor/mp4/b$b;,
        Lcom/google/android/exoplayer2/extractor/mp4/b$d;,
        Lcom/google/android/exoplayer2/extractor/mp4/b$g;,
        Lcom/google/android/exoplayer2/extractor/mp4/b$a;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "OpusHead"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->h0(Ljava/lang/String;)[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/b;->opusMagic:[B

    .line 9
    return-void
.end method

.method public static A(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/x;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/g;)Ljava/util/List;
    .locals 11
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$a;",
            "Lcom/google/android/exoplayer2/extractor/x;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/g<",
            "Lcom/google/android/exoplayer2/extractor/mp4/o;",
            "Lcom/google/android/exoplayer2/extractor/mp4/o;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/r;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->containerChildren:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    move-result v3

    .line 14
    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->containerChildren:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 24
    .line 25
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/a;->type:I

    .line 26
    .line 27
    .line 28
    const v5, 0x7472616b

    .line 29
    .line 30
    if-eq v4, v5, :cond_0

    .line 31
    move-object v6, p1

    .line 32
    .line 33
    move-object/from16 v5, p7

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    const v4, 0x6d766864

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    move-object v5, v4

    .line 47
    .line 48
    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 49
    move-object v4, v3

    .line 50
    move-wide v6, p2

    .line 51
    move-object v8, p4

    .line 52
    .line 53
    move/from16 v9, p5

    .line 54
    .line 55
    move/from16 v10, p6

    .line 56
    .line 57
    .line 58
    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/b;->z(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/mp4/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    move-object/from16 v5, p7

    .line 62
    .line 63
    .line 64
    invoke-interface {v5, v4}, Lcom/google/common/base/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 68
    .line 69
    if-nez v4, :cond_1

    .line 70
    move-object v6, p1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_1
    const v6, 0x6d646961

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 85
    .line 86
    .line 87
    const v6, 0x6d696e66

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 98
    .line 99
    .line 100
    const v6, 0x7374626c

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 111
    move-object v6, p1

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/b;->v(Lcom/google/android/exoplayer2/extractor/mp4/o;Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/x;)Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-object v1
.end method

.method public static B(Lcom/google/android/exoplayer2/extractor/mp4/a$b;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$b;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 8
    const/4 v1, 0x0

    .line 9
    move-object v2, v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 13
    move-result v3

    .line 14
    .line 15
    if-lt v3, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 23
    move-result v4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 27
    move-result v5

    .line 28
    .line 29
    .line 30
    const v6, 0x6d657461

    .line 31
    .line 32
    if-ne v5, v6, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 36
    .line 37
    add-int v1, v3, v4

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/b;->C(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_0
    const v6, 0x736d7461

    .line 46
    .line 47
    if-ne v5, v6, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 51
    .line 52
    add-int v2, v3, v4

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->u(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 56
    move-result-object v2

    .line 57
    :cond_1
    :goto_1
    add-int/2addr v3, v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method private static C(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->e(Lcom/google/android/exoplayer2/util/c0;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-ge v0, p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    const v3, 0x696c7374

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 35
    add-int/2addr v0, v1

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->l(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/2addr v0, v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private static D(Lcom/google/android/exoplayer2/util/c0;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/b$d;I)V
    .locals 34
    .param p6    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x10

    .line 1
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    const/16 v5, 0x10

    .line 2
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    move-result v6

    const/16 v7, 0x32

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->s(Lcom/google/android/exoplayer2/util/c0;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 8
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/p;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/p;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 10
    :goto_0
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/p;

    aput-object v8, v11, p8

    .line 11
    :cond_1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    :cond_2
    const v8, 0x6d317620

    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_2
    sub-int v9, v7, v1

    if-ge v9, v2, :cond_2a

    .line 12
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    move-result v9

    move-object/from16 p8, v11

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v11

    if-nez v11, :cond_5

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    move-result v23

    move-object/from16 v24, v3

    sub-int v3, v23, v1

    if-ne v3, v2, :cond_6

    :goto_3
    move/from16 v33, v6

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_5
    move-object/from16 v24, v3

    :cond_6
    if-lez v11, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    const-string v1, "childAtomSize must be positive"

    .line 16
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v1

    const v3, 0x61766343

    if-ne v1, v3, :cond_a

    const/4 v1, 0x0

    if-nez v8, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 18
    :goto_5
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x8

    .line 19
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 20
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/a;

    move-result-object v1

    .line 21
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/a;->initializationData:Ljava/util/List;

    .line 22
    iget v3, v1, Lcom/google/android/exoplayer2/video/a;->nalUnitLengthFieldLength:I

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->nalUnitLengthFieldLength:I

    if-nez v22, :cond_9

    .line 23
    iget v14, v1, Lcom/google/android/exoplayer2/video/a;->pixelWidthHeightRatio:F

    .line 24
    :cond_9
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/a;->codecs:Ljava/lang/String;

    const-string v1, "video/avc"

    :goto_6
    move-object v8, v1

    :goto_7
    move/from16 v33, v6

    move/from16 v25, v10

    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_a
    const v3, 0x68766343

    if-ne v1, v3, :cond_d

    const/4 v1, 0x0

    if-nez v8, :cond_b

    const/4 v3, 0x1

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    .line 25
    :goto_9
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x8

    .line 26
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/f;->a(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/f;

    move-result-object v1

    .line 28
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/f;->initializationData:Ljava/util/List;

    .line 29
    iget v3, v1, Lcom/google/android/exoplayer2/video/f;->nalUnitLengthFieldLength:I

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->nalUnitLengthFieldLength:I

    if-nez v22, :cond_c

    .line 30
    iget v14, v1, Lcom/google/android/exoplayer2/video/f;->pixelWidthHeightRatio:F

    .line 31
    :cond_c
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/f;->codecs:Ljava/lang/String;

    const-string v1, "video/hevc"

    goto :goto_6

    :cond_d
    const v3, 0x64766343

    if-eq v1, v3, :cond_e

    const v3, 0x64767643

    if-ne v1, v3, :cond_f

    :cond_e
    move/from16 v33, v6

    move/from16 v25, v10

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_f
    const v3, 0x76706343

    if-ne v1, v3, :cond_12

    const/4 v1, 0x0

    if-nez v8, :cond_10

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    .line 32
    :goto_a
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    const v1, 0x76703038

    if-ne v10, v1, :cond_11

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_6

    :cond_11
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_6

    :cond_12
    const v3, 0x61763143

    if-ne v1, v3, :cond_14

    const/4 v1, 0x0

    if-nez v8, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    .line 33
    :goto_b
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    const-string v1, "video/av01"

    goto :goto_6

    :cond_14
    const v3, 0x636c6c69

    if-ne v1, v3, :cond_16

    if-nez v20, :cond_15

    .line 34
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_15
    move-object/from16 v1, v20

    const/16 v3, 0x15

    .line 35
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v1

    goto/16 :goto_7

    :cond_16
    const v3, 0x6d646376

    if-ne v1, v3, :cond_18

    if-nez v20, :cond_17

    .line 38
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_17
    move-object/from16 v1, v20

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v3

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v9

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v2

    move/from16 v25, v10

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v10

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v4

    move-object/from16 v26, v15

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v15

    move-object/from16 v27, v12

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v12

    move/from16 v28, v14

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    move-result v14

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    move-result-wide v29

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    move-result-wide v31

    move/from16 v33, v6

    const/4 v6, 0x1

    .line 49
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 58
    div-long v9, v29, v2

    long-to-int v4, v9

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 59
    div-long v2, v31, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v1

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    move/from16 v14, v28

    goto/16 :goto_8

    :cond_18
    move/from16 v33, v6

    move/from16 v25, v10

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_1b

    const/4 v2, 0x0

    if-nez v8, :cond_19

    const/4 v3, 0x1

    goto :goto_c

    :cond_19
    const/4 v3, 0x0

    .line 60
    :goto_c
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    move-object/from16 v8, p8

    :cond_1a
    :goto_d
    move-object/from16 v15, v26

    :goto_e
    move-object/from16 v12, v27

    :goto_f
    move/from16 v14, v28

    goto/16 :goto_16

    :cond_1b
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_1e

    if-nez v8, :cond_1c

    const/4 v3, 0x1

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    .line 61
    :goto_10
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 62
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/b;->i(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/extractor/mp4/b$b;

    move-result-object v21

    .line 63
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->a(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->b(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)[B

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 65
    invoke-static {v3}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v15

    goto :goto_11

    :cond_1d
    move-object/from16 v15, v26

    :goto_11
    move-object v8, v1

    goto :goto_e

    :cond_1e
    const v3, 0x70617370

    if-ne v1, v3, :cond_1f

    .line 66
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/b;->q(Lcom/google/android/exoplayer2/util/c0;I)F

    move-result v1

    move v14, v1

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    const/16 v22, 0x1

    goto/16 :goto_16

    :cond_1f
    const v3, 0x73763364

    if-ne v1, v3, :cond_20

    .line 67
    invoke-static {v0, v9, v11}, Lcom/google/android/exoplayer2/extractor/mp4/b;->r(Lcom/google/android/exoplayer2/util/c0;II)[B

    move-result-object v12

    move-object/from16 v15, v26

    goto :goto_f

    :cond_20
    const v3, 0x73743364

    const/4 v4, 0x2

    if-ne v1, v3, :cond_25

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    move-result v1

    const/4 v3, 0x3

    .line 69
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    if-nez v1, :cond_1a

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v6, 0x1

    if-eq v1, v6, :cond_23

    if-eq v1, v4, :cond_22

    if-eq v1, v3, :cond_21

    goto :goto_d

    :cond_21
    move/from16 v16, v3

    goto :goto_d

    :cond_22
    move/from16 v16, v4

    goto :goto_d

    :cond_23
    move/from16 v16, v6

    goto :goto_d

    :cond_24
    const/16 v16, 0x0

    goto :goto_d

    :cond_25
    const/4 v6, 0x1

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_1a

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v1

    const v3, 0x6e636c78

    if-eq v1, v3, :cond_27

    const v3, 0x6e636c63

    if-ne v1, v3, :cond_26

    goto :goto_12

    .line 72
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported color type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AtomParsers"

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 73
    :cond_27
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    move-result v1

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    move-result v3

    .line 75
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    const/16 v9, 0x13

    if-ne v11, v9, :cond_28

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_28

    move v9, v6

    goto :goto_13

    :cond_28
    const/4 v9, 0x0

    .line 77
    :goto_13
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->b(I)I

    move-result v17

    if-eqz v9, :cond_29

    move/from16 v18, v6

    goto :goto_14

    :cond_29
    move/from16 v18, v4

    .line 78
    :goto_14
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/c;->c(I)I

    move-result v19

    goto/16 :goto_d

    .line 79
    :goto_15
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/d;->a(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/video/d;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 80
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/d;->codecs:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    goto/16 :goto_d

    :goto_16
    add-int/2addr v7, v11

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move-object/from16 v11, p8

    move-object/from16 v3, v24

    move/from16 v10, v25

    move/from16 v6, v33

    goto/16 :goto_2

    :cond_2a
    move-object/from16 v24, v3

    goto/16 :goto_3

    :goto_17
    if-nez v8, :cond_2b

    return-void

    .line 81
    :cond_2b
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    move/from16 v1, p4

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/a2$b;->j0(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move/from16 v1, v33

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->Q(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move/from16 v14, v28

    .line 87
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/a2$b;->a0(F)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move/from16 v1, p5

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->d0(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move-object/from16 v9, v27

    .line 89
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/a2$b;->b0([B)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move/from16 v12, v16

    .line 90
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/a2$b;->h0(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move-object/from16 v9, v26

    .line 91
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move-object/from16 v3, v24

    .line 92
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move/from16 v12, v17

    const/4 v1, -0x1

    move/from16 v3, v18

    move/from16 v4, v19

    if-ne v12, v1, :cond_2c

    if-ne v3, v1, :cond_2c

    if-ne v4, v1, :cond_2c

    if-eqz v20, :cond_2e

    .line 93
    :cond_2c
    new-instance v1, Lcom/google/android/exoplayer2/video/c;

    if-eqz v20, :cond_2d

    .line 94
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_18

    :cond_2d
    move-object v9, v2

    :goto_18
    invoke-direct {v1, v12, v3, v4, v9}, Lcom/google/android/exoplayer2/video/c;-><init>(III[B)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/a2$b;

    :cond_2e
    if-eqz v21, :cond_2f

    .line 96
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->d(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/e;->k(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->G(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 97
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->c(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/e;->k(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->Z(I)Lcom/google/android/exoplayer2/a2$b;

    .line 98
    :cond_2f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    move-result-object v0

    move-object/from16 v1, p7

    iput-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    return-void
.end method

.method private static a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x19

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static b([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/o0;->p(III)I

    .line 9
    move-result v4

    .line 10
    array-length v5, p0

    .line 11
    sub-int/2addr v5, v2

    .line 12
    .line 13
    .line 14
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/o0;->p(III)I

    .line 15
    move-result v0

    .line 16
    .line 17
    aget-wide v5, p0, v3

    .line 18
    .line 19
    cmp-long v2, v5, p3

    .line 20
    .line 21
    if-gtz v2, :cond_0

    .line 22
    .line 23
    aget-wide v4, p0, v4

    .line 24
    .line 25
    cmp-long p3, p3, v4

    .line 26
    .line 27
    if-gez p3, :cond_0

    .line 28
    .line 29
    aget-wide p3, p0, v0

    .line 30
    .line 31
    cmp-long p0, p3, p5

    .line 32
    .line 33
    if-gez p0, :cond_0

    .line 34
    .line 35
    cmp-long p0, p5, p1

    .line 36
    .line 37
    if-gtz p0, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    return v1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/c0;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-lt v0, p2, :cond_0

    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 16
    .line 17
    :goto_1
    sub-int v3, v0, p2

    .line 18
    .line 19
    if-ge v3, p3, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-lez v3, :cond_1

    .line 29
    move v4, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move v4, v1

    .line 32
    .line 33
    :goto_2
    const-string v5, "childAtomSize must be positive"

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 40
    move-result v4

    .line 41
    .line 42
    if-ne v4, p1, :cond_2

    .line 43
    return v0

    .line 44
    :cond_2
    add-int/2addr v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method private static d(I)I
    .locals 1

    .line 1
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static e(Lcom/google/android/exoplayer2/util/c0;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    const v2, 0x68646c72    # 4.3148E24f

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x4

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 23
    return-void
.end method

.method private static f(Lcom/google/android/exoplayer2/util/c0;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/b$d;I)V
    .locals 22
    .param p7    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    .line 1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    move-result v9

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    .line 4
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x10

    if-eqz v9, :cond_3

    if-ne v9, v12, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v11, :cond_2

    .line 5
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->l()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v7, v13

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v9

    const/16 v13, 0x14

    .line 8
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    move-result v14

    .line 10
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->E()I

    move-result v7

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v15

    if-ne v9, v12, :cond_4

    .line 14
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    :cond_4
    move v9, v14

    .line 15
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    move-result v13

    const v14, 0x656e6361

    move/from16 v11, p1

    if-ne v11, v14, :cond_7

    .line 16
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->s(Lcom/google/android/exoplayer2/util/c0;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 17
    iget-object v11, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    .line 18
    :cond_5
    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/p;

    iget-object v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/p;->schemeType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/drm/DrmInitData;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v5

    .line 19
    :goto_3
    iget-object v12, v6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/p;

    aput-object v14, v12, p9

    .line 20
    :cond_6
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    :cond_7
    const v12, 0x61632d33

    const v14, 0x616c6163

    if-ne v11, v12, :cond_8

    const-string v11, "audio/ac3"

    :goto_4
    move-object/from16 v19, v11

    const/4 v11, -0x1

    goto/16 :goto_8

    :cond_8
    const v12, 0x65632d33

    if-ne v11, v12, :cond_9

    const-string v11, "audio/eac3"

    goto :goto_4

    :cond_9
    const v12, 0x61632d34

    if-ne v11, v12, :cond_a

    const-string v11, "audio/ac4"

    goto :goto_4

    :cond_a
    const v12, 0x64747363

    if-ne v11, v12, :cond_b

    const-string v11, "audio/vnd.dts"

    goto :goto_4

    :cond_b
    const v12, 0x64747368

    if-eq v11, v12, :cond_1e

    const v12, 0x6474736c

    if-ne v11, v12, :cond_c

    goto/16 :goto_7

    :cond_c
    const v12, 0x64747365

    if-ne v11, v12, :cond_d

    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_4

    :cond_d
    const v12, 0x64747378

    if-ne v11, v12, :cond_e

    const-string v11, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_4

    :cond_e
    const v12, 0x73616d72

    if-ne v11, v12, :cond_f

    const-string v11, "audio/3gpp"

    goto :goto_4

    :cond_f
    const v12, 0x73617762

    if-ne v11, v12, :cond_10

    const-string v11, "audio/amr-wb"

    goto :goto_4

    :cond_10
    const v12, 0x6c70636d

    const-string v19, "audio/raw"

    if-eq v11, v12, :cond_1d

    const v12, 0x736f7774

    if-ne v11, v12, :cond_11

    goto :goto_6

    :cond_11
    const v12, 0x74776f73

    if-ne v11, v12, :cond_12

    const/high16 v11, 0x10000000

    goto :goto_8

    :cond_12
    const v12, 0x2e6d7032

    if-eq v11, v12, :cond_1c

    const v12, 0x2e6d7033

    if-ne v11, v12, :cond_13

    goto :goto_5

    :cond_13
    const v12, 0x6d686131

    if-ne v11, v12, :cond_14

    const-string v11, "audio/mha1"

    goto :goto_4

    :cond_14
    const v12, 0x6d686d31

    if-ne v11, v12, :cond_15

    const-string v11, "audio/mhm1"

    goto :goto_4

    :cond_15
    if-ne v11, v14, :cond_16

    const-string v11, "audio/alac"

    goto :goto_4

    :cond_16
    const v12, 0x616c6177

    if-ne v11, v12, :cond_17

    const-string v11, "audio/g711-alaw"

    goto/16 :goto_4

    :cond_17
    const v12, 0x756c6177

    if-ne v11, v12, :cond_18

    const-string v11, "audio/g711-mlaw"

    goto/16 :goto_4

    :cond_18
    const v12, 0x4f707573

    if-ne v11, v12, :cond_19

    const-string v11, "audio/opus"

    goto/16 :goto_4

    :cond_19
    const v12, 0x664c6143

    if-ne v11, v12, :cond_1a

    const-string v11, "audio/flac"

    goto/16 :goto_4

    :cond_1a
    const v12, 0x6d6c7061

    if-ne v11, v12, :cond_1b

    const-string v11, "audio/true-hd"

    goto/16 :goto_4

    :cond_1b
    const/4 v11, -0x1

    const/16 v19, 0x0

    goto :goto_8

    :cond_1c
    :goto_5
    const-string v11, "audio/mpeg"

    goto/16 :goto_4

    :cond_1d
    :goto_6
    const/4 v11, 0x2

    goto :goto_8

    :cond_1e
    :goto_7
    const-string v11, "audio/vnd.dts.hd"

    goto/16 :goto_4

    :goto_8
    move-object/from16 v12, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_9
    sub-int v10, v13, v1

    if-ge v10, v2, :cond_2f

    .line 21
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v10

    if-lez v10, :cond_1f

    const/4 v14, 0x1

    goto :goto_a

    :cond_1f
    const/4 v14, 0x0

    :goto_a
    const-string v8, "childAtomSize must be positive"

    .line 23
    invoke-static {v14, v8}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v8

    const v14, 0x6d686143

    if-ne v8, v14, :cond_20

    add-int/lit8 v8, v10, -0xd

    .line 25
    new-array v14, v8, [B

    add-int/lit8 v1, v13, 0xd

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v14, v1, v8}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 28
    invoke-static {v14}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v21

    :goto_b
    const/4 v8, -0x1

    :goto_c
    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    :goto_d
    const v18, 0x616c6163

    goto/16 :goto_13

    :cond_20
    const v1, 0x65736473

    if-eq v8, v1, :cond_21

    if-eqz p6, :cond_22

    const v14, 0x77617665

    if-ne v8, v14, :cond_22

    :cond_21
    const/4 v2, 0x4

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    const v18, 0x616c6163

    goto/16 :goto_10

    :cond_22
    const v1, 0x64616333

    if-ne v8, v1, :cond_23

    add-int/lit8 v1, v13, 0x8

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 30
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/b;->c(Lcom/google/android/exoplayer2/util/c0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    :goto_e
    const/4 v2, 0x4

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    goto/16 :goto_f

    :cond_23
    const v1, 0x64656333

    if-ne v8, v1, :cond_24

    add-int/lit8 v1, v13, 0x8

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 32
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/b;->g(Lcom/google/android/exoplayer2/util/c0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    goto :goto_e

    :cond_24
    const v1, 0x64616334

    if-ne v8, v1, :cond_25

    add-int/lit8 v1, v13, 0x8

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 34
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/c;->b(Lcom/google/android/exoplayer2/util/c0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    goto :goto_e

    :cond_25
    const v1, 0x646d6c70

    if-ne v8, v1, :cond_27

    if-lez v15, :cond_26

    move v7, v15

    const/4 v8, -0x1

    const/4 v9, 0x2

    goto :goto_c

    .line 35
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    move-result-object v0

    throw v0

    :cond_27
    const/4 v14, 0x0

    const v1, 0x64647473

    if-ne v8, v1, :cond_28

    .line 36
    new-instance v1, Lcom/google/android/exoplayer2/a2$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 37
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    goto :goto_e

    :cond_28
    const v1, 0x644f7073

    if-ne v8, v1, :cond_29

    add-int/lit8 v1, v10, -0x8

    sget-object v8, Lcom/google/android/exoplayer2/extractor/mp4/b;->opusMagic:[B

    .line 44
    array-length v14, v8

    add-int/2addr v14, v1

    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    add-int/lit8 v2, v13, 0x8

    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 46
    array-length v2, v8

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 47
    invoke-static {v14}, Lcom/google/android/exoplayer2/audio/i0;->a([B)Ljava/util/List;

    move-result-object v21

    goto/16 :goto_b

    :cond_29
    const v1, 0x64664c61

    if-ne v8, v1, :cond_2a

    add-int/lit8 v1, v10, -0xc

    add-int/lit8 v2, v10, -0x8

    .line 48
    new-array v2, v2, [B

    const/16 v8, 0x66

    const/4 v14, 0x0

    .line 49
    aput-byte v8, v2, v14

    const/16 v8, 0x4c

    const/4 v14, 0x1

    .line 50
    aput-byte v8, v2, v14

    const/16 v8, 0x61

    const/16 v17, 0x2

    .line 51
    aput-byte v8, v2, v17

    const/4 v8, 0x3

    const/16 v18, 0x43

    .line 52
    aput-byte v18, v2, v8

    add-int/lit8 v8, v13, 0xc

    .line 53
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    const/4 v8, 0x4

    .line 54
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 55
    invoke-static {v2}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v21

    const/4 v8, -0x1

    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_2a
    const v1, 0x616c6163

    const/4 v2, 0x4

    const/4 v14, 0x1

    const/16 v17, 0x2

    if-ne v8, v1, :cond_2b

    add-int/lit8 v7, v10, -0xc

    .line 56
    new-array v8, v7, [B

    add-int/lit8 v9, v13, 0xc

    .line 57
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    const/4 v9, 0x0

    .line 58
    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 59
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/e;->e([B)Landroid/util/Pair;

    move-result-object v7

    .line 60
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 61
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 62
    invoke-static {v8}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v21

    move/from16 v16, v9

    const/4 v8, -0x1

    const v18, 0x616c6163

    move v9, v7

    move v7, v1

    goto :goto_13

    :cond_2b
    const/16 v16, 0x0

    :goto_f
    const/4 v8, -0x1

    goto/16 :goto_d

    :goto_10
    if-ne v8, v1, :cond_2c

    move v1, v13

    :goto_11
    const/4 v8, -0x1

    goto :goto_12

    .line 63
    :cond_2c
    invoke-static {v0, v1, v13, v10}, Lcom/google/android/exoplayer2/extractor/mp4/b;->c(Lcom/google/android/exoplayer2/util/c0;III)I

    move-result v1

    goto :goto_11

    :goto_12
    if-eq v1, v8, :cond_2e

    .line 64
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/b;->i(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/extractor/mp4/b$b;

    move-result-object v19

    .line 65
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->a(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)Ljava/lang/String;

    move-result-object v12

    .line 66
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->b(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)[B

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string v2, "audio/mp4a-latm"

    .line 67
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 68
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/a;->e([B)Lcom/google/android/exoplayer2/audio/a$b;

    move-result-object v2

    .line 69
    iget v7, v2, Lcom/google/android/exoplayer2/audio/a$b;->sampleRateHz:I

    .line 70
    iget v9, v2, Lcom/google/android/exoplayer2/audio/a$b;->channelCount:I

    .line 71
    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/a$b;->codecs:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 72
    :cond_2d
    invoke-static {v1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v21

    :cond_2e
    :goto_13
    add-int/2addr v13, v10

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v14, v18

    goto/16 :goto_9

    .line 73
    :cond_2f
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    if-nez v0, :cond_31

    if-eqz v12, :cond_31

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 75
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move-object/from16 v1, v20

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/a2$b;->Y(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    move-object/from16 v1, v21

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v0

    if-eqz v19, :cond_30

    .line 84
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->d(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/e;->k(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->G(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v1

    .line 85
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;->c(Lcom/google/android/exoplayer2/extractor/mp4/b$b;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/e;->k(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->Z(I)Lcom/google/android/exoplayer2/a2$b;

    .line 86
    :cond_30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    :cond_31
    return-void
.end method

.method static g(Lcom/google/android/exoplayer2/util/c0;II)Landroid/util/Pair;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/c0;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/p;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x8

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v1

    .line 7
    move v7, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v6, v4

    .line 10
    .line 11
    :goto_0
    sub-int v8, v0, p1

    .line 12
    .line 13
    if-ge v8, p2, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 20
    move-result v8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 24
    move-result v9

    .line 25
    .line 26
    .line 27
    const v10, 0x66726d61

    .line 28
    .line 29
    if-ne v9, v10, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 33
    move-result v6

    .line 34
    .line 35
    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v6

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_0
    const v10, 0x7363686d

    .line 42
    .line 43
    if-ne v9, v10, :cond_1

    .line 44
    const/4 v4, 0x4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/c0;->A(I)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    const v10, 0x73636869

    .line 56
    .line 57
    if-ne v9, v10, :cond_2

    .line 58
    move v5, v0

    .line 59
    move v7, v8

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_3
    const-string p1, "cenc"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    const-string p1, "cbc1"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    const-string p1, "cens"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    const-string p1, "cbcs"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return-object v3

    .line 96
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 97
    .line 98
    if-eqz v6, :cond_6

    .line 99
    move p2, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move p2, v2

    .line 102
    .line 103
    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 104
    .line 105
    .line 106
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 107
    .line 108
    if-eq v5, v1, :cond_7

    .line 109
    move p2, p1

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move p2, v2

    .line 112
    .line 113
    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 114
    .line 115
    .line 116
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/b;->t(Lcom/google/android/exoplayer2/util/c0;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 120
    move-result-object p0

    .line 121
    .line 122
    if-eqz p0, :cond_8

    .line 123
    move v2, p1

    .line 124
    .line 125
    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 126
    .line 127
    .line 128
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object p0

    .line 133
    .line 134
    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 135
    .line 136
    .line 137
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method private static h(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)Landroid/util/Pair;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x656c7374

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    .line 30
    move-result v1

    .line 31
    .line 32
    new-array v2, v1, [J

    .line 33
    .line 34
    new-array v3, v1, [J

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    :goto_0
    if-ge v4, v1, :cond_4

    .line 38
    const/4 v5, 0x1

    .line 39
    .line 40
    if-ne v0, v5, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->I()J

    .line 44
    move-result-wide v6

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 49
    move-result-wide v6

    .line 50
    .line 51
    :goto_1
    aput-wide v6, v2, v4

    .line 52
    .line 53
    if-ne v0, v5, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->w()J

    .line 57
    move-result-wide v6

    .line 58
    goto :goto_2

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 62
    move-result v6

    .line 63
    int-to-long v6, v6

    .line 64
    .line 65
    :goto_2
    aput-wide v6, v3, v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->z()S

    .line 69
    move-result v6

    .line 70
    .line 71
    if-ne v6, v5, :cond_3

    .line 72
    const/4 v5, 0x2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string v0, "Unsupported media rate."

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method private static i(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/extractor/mp4/b$b;
    .locals 12

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0xc

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->j(Lcom/google/android/exoplayer2/util/c0;)I

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 20
    move-result v1

    .line 21
    .line 22
    and-int/lit16 v2, v1, 0x80

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 28
    .line 29
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 39
    .line 40
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->j(Lcom/google/android/exoplayer2/util/c0;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/x;->f(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    const-string v0, "audio/mpeg"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    const-string v0, "audio/vnd.dts"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    const-string v0, "audio/vnd.dts.hd"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 92
    move-result-wide v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 96
    move-result-wide v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->j(Lcom/google/android/exoplayer2/util/c0;)I

    .line 103
    move-result p1

    .line 104
    .line 105
    new-array v5, p1, [B

    .line 106
    const/4 v6, 0x0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 110
    .line 111
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;

    .line 112
    .line 113
    const-wide/16 v6, 0x0

    .line 114
    .line 115
    cmp-long p1, v3, v6

    .line 116
    .line 117
    const-wide/16 v8, -0x1

    .line 118
    .line 119
    if-lez p1, :cond_4

    .line 120
    move-wide v10, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move-wide v10, v8

    .line 123
    .line 124
    :goto_0
    cmp-long p1, v0, v6

    .line 125
    .line 126
    if-lez p1, :cond_5

    .line 127
    move-wide v6, v0

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move-wide v6, v8

    .line 130
    :goto_1
    move-object v1, p0

    .line 131
    move-object v3, v5

    .line 132
    move-wide v4, v10

    .line 133
    .line 134
    .line 135
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;-><init>(Ljava/lang/String;[BJJ)V

    .line 136
    return-object p0

    .line 137
    .line 138
    :cond_6
    :goto_2
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/b$b;

    .line 139
    const/4 v3, 0x0

    .line 140
    .line 141
    const-wide/16 v4, -0x1

    .line 142
    .line 143
    const-wide/16 v6, -0x1

    .line 144
    move-object v1, p0

    .line 145
    .line 146
    .line 147
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/b$b;-><init>(Ljava/lang/String;[BJJ)V

    .line 148
    return-object p0
.end method

.method private static j(Lcom/google/android/exoplayer2/util/c0;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 4
    move-result v0

    .line 5
    .line 6
    and-int/lit8 v1, v0, 0x7f

    .line 7
    .line 8
    :goto_0
    const/16 v2, 0x80

    .line 9
    and-int/2addr v0, v2

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 15
    move-result v0

    .line 16
    .line 17
    shl-int/lit8 v1, v1, 0x7

    .line 18
    .line 19
    and-int/lit8 v2, v0, 0x7f

    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method private static k(Lcom/google/android/exoplayer2/util/c0;)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static l(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v1, p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/h;->c(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result p0

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 40
    :goto_1
    return-object p0
.end method

.method private static m(Lcom/google/android/exoplayer2/util/c0;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/c0;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const/16 v2, 0x10

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    const/4 v0, 0x4

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->J()I

    .line 36
    move-result p0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v1, ""

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    shr-int/lit8 v1, p0, 0xa

    .line 49
    .line 50
    and-int/lit8 v1, v1, 0x1f

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x60

    .line 53
    int-to-char v1, v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    shr-int/lit8 v1, p0, 0x5

    .line 59
    .line 60
    and-int/lit8 v1, v1, 0x1f

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x60

    .line 63
    int-to-char v1, v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    and-int/lit8 p0, p0, 0x1f

    .line 69
    .line 70
    add-int/lit8 p0, p0, 0x60

    .line 71
    int-to-char p0, p0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method public static n(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x68646c72    # 4.3148E24f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x6b657973

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const v2, 0x696c7374

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    if-eqz p0, :cond_6

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->k(Lcom/google/android/exoplayer2/util/c0;)I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    const v3, 0x6d647461

    .line 38
    .line 39
    if-eq v0, v3, :cond_0

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 44
    .line 45
    const/16 v1, 0xc

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 52
    move-result v1

    .line 53
    .line 54
    new-array v3, v1, [Ljava/lang/String;

    .line 55
    const/4 v4, 0x0

    .line 56
    .line 57
    :goto_0
    const/16 v5, 0x8

    .line 58
    .line 59
    if-ge v4, v1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 63
    move-result v6

    .line 64
    const/4 v7, 0x4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 68
    sub-int/2addr v6, v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/c0;->A(I)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    aput-object v5, v3, v4

    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 91
    move-result v4

    .line 92
    .line 93
    if-le v4, v5, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 97
    move-result v4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 101
    move-result v6

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 105
    move-result v7

    .line 106
    .line 107
    add-int/lit8 v7, v7, -0x1

    .line 108
    .line 109
    if-ltz v7, :cond_2

    .line 110
    .line 111
    if-ge v7, v1, :cond_2

    .line 112
    .line 113
    aget-object v7, v3, v7

    .line 114
    .line 115
    add-int v8, v4, v6

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/h;->f(Lcom/google/android/exoplayer2/util/c0;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    .line 119
    move-result-object v7

    .line 120
    .line 121
    if-eqz v7, :cond_3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    const-string v9, "Skipped metadata with unknown key index: "

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v7

    .line 143
    .line 144
    const-string v8, "AtomParsers"

    .line 145
    .line 146
    .line 147
    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 152
    goto :goto_1

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 156
    move-result p0

    .line 157
    .line 158
    if-eqz p0, :cond_5

    .line 159
    goto :goto_3

    .line 160
    .line 161
    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 162
    .line 163
    .line 164
    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 165
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static o(Lcom/google/android/exoplayer2/util/c0;IIILcom/google/android/exoplayer2/extractor/mp4/b$d;)V
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p2, p2, 0x10

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 6
    .line 7
    .line 8
    const p2, 0x6d657474

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->x()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->x()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/a2$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    iput-object p0, p4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    .line 39
    :cond_0
    return-void
.end method

.method private static p(Lcom/google/android/exoplayer2/util/c0;)J
    .locals 2

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
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const/16 v0, 0x10

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method private static q(Lcom/google/android/exoplayer2/util/c0;I)F
    .locals 0

    .line 1
    .line 2
    add-int/lit8 p1, p1, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    .line 13
    move-result p0

    .line 14
    int-to-float p1, p1

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p1, p0

    .line 17
    return p1
.end method

.method private static r(Lcom/google/android/exoplayer2/util/c0;II)[B
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x8

    .line 3
    .line 4
    :goto_0
    sub-int v1, v0, p1

    .line 5
    .line 6
    if-ge v1, p2, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    const v3, 0x70726f6a

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 26
    move-result-object p0

    .line 27
    add-int/2addr v1, v0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method private static s(Lcom/google/android/exoplayer2/util/c0;II)Landroid/util/Pair;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/c0;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/p;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 4
    move-result v0

    .line 5
    .line 6
    :goto_0
    sub-int v1, v0, p1

    .line 7
    .line 8
    if-ge v1, p2, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    .line 22
    :goto_1
    const-string v3, "childAtomSize must be positive"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    const v3, 0x73696e66

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/b;->g(Lcom/google/android/exoplayer2/util/c0;II)Landroid/util/Pair;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    return-object v2

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private static t(Lcom/google/android/exoplayer2/util/c0;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/p;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x8

    .line 3
    .line 4
    :goto_0
    sub-int v1, v0, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ge v1, p2, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    const v4, 0x74656e63

    .line 22
    .line 23
    if-ne v3, v4, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 42
    move v8, v0

    .line 43
    move v9, v8

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 48
    move-result p1

    .line 49
    .line 50
    and-int/lit16 v1, p1, 0xf0

    .line 51
    .line 52
    shr-int/lit8 v1, v1, 0x4

    .line 53
    .line 54
    and-int/lit8 p1, p1, 0xf

    .line 55
    move v9, p1

    .line 56
    move v8, v1

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 60
    move-result p1

    .line 61
    .line 62
    if-ne p1, p2, :cond_1

    .line 63
    move v4, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v4, v0

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 69
    move-result v6

    .line 70
    .line 71
    const/16 p1, 0x10

    .line 72
    .line 73
    new-array v7, p1, [B

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 84
    move-result p1

    .line 85
    .line 86
    new-array v2, p1, [B

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 90
    :cond_2
    move-object v10, v2

    .line 91
    .line 92
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 93
    move-object v3, p0

    .line 94
    move-object v5, p3

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/p;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 98
    return-object p0

    .line 99
    :cond_3
    add-int/2addr v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-object v2
.end method

.method private static u(Lcom/google/android/exoplayer2/util/c0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-ge v1, p1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 24
    move-result v4

    .line 25
    .line 26
    .line 27
    const v5, 0x73617574

    .line 28
    .line 29
    if-ne v4, v5, :cond_3

    .line 30
    .line 31
    const/16 p1, 0xe

    .line 32
    .line 33
    if-ge v3, p1, :cond_0

    .line 34
    return-object v2

    .line 35
    :cond_0
    const/4 p1, 0x5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eq p1, v0, :cond_1

    .line 45
    .line 46
    const/16 v1, 0xd

    .line 47
    .line 48
    if-eq p1, v1, :cond_1

    .line 49
    return-object v2

    .line 50
    .line 51
    :cond_1
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    const/high16 p1, 0x43700000    # 240.0f

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_2
    const/high16 p1, 0x42f00000    # 120.0f

    .line 57
    :goto_1
    const/4 v0, 0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 64
    move-result p0

    .line 65
    .line 66
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 67
    .line 68
    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 69
    .line 70
    new-instance v2, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, p1, p0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    .line 74
    const/4 p0, 0x0

    .line 75
    .line 76
    aput-object v2, v0, p0

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 80
    return-object v1

    .line 81
    :cond_3
    add-int/2addr v1, v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    return-object v2
.end method

.method private static v(Lcom/google/android/exoplayer2/extractor/mp4/o;Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/x;)Lcom/google/android/exoplayer2/extractor/mp4/r;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/b$e;

    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    invoke-direct {v5, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/b$e;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/a$b;Lcom/google/android/exoplayer2/a2;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 4
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/b$f;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/b$f;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/a$b;)V

    .line 5
    :goto_0
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/b$c;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/r;

    new-array v2, v6, [J

    new-array v3, v6, [I

    const/4 v4, 0x0

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/r;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/o;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v7, 0x7374636f

    .line 7
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const v7, 0x636f3634

    .line 8
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v6

    .line 9
    :goto_1
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    const v10, 0x73747363

    .line 10
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    const v11, 0x73747473

    .line 11
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    const v12, 0x73747373

    .line 12
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 13
    iget-object v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const v13, 0x63747473

    .line 14
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 16
    :goto_3
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/b$a;

    invoke-direct {v13, v10, v7, v9}, Lcom/google/android/exoplayer2/extractor/mp4/b$a;-><init>(Lcom/google/android/exoplayer2/util/c0;Lcom/google/android/exoplayer2/util/c0;Z)V

    const/16 v7, 0xc

    .line 17
    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 18
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v9

    sub-int/2addr v9, v8

    .line 19
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v10

    .line 20
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v14

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v15

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    const/4 v4, -0x1

    if-eqz v12, :cond_7

    .line 23
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 24
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v7

    if-lez v7, :cond_6

    .line 25
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_6
    move/from16 v16, v4

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    move/from16 v16, v4

    move v7, v6

    .line 26
    :goto_5
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/b$c;->a()I

    move-result v6

    .line 27
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    iget-object v8, v8, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    if-eq v6, v4, :cond_9

    const-string v4, "audio/raw"

    .line 28
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-mlaw"

    .line 29
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-alaw"

    .line 30
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    if-nez v9, :cond_9

    if-nez v15, :cond_9

    if-nez v7, :cond_9

    move/from16 p1, v7

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    move/from16 p1, v7

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    iget v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->length:I

    .line 31
    new-array v4, v0, [J

    .line 32
    new-array v0, v0, [I

    .line 33
    :goto_7
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v13, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->index:I

    iget-wide v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->offset:J

    .line 34
    aput-wide v9, v4, v5

    iget v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->numSamples:I

    .line 35
    aput v9, v0, v5

    goto :goto_7

    :cond_a
    int-to-long v9, v14

    .line 36
    invoke-static {v6, v4, v0, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp4/d;->a(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/d$b;

    move-result-object v0

    .line 37
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->offsets:[J

    .line 38
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->sizes:[I

    .line 39
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->maximumSize:I

    .line 40
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->timestamps:[J

    .line 41
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->flags:[I

    .line 42
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->duration:J

    move-object v14, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v13, v10

    move-wide v15, v11

    move-object v12, v9

    goto/16 :goto_14

    .line 43
    :cond_b
    new-array v4, v3, [J

    .line 44
    new-array v6, v3, [I

    .line 45
    new-array v7, v3, [J

    .line 46
    new-array v8, v3, [I

    move-object/from16 v24, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move/from16 v37, v9

    move/from16 v9, p1

    :goto_8
    move/from16 p1, v37

    const-string v10, "AtomParsers"

    if-ge v1, v3, :cond_14

    move-wide/from16 v28, v27

    move/from16 v27, v21

    const/16 v21, 0x1

    :goto_9
    if-nez v27, :cond_c

    .line 47
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->a()Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v30, v14

    move/from16 v31, v15

    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->offset:J

    move/from16 v32, v3

    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/b$a;->numSamples:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_9

    :cond_c
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v21, :cond_d

    const-string v2, "Unexpected end of chunk data"

    .line 48
    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 50
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 51
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 52
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v1

    move/from16 v2, v22

    move/from16 v1, v27

    goto/16 :goto_e

    :cond_d
    if-eqz v0, :cond_f

    :goto_a
    if-nez v23, :cond_e

    if-lez v16, :cond_e

    .line 53
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v23

    .line 54
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v22

    add-int/lit8 v16, v16, -0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v23, v23, -0x1

    :cond_f
    move/from16 v3, v22

    .line 55
    aput-wide v28, v4, v1

    .line 56
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/b$c;->readNextSampleSize()I

    move-result v10

    aput v10, v6, v1

    if-le v10, v11, :cond_10

    move v11, v10

    :cond_10
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 57
    aput-wide v14, v7, v1

    if-nez v12, :cond_11

    const/4 v10, 0x1

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    .line 58
    :goto_b
    aput v10, v8, v1

    if-ne v1, v2, :cond_12

    const/4 v10, 0x1

    .line 59
    aput v10, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_12

    .line 60
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/c0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v2

    sub-int/2addr v2, v10

    :cond_12
    move v15, v2

    move v10, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_13

    if-lez p1, :cond_13

    .line 61
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v2

    .line 62
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/c0;->n()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    :goto_c
    move/from16 p1, v2

    goto :goto_d

    :cond_13
    move v3, v14

    move/from16 v14, p1

    goto :goto_c

    .line 63
    :goto_d
    aget v2, v6, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v21, v22

    move/from16 v3, v32

    move/from16 v22, v10

    move/from16 v37, v14

    move/from16 v14, p1

    goto/16 :goto_8

    :cond_14
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v1, v21

    move/from16 v2, v22

    :goto_e
    int-to-long v12, v2

    add-long v12, v25, v12

    if-eqz v0, :cond_16

    :goto_f
    if-lez v16, :cond_16

    .line 64
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->H()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x0

    goto :goto_10

    .line 65
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x1

    :goto_10
    if-nez v9, :cond_18

    if-nez v30, :cond_18

    if-nez v1, :cond_18

    if-nez p1, :cond_18

    move/from16 v2, v23

    if-nez v2, :cond_19

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    move-object/from16 v14, p0

    goto :goto_13

    :cond_18
    move/from16 v2, v23

    .line 66
    :cond_19
    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Inconsistent stbl box for track "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p0

    iget v15, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->id:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1a

    const-string v0, ", ctts invalid"

    goto :goto_12

    :cond_1a
    const-string v0, ""

    .line 67
    :goto_12
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move v0, v3

    move-object v2, v4

    move-object v3, v6

    move v4, v11

    move-wide v15, v12

    move-object v12, v7

    move-object v13, v8

    :goto_14
    const-wide/32 v7, 0xf4240

    .line 69
    iget-wide v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    move-wide v5, v15

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v7

    .line 70
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_1b

    .line 71
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    invoke-static {v12, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/util/o0;->G0([JJJ)V

    .line 72
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/r;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/o;[J[II[J[IJ)V

    return-object v9

    .line 73
    :cond_1b
    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1e

    iget v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    if-ne v1, v5, :cond_1e

    array-length v1, v12

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1e

    .line 74
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListMediaTimes:[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v5, 0x0

    aget-wide v21, v1, v5

    .line 75
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    aget-wide v23, v1, v5

    iget-wide v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    iget-wide v7, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->movieTimescale:J

    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    .line 76
    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v5

    add-long v23, v21, v5

    move-object v5, v12

    move-wide v6, v15

    move-wide/from16 v8, v21

    move/from16 v25, v0

    move-wide v0, v10

    move-wide/from16 v10, v23

    .line 77
    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/b;->b([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_1d

    sub-long v6, v15, v23

    const/4 v5, 0x0

    .line 78
    aget-wide v8, v12, v5

    sub-long v26, v21, v8

    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    iget v5, v5, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    int-to-long v8, v5

    iget-wide v10, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    .line 79
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v10

    .line 80
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->format:Lcom/google/android/exoplayer2/a2;

    iget v5, v5, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    int-to-long v8, v5

    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    move/from16 p1, v4

    move-wide v4, v10

    move-wide v10, v0

    .line 81
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c

    cmp-long v8, v0, v6

    if-eqz v8, :cond_1f

    :cond_1c
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1f

    cmp-long v6, v0, v6

    if-gtz v6, :cond_1f

    long-to-int v4, v4

    move-object/from16 v5, p2

    .line 82
    iput v4, v5, Lcom/google/android/exoplayer2/extractor/x;->encoderDelay:I

    long-to-int v0, v0

    .line 83
    iput v0, v5, Lcom/google/android/exoplayer2/extractor/x;->encoderPadding:I

    .line 84
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    const-wide/32 v4, 0xf4240

    invoke-static {v12, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/util/o0;->G0([JJJ)V

    .line 85
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/32 v6, 0xf4240

    iget-wide v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->movieTimescale:J

    .line 86
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v7

    .line 87
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/r;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/o;[J[II[J[IJ)V

    return-object v9

    :cond_1d
    :goto_15
    move/from16 p1, v4

    goto :goto_16

    :cond_1e
    move/from16 v25, v0

    goto :goto_15

    .line 88
    :cond_1f
    :goto_16
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    array-length v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_21

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_21

    .line 89
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListMediaTimes:[J

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v1

    const/4 v6, 0x0

    .line 90
    :goto_17
    array-length v0, v12

    if-ge v6, v0, :cond_20

    .line 91
    aget-wide v0, v12, v6

    sub-long v17, v0, v4

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    move-wide/from16 v21, v0

    .line 92
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v0

    aput-wide v0, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_20
    sub-long v17, v15, v4

    const-wide/32 v19, 0xf4240

    .line 93
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    move-wide/from16 v21, v0

    .line 94
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v7

    .line 95
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/r;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/o;[J[II[J[IJ)V

    return-object v9

    .line 96
    :cond_21
    iget v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->type:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    const/4 v10, 0x1

    goto :goto_18

    :cond_22
    const/4 v10, 0x0

    .line 97
    :goto_18
    array-length v1, v0

    new-array v1, v1, [I

    .line 98
    array-length v0, v0

    new-array v0, v0, [I

    .line 99
    iget-object v4, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListMediaTimes:[J

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 100
    :goto_19
    iget-object v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    array-length v11, v9

    if-ge v5, v11, :cond_26

    move-object v11, v2

    move-object v15, v3

    .line 101
    aget-wide v2, v4, v5

    const-wide/16 v21, -0x1

    cmp-long v16, v2, v21

    if-eqz v16, :cond_25

    .line 102
    aget-wide v26, v9, v5

    move/from16 v16, v8

    iget-wide v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    move/from16 p2, v6

    move/from16 v21, v7

    iget-wide v6, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->movieTimescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v6

    .line 103
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 104
    invoke-static {v12, v2, v3, v8, v8}, Lcom/google/android/exoplayer2/util/o0;->i([JJZZ)I

    move-result v9

    aput v9, v1, v5

    add-long/2addr v2, v6

    const/4 v6, 0x0

    .line 105
    invoke-static {v12, v2, v3, v10, v6}, Lcom/google/android/exoplayer2/util/o0;->e([JJZZ)I

    move-result v2

    aput v2, v0, v5

    .line 106
    :goto_1a
    aget v2, v1, v5

    aget v3, v0, v5

    if-ge v2, v3, :cond_23

    aget v7, v13, v2

    and-int/2addr v7, v8

    if-nez v7, :cond_23

    add-int/lit8 v2, v2, 0x1

    .line 107
    aput v2, v1, v5

    goto :goto_1a

    :cond_23
    sub-int v7, v3, v2

    add-int v7, v21, v7

    move/from16 v9, v16

    if-eq v9, v2, :cond_24

    move v2, v8

    goto :goto_1b

    :cond_24
    move v2, v6

    :goto_1b
    or-int v2, p2, v2

    goto :goto_1c

    :cond_25
    move/from16 p2, v6

    move/from16 v21, v7

    move v9, v8

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v2, p2

    move v3, v9

    :goto_1c
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v8, v3

    move-object v2, v11

    move-object v3, v15

    goto :goto_19

    :cond_26
    move-object v11, v2

    move-object v15, v3

    move/from16 p2, v6

    move/from16 v3, v25

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v7, v3, :cond_27

    goto :goto_1d

    :cond_27
    move v8, v6

    :goto_1d
    or-int v2, p2, v8

    if-eqz v2, :cond_28

    .line 108
    new-array v3, v7, [J

    goto :goto_1e

    :cond_28
    move-object v3, v11

    :goto_1e
    if-eqz v2, :cond_29

    .line 109
    new-array v4, v7, [I

    goto :goto_1f

    :cond_29
    move-object v4, v15

    :goto_1f
    if-eqz v2, :cond_2a

    move v5, v6

    goto :goto_20

    :cond_2a
    move/from16 v5, p1

    :goto_20
    if-eqz v2, :cond_2b

    .line 110
    new-array v8, v7, [I

    goto :goto_21

    :cond_2b
    move-object v8, v13

    .line 111
    :goto_21
    new-array v7, v7, [J

    move/from16 p2, v5

    move-object/from16 p1, v15

    const-wide/16 v9, 0x0

    move v15, v6

    .line 112
    :goto_22
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    array-length v5, v5

    if-ge v6, v5, :cond_30

    .line 113
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListMediaTimes:[J

    aget-wide v16, v5, v6

    .line 114
    aget v5, v1, v6

    move-object/from16 v18, v1

    .line 115
    aget v1, v0, v6

    move-object/from16 v27, v0

    if-eqz v2, :cond_2c

    sub-int v0, v1, v5

    .line 116
    invoke-static {v11, v5, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v28, v11

    move-object/from16 v11, p1

    .line 117
    invoke-static {v11, v5, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    invoke-static {v13, v5, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_2c
    move-object/from16 v28, v11

    move-object/from16 v11, p1

    :goto_23
    move/from16 v0, p2

    :goto_24
    if-ge v5, v1, :cond_2f

    const-wide/32 v23, 0xf4240

    move/from16 v29, v0

    move/from16 p1, v1

    .line 119
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->movieTimescale:J

    move-wide/from16 v21, v9

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v0

    .line 120
    aget-wide v21, v12, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    sub-long v12, v21, v16

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/16 v8, 0x0

    .line 121
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    const-wide/32 v33, 0xf4240

    iget-wide v12, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->timescale:J

    move-wide/from16 v35, v12

    .line 122
    invoke-static/range {v31 .. v36}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v12

    add-long/2addr v0, v12

    .line 123
    aput-wide v0, v7, v15

    if-eqz v2, :cond_2d

    .line 124
    aget v0, v4, v15

    move/from16 v1, v29

    if-le v0, v1, :cond_2e

    .line 125
    aget v0, v11, v5

    goto :goto_25

    :cond_2d
    move/from16 v1, v29

    :cond_2e
    move v0, v1

    :goto_25
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    move-wide/from16 v9, v21

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    goto :goto_24

    :cond_2f
    move v1, v0

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    const-wide/16 v8, 0x0

    .line 126
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->editListDurations:[J

    aget-wide v12, v0, v6

    add-long v12, v21, v12

    add-int/lit8 v6, v6, 0x1

    move/from16 p2, v1

    move-object/from16 p1, v11

    move-wide v9, v12

    move-object/from16 v1, v18

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v0, v27

    move-object/from16 v11, v28

    move-object/from16 v8, v30

    goto/16 :goto_22

    :cond_30
    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/32 v23, 0xf4240

    .line 127
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/o;->movieTimescale:J

    move-wide/from16 v25, v0

    .line 128
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    move-result-wide v8

    .line 129
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/r;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move-object v5, v7

    move-object/from16 v6, v30

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/r;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/o;[J[II[J[IJ)V

    return-object v10

    :cond_31
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 130
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    move-result-object v0

    throw v0
.end method

.method private static w(Lcom/google/android/exoplayer2/util/c0;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/b$d;
    .locals 18
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v10, p0

    .line 3
    .line 4
    move/from16 v11, p1

    .line 5
    .line 6
    const/16 v0, 0xc

    .line 7
    .line 8
    .line 9
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 13
    move-result v12

    .line 14
    .line 15
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/b$d;

    .line 16
    .line 17
    .line 18
    invoke-direct {v13, v12}, Lcom/google/android/exoplayer2/extractor/mp4/b$d;-><init>(I)V

    .line 19
    const/4 v14, 0x0

    .line 20
    move v15, v14

    .line 21
    .line 22
    :goto_0
    if-ge v15, v12, :cond_9

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 26
    move-result v9

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 30
    move-result v16

    .line 31
    .line 32
    if-lez v16, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v0, v14

    .line 36
    .line 37
    :goto_1
    const-string v1, "childAtomSize must be positive"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/o;->a(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    const v0, 0x61766331

    .line 48
    .line 49
    if-eq v1, v0, :cond_1

    .line 50
    .line 51
    .line 52
    const v0, 0x61766333

    .line 53
    .line 54
    if-eq v1, v0, :cond_1

    .line 55
    .line 56
    .line 57
    const v0, 0x656e6376

    .line 58
    .line 59
    if-eq v1, v0, :cond_1

    .line 60
    .line 61
    .line 62
    const v0, 0x6d317620

    .line 63
    .line 64
    if-eq v1, v0, :cond_1

    .line 65
    .line 66
    .line 67
    const v0, 0x6d703476

    .line 68
    .line 69
    if-eq v1, v0, :cond_1

    .line 70
    .line 71
    .line 72
    const v0, 0x68766331

    .line 73
    .line 74
    if-eq v1, v0, :cond_1

    .line 75
    .line 76
    .line 77
    const v0, 0x68657631

    .line 78
    .line 79
    if-eq v1, v0, :cond_1

    .line 80
    .line 81
    .line 82
    const v0, 0x73323633

    .line 83
    .line 84
    if-eq v1, v0, :cond_1

    .line 85
    .line 86
    .line 87
    const v0, 0x48323633

    .line 88
    .line 89
    if-eq v1, v0, :cond_1

    .line 90
    .line 91
    .line 92
    const v0, 0x76703038

    .line 93
    .line 94
    if-eq v1, v0, :cond_1

    .line 95
    .line 96
    .line 97
    const v0, 0x76703039

    .line 98
    .line 99
    if-eq v1, v0, :cond_1

    .line 100
    .line 101
    .line 102
    const v0, 0x61763031

    .line 103
    .line 104
    if-eq v1, v0, :cond_1

    .line 105
    .line 106
    .line 107
    const v0, 0x64766176

    .line 108
    .line 109
    if-eq v1, v0, :cond_1

    .line 110
    .line 111
    .line 112
    const v0, 0x64766131

    .line 113
    .line 114
    if-eq v1, v0, :cond_1

    .line 115
    .line 116
    .line 117
    const v0, 0x64766865

    .line 118
    .line 119
    if-eq v1, v0, :cond_1

    .line 120
    .line 121
    .line 122
    const v0, 0x64766831

    .line 123
    .line 124
    if-ne v1, v0, :cond_2

    .line 125
    .line 126
    :cond_1
    move/from16 v17, v9

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    .line 131
    :cond_2
    const v0, 0x6d703461

    .line 132
    .line 133
    if-eq v1, v0, :cond_8

    .line 134
    .line 135
    .line 136
    const v0, 0x656e6361

    .line 137
    .line 138
    if-eq v1, v0, :cond_8

    .line 139
    .line 140
    .line 141
    const v0, 0x61632d33

    .line 142
    .line 143
    if-eq v1, v0, :cond_8

    .line 144
    .line 145
    .line 146
    const v0, 0x65632d33

    .line 147
    .line 148
    if-eq v1, v0, :cond_8

    .line 149
    .line 150
    .line 151
    const v0, 0x61632d34

    .line 152
    .line 153
    if-eq v1, v0, :cond_8

    .line 154
    .line 155
    .line 156
    const v0, 0x6d6c7061

    .line 157
    .line 158
    if-eq v1, v0, :cond_8

    .line 159
    .line 160
    .line 161
    const v0, 0x64747363

    .line 162
    .line 163
    if-eq v1, v0, :cond_8

    .line 164
    .line 165
    .line 166
    const v0, 0x64747365

    .line 167
    .line 168
    if-eq v1, v0, :cond_8

    .line 169
    .line 170
    .line 171
    const v0, 0x64747368

    .line 172
    .line 173
    if-eq v1, v0, :cond_8

    .line 174
    .line 175
    .line 176
    const v0, 0x6474736c

    .line 177
    .line 178
    if-eq v1, v0, :cond_8

    .line 179
    .line 180
    .line 181
    const v0, 0x64747378

    .line 182
    .line 183
    if-eq v1, v0, :cond_8

    .line 184
    .line 185
    .line 186
    const v0, 0x73616d72

    .line 187
    .line 188
    if-eq v1, v0, :cond_8

    .line 189
    .line 190
    .line 191
    const v0, 0x73617762

    .line 192
    .line 193
    if-eq v1, v0, :cond_8

    .line 194
    .line 195
    .line 196
    const v0, 0x6c70636d

    .line 197
    .line 198
    if-eq v1, v0, :cond_8

    .line 199
    .line 200
    .line 201
    const v0, 0x736f7774

    .line 202
    .line 203
    if-eq v1, v0, :cond_8

    .line 204
    .line 205
    .line 206
    const v0, 0x74776f73

    .line 207
    .line 208
    if-eq v1, v0, :cond_8

    .line 209
    .line 210
    .line 211
    const v0, 0x2e6d7032

    .line 212
    .line 213
    if-eq v1, v0, :cond_8

    .line 214
    .line 215
    .line 216
    const v0, 0x2e6d7033

    .line 217
    .line 218
    if-eq v1, v0, :cond_8

    .line 219
    .line 220
    .line 221
    const v0, 0x6d686131

    .line 222
    .line 223
    if-eq v1, v0, :cond_8

    .line 224
    .line 225
    .line 226
    const v0, 0x6d686d31

    .line 227
    .line 228
    if-eq v1, v0, :cond_8

    .line 229
    .line 230
    .line 231
    const v0, 0x616c6163

    .line 232
    .line 233
    if-eq v1, v0, :cond_8

    .line 234
    .line 235
    .line 236
    const v0, 0x616c6177

    .line 237
    .line 238
    if-eq v1, v0, :cond_8

    .line 239
    .line 240
    .line 241
    const v0, 0x756c6177

    .line 242
    .line 243
    if-eq v1, v0, :cond_8

    .line 244
    .line 245
    .line 246
    const v0, 0x4f707573

    .line 247
    .line 248
    if-eq v1, v0, :cond_8

    .line 249
    .line 250
    .line 251
    const v0, 0x664c6143

    .line 252
    .line 253
    if-ne v1, v0, :cond_3

    .line 254
    goto :goto_4

    .line 255
    .line 256
    .line 257
    :cond_3
    const v0, 0x54544d4c

    .line 258
    .line 259
    if-eq v1, v0, :cond_7

    .line 260
    .line 261
    .line 262
    const v0, 0x74783367

    .line 263
    .line 264
    if-eq v1, v0, :cond_7

    .line 265
    .line 266
    .line 267
    const v0, 0x77767474

    .line 268
    .line 269
    if-eq v1, v0, :cond_7

    .line 270
    .line 271
    .line 272
    const v0, 0x73747070

    .line 273
    .line 274
    if-eq v1, v0, :cond_7

    .line 275
    .line 276
    .line 277
    const v0, 0x63363038

    .line 278
    .line 279
    if-ne v1, v0, :cond_4

    .line 280
    goto :goto_3

    .line 281
    .line 282
    .line 283
    :cond_4
    const v0, 0x6d657474

    .line 284
    .line 285
    if-ne v1, v0, :cond_6

    .line 286
    .line 287
    .line 288
    invoke-static {v10, v1, v9, v11, v13}, Lcom/google/android/exoplayer2/extractor/mp4/b;->o(Lcom/google/android/exoplayer2/util/c0;IIILcom/google/android/exoplayer2/extractor/mp4/b$d;)V

    .line 289
    .line 290
    :cond_5
    :goto_2
    move/from16 v17, v9

    .line 291
    goto :goto_6

    .line 292
    .line 293
    .line 294
    :cond_6
    const v0, 0x63616d6d

    .line 295
    .line 296
    if-ne v1, v0, :cond_5

    .line 297
    .line 298
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 299
    .line 300
    .line 301
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    const-string v1, "application/x-camera-motion"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 311
    move-result-object v0

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 315
    move-result-object v0

    .line 316
    .line 317
    iput-object v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    .line 318
    goto :goto_2

    .line 319
    .line 320
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    .line 321
    move v2, v9

    .line 322
    .line 323
    move/from16 v3, v16

    .line 324
    .line 325
    move/from16 v4, p1

    .line 326
    .line 327
    move-object/from16 v5, p3

    .line 328
    move-object v6, v13

    .line 329
    .line 330
    .line 331
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/b;->x(Lcom/google/android/exoplayer2/util/c0;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/b$d;)V

    .line 332
    goto :goto_2

    .line 333
    .line 334
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    .line 335
    move v2, v9

    .line 336
    .line 337
    move/from16 v3, v16

    .line 338
    .line 339
    move/from16 v4, p1

    .line 340
    .line 341
    move-object/from16 v5, p3

    .line 342
    .line 343
    move/from16 v6, p5

    .line 344
    .line 345
    move-object/from16 v7, p4

    .line 346
    move-object v8, v13

    .line 347
    .line 348
    move/from16 v17, v9

    .line 349
    move v9, v15

    .line 350
    .line 351
    .line 352
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/b;->f(Lcom/google/android/exoplayer2/util/c0;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/b$d;I)V

    .line 353
    goto :goto_6

    .line 354
    .line 355
    :goto_5
    move-object/from16 v0, p0

    .line 356
    .line 357
    move/from16 v2, v17

    .line 358
    .line 359
    move/from16 v3, v16

    .line 360
    .line 361
    move/from16 v4, p1

    .line 362
    .line 363
    move/from16 v5, p2

    .line 364
    .line 365
    move-object/from16 v6, p4

    .line 366
    move-object v7, v13

    .line 367
    move v8, v15

    .line 368
    .line 369
    .line 370
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/b;->D(Lcom/google/android/exoplayer2/util/c0;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/b$d;I)V

    .line 371
    .line 372
    :goto_6
    add-int v9, v17, v16

    .line 373
    .line 374
    .line 375
    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 376
    .line 377
    add-int/lit8 v15, v15, 0x1

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    :cond_9
    return-object v13
.end method

.method private static x(Lcom/google/android/exoplayer2/util/c0;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/b$d;)V
    .locals 4

    .line 1
    .line 2
    add-int/lit8 p2, p2, 0x10

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 6
    .line 7
    .line 8
    const p2, 0x54544d4c

    .line 9
    .line 10
    const-string v0, "application/ttml+xml"

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, 0x7fffffffffffffffL

    .line 17
    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    const p2, 0x74783367

    .line 23
    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    add-int/lit8 p3, p3, -0x10

    .line 27
    .line 28
    new-array p1, p3, [B

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/c0;->j([BII)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v0, "application/x-quicktime-tx3g"

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    const p0, 0x77767474

    .line 43
    .line 44
    if-ne p1, p0, :cond_2

    .line 45
    .line 46
    const-string v0, "application/x-mp4-vtt"

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    const p0, 0x73747070

    .line 51
    .line 52
    if-ne p1, p0, :cond_3

    .line 53
    .line 54
    const-wide/16 v2, 0x0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_3
    const p0, 0x63363038

    .line 59
    .line 60
    if-ne p1, p0, :cond_4

    .line 61
    const/4 p0, 0x1

    .line 62
    .line 63
    iput p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->requiredSampleTransformation:I

    .line 64
    .line 65
    const-string v0, "application/x-mp4-cea-608"

    .line 66
    .line 67
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/a2$b;

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/a2$b;->R(I)Lcom/google/android/exoplayer2/a2$b;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/a2$b;->i0(J)Lcom/google/android/exoplayer2/a2$b;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    iput-object p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    .line 97
    return-void

    .line 98
    .line 99
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 103
    throw p0
.end method

.method private static y(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/mp4/b$g;
    .locals 12

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
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    .line 13
    move-result v1

    .line 14
    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 35
    move-result v5

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    move v0, v4

    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    if-ge v7, v0, :cond_5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->d()[B

    .line 51
    move-result-object v10

    .line 52
    .line 53
    add-int v11, v5, v7

    .line 54
    .line 55
    aget-byte v10, v10, v11

    .line 56
    const/4 v11, -0x1

    .line 57
    .line 58
    if-eq v10, v11, :cond_4

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->F()J

    .line 64
    move-result-wide v0

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->I()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    :goto_2
    const-wide/16 v10, 0x0

    .line 72
    .line 73
    cmp-long v5, v0, v10

    .line 74
    .line 75
    if-nez v5, :cond_3

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move-wide v8, v0

    .line 78
    goto :goto_3

    .line 79
    .line 80
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 91
    move-result v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 95
    move-result v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 102
    move-result v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/c0;->n()I

    .line 106
    move-result p0

    .line 107
    .line 108
    const/high16 v4, -0x10000

    .line 109
    .line 110
    const/high16 v5, 0x10000

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    if-ne v1, v5, :cond_6

    .line 115
    .line 116
    if-ne v2, v4, :cond_6

    .line 117
    .line 118
    if-nez p0, :cond_6

    .line 119
    .line 120
    const/16 v6, 0x5a

    .line 121
    goto :goto_4

    .line 122
    .line 123
    :cond_6
    if-nez v0, :cond_7

    .line 124
    .line 125
    if-ne v1, v4, :cond_7

    .line 126
    .line 127
    if-ne v2, v5, :cond_7

    .line 128
    .line 129
    if-nez p0, :cond_7

    .line 130
    .line 131
    const/16 v6, 0x10e

    .line 132
    goto :goto_4

    .line 133
    .line 134
    :cond_7
    if-ne v0, v4, :cond_8

    .line 135
    .line 136
    if-nez v1, :cond_8

    .line 137
    .line 138
    if-nez v2, :cond_8

    .line 139
    .line 140
    if-ne p0, v4, :cond_8

    .line 141
    .line 142
    const/16 v6, 0xb4

    .line 143
    .line 144
    :cond_8
    :goto_4
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/b$g;

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v3, v8, v9, v6}, Lcom/google/android/exoplayer2/extractor/mp4/b$g;-><init>(IJI)V

    .line 148
    return-object p0
.end method

.method private static z(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/mp4/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/o;
    .locals 18
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    .line 5
    const v1, 0x6d646961

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 16
    .line 17
    .line 18
    const v2, 0x68646c72    # 4.3148E24f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->k(Lcom/google/android/exoplayer2/util/c0;)I

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->d(I)I

    .line 38
    move-result v5

    .line 39
    const/4 v2, -0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    if-ne v5, v2, :cond_0

    .line 43
    return-object v3

    .line 44
    .line 45
    .line 46
    :cond_0
    const v2, 0x746b6864

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b;->y(Lcom/google/android/exoplayer2/util/c0;)Lcom/google/android/exoplayer2/extractor/mp4/b$g;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    cmp-long v4, p2, v6

    .line 70
    .line 71
    if-nez v4, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b$g;->a(Lcom/google/android/exoplayer2/extractor/mp4/b$g;)J

    .line 75
    move-result-wide v8

    .line 76
    .line 77
    move-object/from16 v4, p1

    .line 78
    move-wide v10, v8

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    move-object/from16 v4, p1

    .line 82
    .line 83
    move-wide/from16 v10, p2

    .line 84
    .line 85
    :goto_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/b;->p(Lcom/google/android/exoplayer2/util/c0;)J

    .line 89
    move-result-wide v8

    .line 90
    .line 91
    cmp-long v4, v10, v6

    .line 92
    .line 93
    if-nez v4, :cond_2

    .line 94
    :goto_1
    move-wide v10, v6

    .line 95
    goto :goto_2

    .line 96
    .line 97
    .line 98
    :cond_2
    const-wide/32 v12, 0xf4240

    .line 99
    move-wide v14, v8

    .line 100
    .line 101
    .line 102
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/o0;->F0(JJJ)J

    .line 103
    move-result-wide v6

    .line 104
    goto :goto_1

    .line 105
    .line 106
    .line 107
    :goto_2
    const v4, 0x6d696e66

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 111
    move-result-object v4

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v4

    .line 116
    .line 117
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 118
    .line 119
    .line 120
    const v6, 0x7374626c

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    .line 127
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 131
    .line 132
    .line 133
    const v6, 0x6d646864

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/b;->m(Lcom/google/android/exoplayer2/util/c0;)Landroid/util/Pair;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    const v6, 0x73747364

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    .line 159
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 163
    .line 164
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->data:Lcom/google/android/exoplayer2/util/c0;

    .line 165
    .line 166
    .line 167
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b$g;->b(Lcom/google/android/exoplayer2/extractor/mp4/b$g;)I

    .line 168
    move-result v13

    .line 169
    .line 170
    .line 171
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b$g;->c(Lcom/google/android/exoplayer2/extractor/mp4/b$g;)I

    .line 172
    move-result v14

    .line 173
    .line 174
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 175
    move-object v15, v4

    .line 176
    .line 177
    check-cast v15, Ljava/lang/String;

    .line 178
    .line 179
    move-object/from16 v16, p4

    .line 180
    .line 181
    move/from16 v17, p6

    .line 182
    .line 183
    .line 184
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/b;->w(Lcom/google/android/exoplayer2/util/c0;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/b$d;

    .line 185
    move-result-object v4

    .line 186
    .line 187
    if-nez p5, :cond_3

    .line 188
    .line 189
    .line 190
    const v6, 0x65647473

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    if-eqz v0, :cond_3

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/b;->h(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)Landroid/util/Pair;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v6, [J

    .line 207
    .line 208
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v0, [J

    .line 211
    .line 212
    move-object/from16 v17, v0

    .line 213
    .line 214
    move-object/from16 v16, v6

    .line 215
    goto :goto_3

    .line 216
    .line 217
    :cond_3
    move-object/from16 v16, v3

    .line 218
    .line 219
    move-object/from16 v17, v16

    .line 220
    .line 221
    :goto_3
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    .line 222
    .line 223
    if-nez v0, :cond_4

    .line 224
    goto :goto_4

    .line 225
    .line 226
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 227
    .line 228
    .line 229
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/b$g;->b(Lcom/google/android/exoplayer2/extractor/mp4/b$g;)I

    .line 230
    move-result v2

    .line 231
    .line 232
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v1, Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 238
    move-result-wide v6

    .line 239
    .line 240
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->format:Lcom/google/android/exoplayer2/a2;

    .line 241
    .line 242
    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->requiredSampleTransformation:I

    .line 243
    .line 244
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 245
    .line 246
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/b$d;->nalUnitLengthFieldLength:I

    .line 247
    move-object v3, v0

    .line 248
    move v4, v2

    .line 249
    .line 250
    .line 251
    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/o;-><init>(IIJJJLcom/google/android/exoplayer2/a2;I[Lcom/google/android/exoplayer2/extractor/mp4/p;I[J[J)V

    .line 252
    :goto_4
    return-object v3
.end method
