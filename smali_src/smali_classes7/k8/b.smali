.class public final Lk8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk8/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk8/b;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1495:1\n38#1:1496\n38#1:1497\n38#1:1498\n38#1:1499\n38#1:1500\n683#1,2:1501\n700#1,2:1510\n163#2,6:1503\n1#3:1509\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n39#1:1496\n40#1:1497\n458#1:1498\n478#1:1499\n662#1:1500\n979#1:1501,2\n1070#1:1510,2\n1021#1:1503,6\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lk8/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INFINITE:J

.field private static final NEG_INFINITE:J

.field private static final ZERO:J


# instance fields
.field private final rawValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lk8/b$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lk8/b$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lk8/b;->Companion:Lk8/b$a;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lk8/b;->j(J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lk8/b;->ZERO:J

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lk8/d;->b(J)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    sput-wide v0, Lk8/b;->INFINITE:J

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lk8/d;->b(J)J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    sput-wide v0, Lk8/b;->NEG_INFINITE:J

    .line 39
    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lk8/b;->rawValue:J

    .line 6
    return-void
.end method

.method public static final A(J)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->D(J)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method private static final B(J)Z
    .locals 0

    .line 1
    long-to-int p0, p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static final C(J)Z
    .locals 0

    .line 1
    long-to-int p0, p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final D(J)Z
    .locals 2

    .line 1
    sget-wide v0, Lk8/b;->INFINITE:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lk8/b;->NEG_INFINITE:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

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

.method public static final E(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final F(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final G(JJ)J
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->D(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Lk8/b;->A(J)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    xor-long/2addr p2, p0

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long p2, p2, v0

    .line 18
    .line 19
    if-ltz p2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    return-wide p0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {p2, p3}, Lk8/b;->D(J)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    return-wide p2

    .line 37
    :cond_3
    long-to-int v0, p0

    .line 38
    .line 39
    and-int/lit8 v0, v0, 0x1

    .line 40
    long-to-int v1, p2

    .line 41
    .line 42
    and-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    if-ne v0, v1, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3}, Lk8/b;->y(J)J

    .line 52
    move-result-wide p2

    .line 53
    add-long/2addr v0, p2

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lk8/b;->C(J)Z

    .line 57
    move-result p0

    .line 58
    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lk8/d;->e(J)J

    .line 63
    move-result-wide p0

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-static {v0, v1}, Lk8/d;->c(J)J

    .line 68
    move-result-wide p0

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-static {p0, p1}, Lk8/b;->B(J)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    .line 78
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 79
    move-result-wide v3

    .line 80
    .line 81
    .line 82
    invoke-static {p2, p3}, Lk8/b;->y(J)J

    .line 83
    move-result-wide v5

    .line 84
    move-wide v1, p0

    .line 85
    .line 86
    .line 87
    invoke-static/range {v1 .. v6}, Lk8/b;->d(JJJ)J

    .line 88
    move-result-wide p0

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-static {p2, p3}, Lk8/b;->y(J)J

    .line 93
    move-result-wide v2

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 97
    move-result-wide v4

    .line 98
    move-wide v0, p0

    .line 99
    .line 100
    .line 101
    invoke-static/range {v0 .. v5}, Lk8/b;->d(JJJ)J

    .line 102
    move-result-wide p0

    .line 103
    :goto_1
    return-wide p0
.end method

.method public static final H(JLk8/e;)D
    .locals 2
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
    sget-wide v0, Lk8/b;->INFINITE:J

    .line 8
    .line 9
    cmp-long v0, p0, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    sget-wide v0, Lk8/b;->NEG_INFINITE:J

    .line 17
    .line 18
    cmp-long v0, p0, v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 27
    move-result-wide v0

    .line 28
    long-to-double v0, v0

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lk8/b;->x(J)Lk8/e;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, p0, p2}, Lk8/f;->a(DLk8/e;Lk8/e;)D

    .line 36
    move-result-wide p0

    .line 37
    :goto_0
    return-wide p0
.end method

.method public static final I(J)Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Lk8/b;->E(J)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x2d

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    :cond_0
    const-string v0, "PT"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lk8/b;->n(J)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lk8/b;->q(J)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lk8/b;->u(J)I

    .line 33
    move-result v4

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lk8/b;->w(J)I

    .line 37
    move-result v5

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lk8/b;->v(J)I

    .line 41
    move-result v6

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Lk8/b;->D(J)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v2, 0x9184e729fffL

    .line 53
    .line 54
    :cond_1
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    cmp-long v0, v2, v0

    .line 57
    const/4 v1, 0x0

    .line 58
    const/4 v7, 0x1

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    move v0, v7

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v0, v1

    .line 64
    .line 65
    :goto_0
    if-nez v5, :cond_4

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v9, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    move v9, v7

    .line 72
    .line 73
    :goto_2
    if-nez v4, :cond_5

    .line 74
    .line 75
    if-eqz v9, :cond_6

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    :cond_5
    move v1, v7

    .line 79
    .line 80
    :cond_6
    if-eqz v0, :cond_7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const/16 v2, 0x48

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    :cond_7
    if-eqz v1, :cond_8

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const/16 v2, 0x4d

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    :cond_8
    if-nez v9, :cond_9

    .line 101
    .line 102
    if-nez v0, :cond_a

    .line 103
    .line 104
    if-nez v1, :cond_a

    .line 105
    .line 106
    :cond_9
    const/16 v7, 0x9

    .line 107
    .line 108
    const-string v9, "S"

    .line 109
    const/4 v10, 0x1

    .line 110
    move-wide v0, p0

    .line 111
    move-object v2, v8

    .line 112
    move v3, v5

    .line 113
    move v4, v6

    .line 114
    move v5, v7

    .line 115
    move-object v6, v9

    .line 116
    move v7, v10

    .line 117
    .line 118
    .line 119
    invoke-static/range {v0 .. v7}, Lk8/b;->e(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    const-string p1, "toString(...)"

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    return-object p0
.end method

.method public static final J(JLk8/e;)J
    .locals 2
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
    sget-wide v0, Lk8/b;->INFINITE:J

    .line 8
    .line 9
    cmp-long v0, p0, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide p0, 0x7fffffffffffffffL

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-wide v0, Lk8/b;->NEG_INFINITE:J

    .line 20
    .line 21
    cmp-long v0, p0, v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-wide/high16 p0, -0x8000000000000000L

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lk8/b;->x(J)Lk8/e;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, p0, p2}, Lk8/f;->b(JLk8/e;Lk8/e;)J

    .line 38
    move-result-wide p0

    .line 39
    :goto_0
    return-wide p0
.end method

.method public static K(J)Ljava/lang/String;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p0, v0

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const-string p0, "0s"

    .line 9
    .line 10
    goto/16 :goto_7

    .line 11
    .line 12
    :cond_0
    sget-wide v2, Lk8/b;->INFINITE:J

    .line 13
    .line 14
    cmp-long v2, p0, v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string p0, "Infinity"

    .line 19
    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_1
    sget-wide v2, Lk8/b;->NEG_INFINITE:J

    .line 23
    .line 24
    cmp-long v2, p0, v2

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    const-string p0, "-Infinity"

    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-static {p0, p1}, Lk8/b;->E(J)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    new-instance v11, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const/16 v3, 0x2d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-static {p0, p1}, Lk8/b;->n(J)J

    .line 50
    move-result-wide v3

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4}, Lk8/b;->p(J)J

    .line 54
    move-result-wide v5

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4}, Lk8/b;->o(J)I

    .line 58
    move-result v7

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v4}, Lk8/b;->u(J)I

    .line 62
    move-result v8

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v4}, Lk8/b;->w(J)I

    .line 66
    move-result v9

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4}, Lk8/b;->v(J)I

    .line 70
    move-result v10

    .line 71
    .line 72
    cmp-long v0, v5, v0

    .line 73
    const/4 v1, 0x0

    .line 74
    const/4 v12, 0x1

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    move v0, v12

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    move v0, v1

    .line 80
    .line 81
    :goto_0
    if-eqz v7, :cond_5

    .line 82
    move v3, v12

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    move v3, v1

    .line 85
    .line 86
    :goto_1
    if-eqz v8, :cond_6

    .line 87
    move v4, v12

    .line 88
    goto :goto_2

    .line 89
    :cond_6
    move v4, v1

    .line 90
    .line 91
    :goto_2
    if-nez v9, :cond_8

    .line 92
    .line 93
    if-eqz v10, :cond_7

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    move v13, v1

    .line 96
    goto :goto_4

    .line 97
    :cond_8
    :goto_3
    move v13, v12

    .line 98
    .line 99
    :goto_4
    if-eqz v0, :cond_9

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const/16 v1, 0x64

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    move v1, v12

    .line 109
    .line 110
    :cond_9
    const/16 v5, 0x20

    .line 111
    .line 112
    if-nez v3, :cond_a

    .line 113
    .line 114
    if-eqz v0, :cond_c

    .line 115
    .line 116
    if-nez v4, :cond_a

    .line 117
    .line 118
    if-eqz v13, :cond_c

    .line 119
    .line 120
    :cond_a
    add-int/lit8 v6, v1, 0x1

    .line 121
    .line 122
    if-lez v1, :cond_b

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_b
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const/16 v1, 0x68

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    move v1, v6

    .line 135
    .line 136
    :cond_c
    if-nez v4, :cond_d

    .line 137
    .line 138
    if-eqz v13, :cond_f

    .line 139
    .line 140
    if-nez v3, :cond_d

    .line 141
    .line 142
    if-eqz v0, :cond_f

    .line 143
    .line 144
    :cond_d
    add-int/lit8 v6, v1, 0x1

    .line 145
    .line 146
    if-lez v1, :cond_e

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    :cond_e
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const/16 v1, 0x6d

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    move v1, v6

    .line 159
    .line 160
    :cond_f
    if-eqz v13, :cond_15

    .line 161
    .line 162
    add-int/lit8 v13, v1, 0x1

    .line 163
    .line 164
    if-lez v1, :cond_10

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    :cond_10
    if-nez v9, :cond_14

    .line 170
    .line 171
    if-nez v0, :cond_14

    .line 172
    .line 173
    if-nez v3, :cond_14

    .line 174
    .line 175
    if-eqz v4, :cond_11

    .line 176
    goto :goto_5

    .line 177
    .line 178
    .line 179
    :cond_11
    const v0, 0xf4240

    .line 180
    .line 181
    if-lt v10, v0, :cond_12

    .line 182
    .line 183
    div-int v6, v10, v0

    .line 184
    .line 185
    rem-int v7, v10, v0

    .line 186
    const/4 v8, 0x6

    .line 187
    .line 188
    const-string v9, "ms"

    .line 189
    const/4 v10, 0x0

    .line 190
    move-wide v3, p0

    .line 191
    move-object v5, v11

    .line 192
    .line 193
    .line 194
    invoke-static/range {v3 .. v10}, Lk8/b;->e(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 195
    goto :goto_6

    .line 196
    .line 197
    :cond_12
    const/16 v0, 0x3e8

    .line 198
    .line 199
    if-lt v10, v0, :cond_13

    .line 200
    .line 201
    div-int/lit16 v6, v10, 0x3e8

    .line 202
    .line 203
    rem-int/lit16 v7, v10, 0x3e8

    .line 204
    const/4 v8, 0x3

    .line 205
    .line 206
    const-string v9, "us"

    .line 207
    const/4 v10, 0x0

    .line 208
    move-wide v3, p0

    .line 209
    move-object v5, v11

    .line 210
    .line 211
    .line 212
    invoke-static/range {v3 .. v10}, Lk8/b;->e(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 213
    goto :goto_6

    .line 214
    .line 215
    .line 216
    :cond_13
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string p0, "ns"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    goto :goto_6

    .line 223
    .line 224
    :cond_14
    :goto_5
    const/16 v8, 0x9

    .line 225
    .line 226
    const-string v0, "s"

    .line 227
    const/4 v1, 0x0

    .line 228
    move-wide v3, p0

    .line 229
    move-object v5, v11

    .line 230
    move v6, v9

    .line 231
    move v7, v10

    .line 232
    move-object v9, v0

    .line 233
    move v10, v1

    .line 234
    .line 235
    .line 236
    invoke-static/range {v3 .. v10}, Lk8/b;->e(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    .line 237
    :goto_6
    move v1, v13

    .line 238
    .line 239
    :cond_15
    if-eqz v2, :cond_16

    .line 240
    .line 241
    if-le v1, v12, :cond_16

    .line 242
    .line 243
    const/16 p0, 0x28

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v12, p0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 247
    move-result-object p0

    .line 248
    .line 249
    const/16 p1, 0x29

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    :cond_16
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p0

    .line 257
    .line 258
    const-string p1, "toString(...)"

    .line 259
    .line 260
    .line 261
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :goto_7
    return-object p0
.end method

.method public static final L(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 4
    move-result-wide v0

    .line 5
    neg-long v0, v0

    .line 6
    long-to-int p0, p0

    .line 7
    .line 8
    and-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lk8/d;->a(JI)J

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lk8/b;->INFINITE:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Lk8/b;->NEG_INFINITE:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Lk8/b;->ZERO:J

    return-wide v0
.end method

.method private static final d(JJJ)J
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p4, p5}, Lk8/d;->g(J)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    add-long v0, p2, p0

    .line 7
    .line 8
    new-instance p2, Lj8/l;

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v2, -0x431bde82d7aL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v4, 0x431bde82d7aL

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v2, v3, v4, v5}, Lj8/l;-><init>(JJ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0, v1}, Lj8/l;->j(J)Z

    .line 25
    move-result p2

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lk8/d;->f(J)J

    .line 31
    move-result-wide p0

    .line 32
    sub-long/2addr p4, p0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lk8/d;->f(J)J

    .line 36
    move-result-wide p0

    .line 37
    add-long/2addr p0, p4

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lk8/d;->d(J)J

    .line 41
    move-result-wide p0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 53
    .line 54
    .line 55
    invoke-static/range {v0 .. v5}, Lj8/m;->p(JJJ)J

    .line 56
    move-result-wide p0

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Lk8/d;->b(J)J

    .line 60
    move-result-wide p0

    .line 61
    :goto_0
    return-wide p0
.end method

.method private static final e(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-eqz p4, :cond_4

    .line 6
    .line 7
    const/16 p0, 0x2e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const/16 p1, 0x30

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p5, p1}, Lkotlin/text/k;->n0(Ljava/lang/String;IC)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 24
    move-result p3

    .line 25
    const/4 p4, -0x1

    .line 26
    add-int/2addr p3, p4

    .line 27
    .line 28
    if-ltz p3, :cond_2

    .line 29
    .line 30
    :goto_0
    add-int/lit8 p5, p3, -0x1

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eq v0, p1, :cond_0

    .line 37
    move p4, p3

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_0
    if-gez p5, :cond_1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move p3, p5

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    :goto_1
    add-int/lit8 p1, p4, 0x1

    .line 46
    .line 47
    const-string p3, "append(...)"

    .line 48
    const/4 p5, 0x0

    .line 49
    const/4 v0, 0x3

    .line 50
    .line 51
    if-nez p7, :cond_3

    .line 52
    .line 53
    if-ge p1, v0, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p0, p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    add-int/2addr p4, v0

    .line 62
    div-int/2addr p4, v0

    .line 63
    mul-int/2addr p4, v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p0, p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_2
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method

.method public static final synthetic f(J)Lk8/b;
    .locals 1

    .line 1
    new-instance v0, Lk8/b;

    invoke-direct {v0, p0, p1}, Lk8/b;-><init>(J)V

    return-object v0
.end method

.method public static i(JJ)I
    .locals 4

    .line 1
    .line 2
    xor-long v0, p0, p2

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-ltz v2, :cond_2

    .line 9
    long-to-int v0, v0

    .line 10
    .line 11
    and-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    long-to-int v0, p0

    .line 16
    .line 17
    and-int/lit8 v0, v0, 0x1

    .line 18
    long-to-int p2, p2

    .line 19
    .line 20
    and-int/lit8 p2, p2, 0x1

    .line 21
    sub-int/2addr v0, p2

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lk8/b;->E(J)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    neg-int v0, v0

    .line 29
    :cond_1
    return v0

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/t;->m(JJ)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public static j(J)J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lk8/c;->a()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lk8/b;->C(J)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lj8/l;

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v1, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v3, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lj8/l;-><init>(JJ)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lj8/l;->j(J)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 50
    move-result-wide p0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p0, " ns is out of nanoseconds range"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 66
    throw v0

    .line 67
    .line 68
    :cond_1
    new-instance v0, Lj8/l;

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    const-wide v1, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1, v2, v3, v4}, Lj8/l;-><init>(JJ)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 85
    move-result-wide v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lj8/l;->j(J)Z

    .line 89
    move-result v0

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    new-instance v0, Lj8/l;

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const-wide v1, -0x431bde82d7aL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    const-wide v3, 0x431bde82d7aL

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1, v2, v3, v4}, Lj8/l;-><init>(JJ)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 110
    move-result-wide v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lj8/l;->j(J)Z

    .line 114
    move-result v0

    .line 115
    .line 116
    if-nez v0, :cond_2

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 128
    move-result-wide p0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string p0, " ms is denormalized"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    .line 142
    .line 143
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 144
    throw v0

    .line 145
    .line 146
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 155
    move-result-wide p0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string p0, " ms is out of milliseconds range"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    .line 169
    .line 170
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 171
    throw v0

    .line 172
    :cond_4
    :goto_0
    return-wide p0
