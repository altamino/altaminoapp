.class public final Lk8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1495:1\n1447#1,6:1497\n1450#1,3:1503\n1447#1,6:1506\n1447#1,6:1512\n1450#1,3:1521\n1#2:1496\n1726#3,3:1518\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n1371#1:1497,6\n1405#1:1503,3\n1408#1:1506,6\n1411#1:1512,6\n1447#1:1521,3\n1436#1:1518,3\n*E\n"
.end annotation


# static fields
.field public static final MAX_MILLIS:J = 0x3fffffffffffffffL

.field public static final MAX_NANOS:J = 0x3ffffffffffa14bfL

.field private static final MAX_NANOS_IN_MILLIS:J = 0x431bde82d7aL

.field public static final NANOS_IN_MILLIS:I = 0xf4240


# direct methods
.method public static final synthetic a(JI)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lk8/d;->i(JI)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic b(J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/d;->j(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic c(J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/d;->k(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic d(J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/d;->l(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic e(J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/d;->m(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic f(J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/d;->n(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic g(J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/d;->o(J)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic h(Ljava/lang/String;Z)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/d;->p(Ljava/lang/String;Z)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final i(JI)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    int-to-long v0, p2

    .line 4
    add-long/2addr p0, v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lk8/b;->j(J)J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method private static final j(J)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    add-long/2addr p0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lk8/b;->j(J)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private static final k(J)J
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lj8/l;

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v1, -0x431bde82d7aL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v3, 0x431bde82d7aL

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lj8/l;-><init>(JJ)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lj8/l;->j(J)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lk8/d;->n(J)J

    .line 25
    move-result-wide p0

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lk8/d;->l(J)J

    .line 29
    move-result-wide p0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 41
    move-wide v0, p0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v0 .. v5}, Lj8/m;->p(JJJ)J

    .line 45
    move-result-wide p0

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Lk8/d;->j(J)J

    .line 49
    move-result-wide p0

    .line 50
    :goto_0
    return-wide p0
.end method

.method private static final l(J)J
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lk8/b;->j(J)J

    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method private static final m(J)J
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lj8/l;

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v1, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v3, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lj8/l;-><init>(JJ)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Lj8/l;->j(J)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lk8/d;->l(J)J

    .line 25
    move-result-wide p0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {p0, p1}, Lk8/d;->o(J)J

    .line 30
    move-result-wide p0

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lk8/d;->j(J)J

    .line 34
    move-result-wide p0

    .line 35
    :goto_0
    return-wide p0
.end method

.method private static final n(J)J
    .locals 2

    .line 1
    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static final o(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0xf4240

    .line 4
    int-to-long v0, v0

    .line 5
    div-long/2addr p0, v0

    .line 6
    return-wide p0
.end method

.method private static final p(Ljava/lang/String;Z)J
    .locals 26

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_22

    .line 2
    sget-object v8, Lk8/b;->Companion:Lk8/b$a;

    invoke-virtual {v8}, Lk8/b$a;->c()J

    move-result-wide v9

    const-string v2, "Infinity"

    const/4 v11, 0x0

    .line 3
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    const/16 v3, 0x2d

    const/4 v12, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    :goto_0
    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    if-lez v13, :cond_2

    move v14, v12

    goto :goto_2

    :cond_2
    move v14, v11

    :goto_2
    const/4 v0, 0x2

    const/4 v15, 0x0

    if-eqz v14, :cond_3

    .line 4
    invoke-static {v6, v3, v11, v0, v15}, Lkotlin/text/k;->H0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v16, v12

    goto :goto_3

    :cond_3
    move/from16 v16, v11

    :goto_3
    const-string v5, "No components"

    if-le v7, v13, :cond_21

    .line 5
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x50

    const-string v4, "Unexpected order of duration components"

    move-object/from16 v17, v5

    const/16 v5, 0x39

    const/16 v0, 0x30

    const-string v11, "substring(...)"

    const-string v15, "null cannot be cast to non-null type java.lang.String"

    if-ne v1, v3, :cond_f

    add-int/2addr v13, v12

    if-eq v13, v7, :cond_e

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v13, v7, :cond_1e

    .line 6
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x54

    if-ne v3, v8, :cond_5

    if-nez v1, :cond_4

    add-int/lit8 v13, v13, 0x1

    if-eq v13, v7, :cond_4

    move v1, v12

    goto :goto_4

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    move v3, v13

    .line 8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_7

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 9
    new-instance v14, Lj8/c;

    invoke-direct {v14, v0, v5}, Lj8/c;-><init>(CC)V

    invoke-virtual {v14, v8}, Lj8/c;->j(C)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "+-."

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v12, 0x0

    invoke-static {v14, v8, v0, v5, v12}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_6
    const/4 v5, 0x2

    const/4 v12, 0x0

    :goto_6
    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x30

    const/16 v5, 0x39

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x2

    const/4 v12, 0x0

    .line 10
    :cond_8
    invoke-static {v6, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_d

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v13, v3

    if-ltz v13, :cond_c

    .line 13
    invoke-static/range {p0 .. p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    move-result v3

    if-gt v13, v3, :cond_c

    invoke-interface {v6, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v13, v13, 0x1

    .line 14
    invoke-static {v3, v1}, Lk8/g;->d(CZ)Lk8/e;

    move-result-object v3

    if-eqz v2, :cond_a

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_9

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    const/16 v20, 0x2e

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object/from16 v19, v0

    .line 16
    invoke-static/range {v19 .. v24}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 17
    sget-object v8, Lk8/e;->SECONDS:Lk8/e;

    if-ne v3, v8, :cond_b

    if-lez v2, :cond_b

    .line 18
    invoke-static {v0, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 p1, v13

    .line 19
    invoke-static {v14}, Lk8/d;->q(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v3}, Lk8/d;->t(JLk8/e;)J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Lk8/b;->G(JJ)J

    move-result-wide v8

    .line 20
    invoke-static {v0, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13, v3}, Lk8/d;->r(DLk8/e;)J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Lk8/b;->G(JJ)J

    move-result-wide v9

    :goto_8
    move/from16 v13, p1

    move-object v2, v3

    const/16 v0, 0x30

    const/16 v5, 0x39

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_b
    move/from16 p1, v13

    .line 21
    invoke-static {v0}, Lk8/d;->q(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v3}, Lk8/d;->t(JLk8/e;)J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Lk8/b;->G(JJ)J

    move-result-wide v9

    goto :goto_8

    .line 22
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing unit for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 24
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    if-nez p1, :cond_20

    const/4 v3, 0x0

    sub-int v0, v7, v13

    const/16 v1, 0x8

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v12, 0x1

    const/16 v1, 0x30

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v25, v4

    move v4, v5

    move-wide/from16 v20, v9

    move-object/from16 v9, v17

    const/16 v10, 0x39

    move v5, v12

    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->A(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 26
    invoke-virtual {v8}, Lk8/b$a;->a()J

    move-result-wide v9

    goto/16 :goto_10

    :cond_10
    xor-int/lit8 v0, v14, 0x1

    if-eqz v14, :cond_12

    .line 27
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_12

    invoke-static/range {p0 .. p0}, Lkotlin/text/k;->h1(Ljava/lang/CharSequence;)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_12

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v7, v7, -0x1

    if-eq v13, v7, :cond_11

    move-wide/from16 v2, v20

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_9
    const/4 v4, 0x0

    goto :goto_a

    .line 28
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move v1, v0

    move-wide/from16 v2, v20

    const/4 v0, 0x0

    goto :goto_9

    :goto_a
    if-ge v13, v7, :cond_1d

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    .line 29
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v13, v0, :cond_13

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x20

    if-ne v0, v5, :cond_13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_13
    move v0, v13

    .line 30
    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_15

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 31
    new-instance v8, Lj8/c;

    const/16 v9, 0x30

    invoke-direct {v8, v9, v10}, Lj8/c;-><init>(CC)V

    invoke-virtual {v8, v5}, Lj8/c;->j(C)Z

    move-result v8

    if-nez v8, :cond_14

    const/16 v8, 0x2e

    if-ne v5, v8, :cond_16

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    const/16 v9, 0x30

    .line 32
    :cond_16
    invoke-static {v6, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v13, v5

    move v5, v13

    .line 35
    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_17

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 36
    new-instance v12, Lj8/c;

    const/16 v14, 0x61

    const/16 v9, 0x7a

    invoke-direct {v12, v14, v9}, Lj8/c;-><init>(CC)V

    invoke-virtual {v12, v8}, Lj8/c;->j(C)Z

    move-result v8

    if-eqz v8, :cond_17

    add-int/lit8 v5, v5, 0x1

    const/16 v9, 0x30

    goto :goto_d

    .line 37
    :cond_17
    invoke-static {v6, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v13, v8

    .line 39
    invoke-static {v5}, Lk8/g;->e(Ljava/lang/String;)Lk8/e;

    move-result-object v5

    if-eqz v4, :cond_18

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_19

    :cond_18
    move-object/from16 v4, v25

    goto :goto_e

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v4, v25

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_e
    const/16 v19, 0x2e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v18, v0

    .line 41
    invoke-static/range {v18 .. v23}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_1b

    .line 42
    invoke-static {v0, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10, v5}, Lk8/d;->t(JLk8/e;)J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lk8/b;->G(JJ)J

    move-result-wide v2

    .line 44
    invoke-static {v0, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lk8/d;->r(DLk8/e;)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lk8/b;->G(JJ)J

    move-result-wide v2

    if-lt v13, v7, :cond_1a

    :goto_f
    move-object/from16 v25, v4

    move-object v4, v5

    const/4 v0, 0x1

    const/16 v10, 0x39

    goto/16 :goto_a

    .line 45
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fractional component must be last"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lk8/d;->t(JLk8/e;)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Lk8/b;->G(JJ)J

    move-result-wide v2

    goto :goto_f

    .line 47
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1d
    move-wide v9, v2

    :cond_1e
    :goto_10
    if-eqz v16, :cond_1f

    .line 48
    invoke-static {v9, v10}, Lk8/b;->L(J)J

    move-result-wide v9

    :cond_1f
    return-wide v9

    .line 49
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_21
    move-object v9, v5

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final q(Ljava/lang/String;)J
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const-string v5, "+-"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v6

    .line 17
    .line 18
    .line 19
    invoke-static {v5, v6, v4, v3, v2}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 20
    move-result v5

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    move v5, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v5, v4

    .line 26
    :goto_0
    sub-int/2addr v0, v5

    .line 27
    .line 28
    const/16 v6, 0x10

    .line 29
    .line 30
    if-le v0, v6, :cond_5

    .line 31
    .line 32
    new-instance v0, Lj8/i;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 36
    move-result v6

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v5, v6}, Lj8/i;-><init>(II)V

    .line 40
    .line 41
    instance-of v5, v0, Ljava/util/Collection;

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    move-object v5, v0

    .line 45
    .line 46
    check-cast v5, Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    move-result v5

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    move-object v5, v0

    .line 65
    .line 66
    check-cast v5, Lkotlin/collections/m0;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lkotlin/collections/m0;->nextInt()I

    .line 70
    move-result v5

    .line 71
    .line 72
    new-instance v6, Lj8/c;

    .line 73
    .line 74
    const/16 v7, 0x30

    .line 75
    .line 76
    const/16 v8, 0x39

    .line 77
    .line 78
    .line 79
    invoke-direct {v6, v7, v8}, Lj8/c;-><init>(CC)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 83
    move-result v5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v5}, Lj8/c;->j(C)Z

    .line 87
    move-result v5

    .line 88
    .line 89
    if-nez v5, :cond_2

    .line 90
    goto :goto_3

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 94
    move-result p0

    .line 95
    .line 96
    const/16 v0, 0x2d

    .line 97
    .line 98
    if-ne p0, v0, :cond_4

    .line 99
    .line 100
    const-wide/high16 v0, -0x8000000000000000L

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    .line 107
    :goto_2
    return-wide v0

    .line 108
    .line 109
    :cond_5
    :goto_3
    const-string v0, "+"

    .line 110
    .line 111
    .line 112
    invoke-static {p0, v0, v4, v3, v2}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v1}, Lkotlin/text/k;->e1(Ljava/lang/String;I)Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 123
    move-result-wide v0

    .line 124
    return-wide v0
.end method

.method public static final r(DLk8/e;)J
    .locals 7
    .param p2    # Lk8/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "unit"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lk8/e;->NANOSECONDS:Lk8/e;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, p2, v0}, Lk8/f;->a(DLk8/e;Lk8/e;)D

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lg8/a;->d(D)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    new-instance v2, Lj8/l;

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide v3, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v5, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3, v4, v5, v6}, Lj8/l;-><init>(JJ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Lj8/l;->j(J)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lk8/d;->l(J)J

    .line 48
    move-result-wide p0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    sget-object v0, Lk8/e;->MILLISECONDS:Lk8/e;

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1, p2, v0}, Lk8/f;->a(DLk8/e;Lk8/e;)D

    .line 55
    move-result-wide p0

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Lg8/a;->d(D)J

    .line 59
    move-result-wide p0

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Lk8/d;->k(J)J

    .line 63
    move-result-wide p0

    .line 64
    :goto_0
    return-wide p0

    .line 65
    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p1, "Duration value cannot be NaN."

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method public static final s(ILk8/e;)J
    .locals 2
    .param p1    # Lk8/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "unit"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lk8/e;->SECONDS:Lk8/e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    int-to-long v0, p0

    .line 15
    .line 16
    sget-object p0, Lk8/e;->NANOSECONDS:Lk8/e;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p1, p0}, Lk8/f;->c(JLk8/e;Lk8/e;)J

    .line 20
    move-result-wide p0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lk8/d;->l(J)J

    .line 24
    move-result-wide p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-long v0, p0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, p1}, Lk8/d;->t(JLk8/e;)J

    .line 30
    move-result-wide p0

    .line 31
    :goto_0
    return-wide p0
.end method

.method public static final t(JLk8/e;)J
    .locals 7
    .param p2    # Lk8/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "unit"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lk8/e;->NANOSECONDS:Lk8/e;

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v0, p2}, Lk8/f;->c(JLk8/e;Lk8/e;)J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    new-instance v3, Lj8/l;

    .line 19
    neg-long v4, v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4, v5, v1, v2}, Lj8/l;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p0, p1}, Lj8/l;->j(J)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1, p2, v0}, Lk8/f;->c(JLk8/e;Lk8/e;)J

    .line 32
    move-result-wide p0

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Lk8/d;->l(J)J

    .line 36
    move-result-wide p0

    .line 37
    return-wide p0

    .line 38
    .line 39
    :cond_0
    sget-object v0, Lk8/e;->MILLISECONDS:Lk8/e;

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1, p2, v0}, Lk8/f;->b(JLk8/e;Lk8/e;)J

    .line 43
    move-result-wide v1

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 54
    .line 55
    .line 56
    invoke-static/range {v1 .. v6}, Lj8/m;->p(JJJ)J

    .line 57
    move-result-wide p0

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1}, Lk8/d;->j(J)J

    .line 61
    move-result-wide p0

    .line 62
    return-wide p0
.end method