.end method

.method public static k(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Lk8/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lk8/b;

    invoke-virtual {p2}, Lk8/b;->M()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final l(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final n(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->E(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lk8/b;->L(J)J

    .line 10
    move-result-wide p0

    .line 11
    :cond_0
    return-wide p0
.end method

.method public static final o(J)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->D(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1}, Lk8/b;->q(J)J

    .line 12
    move-result-wide p0

    .line 13
    .line 14
    const/16 v0, 0x18

    .line 15
    int-to-long v0, v0

    .line 16
    rem-long/2addr p0, v0

    .line 17
    long-to-int p0, p0

    .line 18
    :goto_0
    return p0
.end method

.method public static final p(J)J
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lk8/e;->DAYS:Lk8/e;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lk8/b;->J(JLk8/e;)J

    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final q(J)J
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lk8/e;->HOURS:Lk8/e;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lk8/b;->J(JLk8/e;)J

    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final r(J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->B(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lk8/b;->A(J)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 16
    move-result-wide p0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lk8/e;->MILLISECONDS:Lk8/e;

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Lk8/b;->J(JLk8/e;)J

    .line 23
    move-result-wide p0

    .line 24
    :goto_0
    return-wide p0
.end method

.method public static final s(J)J
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lk8/e;->MINUTES:Lk8/e;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lk8/b;->J(JLk8/e;)J

    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final t(J)J
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lk8/e;->SECONDS:Lk8/e;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lk8/b;->J(JLk8/e;)J

    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final u(J)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->D(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1}, Lk8/b;->s(J)J

    .line 12
    move-result-wide p0

    .line 13
    .line 14
    const/16 v0, 0x3c

    .line 15
    int-to-long v0, v0

    .line 16
    rem-long/2addr p0, v0

    .line 17
    long-to-int p0, p0

    .line 18
    :goto_0
    return p0
.end method

.method public static final v(J)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->D(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1}, Lk8/b;->B(J)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 18
    move-result-wide p0

    .line 19
    .line 20
    const/16 v0, 0x3e8

    .line 21
    int-to-long v0, v0

    .line 22
    rem-long/2addr p0, v0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lk8/d;->f(J)J

    .line 26
    move-result-wide p0

    .line 27
    :goto_0
    long-to-int p0, p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p0, p1}, Lk8/b;->y(J)J

    .line 32
    move-result-wide p0

    .line 33
    .line 34
    .line 35
    const v0, 0x3b9aca00

    .line 36
    int-to-long v0, v0

    .line 37
    rem-long/2addr p0, v0

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    return p0
.end method

.method public static final w(J)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->D(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1}, Lk8/b;->t(J)J

    .line 12
    move-result-wide p0

    .line 13
    .line 14
    const/16 v0, 0x3c

    .line 15
    int-to-long v0, v0

    .line 16
    rem-long/2addr p0, v0

    .line 17
    long-to-int p0, p0

    .line 18
    :goto_0
    return p0
.end method

.method private static final x(J)Lk8/e;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lk8/b;->C(J)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lk8/e;->NANOSECONDS:Lk8/e;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object p0, Lk8/e;->MILLISECONDS:Lk8/e;

    .line 12
    :goto_0
    return-object p0
.end method

.method private static final y(J)J
    .locals 1

    .line 1
    const/4 v0, 0x1

    shr-long/2addr p0, v0

    return-wide p0
.end method

.method public static z(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic M()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk8/b;->rawValue:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    check-cast p1, Lk8/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lk8/b;->M()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lk8/b;->h(J)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lk8/b;->rawValue:J

    invoke-static {v0, v1, p1}, Lk8/b;->k(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(J)I
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lk8/b;->rawValue:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lk8/b;->i(JJ)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lk8/b;->rawValue:J

    invoke-static {v0, v1}, Lk8/b;->z(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lk8/b;->rawValue:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lk8/b;->K(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
