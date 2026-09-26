.class public abstract Lh8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
.end annotation


# static fields
.field public static final Default:Lh8/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final defaultRandom:Lh8/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lh8/d$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lh8/d$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lh8/d;->Default:Lh8/d$a;

    .line 9
    .line 10
    sget-object v0, La8/b;->IMPLEMENTATIONS:La8/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, La8/a;->b()Lh8/d;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lh8/d;->defaultRandom:Lh8/d;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic a()Lh8/d;
    .locals 1

    .line 1
    sget-object v0, Lh8/d;->defaultRandom:Lh8/d;

    return-object v0
.end method


# virtual methods
.method public abstract b(I)I
.end method

.method public c()D
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x1a

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lh8/d;->b(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x1b

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lh8/d;->b(I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lh8/c;->a(II)D

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public d()I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lh8/d;->b(I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lh8/d;->f(II)I

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public f(II)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lh8/e;->b(II)V

    .line 4
    .line 5
    sub-int v0, p2, p1

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lh8/d;->d()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-gt p1, v0, :cond_0

    .line 19
    .line 20
    if-ge v0, p2, :cond_0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    neg-int p2, v0

    .line 23
    and-int/2addr p2, v0

    .line 24
    .line 25
    if-ne p2, v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lh8/e;->d(I)I

    .line 29
    move-result p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lh8/d;->b(I)I

    .line 33
    move-result p2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Lh8/d;->d()I

    .line 38
    move-result p2

    .line 39
    .line 40
    ushr-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    rem-int v1, p2, v0

    .line 43
    sub-int/2addr p2, v1

    .line 44
    .line 45
    add-int/lit8 v2, v0, -0x1

    .line 46
    add-int/2addr p2, v2

    .line 47
    .line 48
    if-ltz p2, :cond_2

    .line 49
    move p2, v1

    .line 50
    :goto_1
    add-int/2addr p1, p2

    .line 51
    return p1
.end method

.method public g()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lh8/d;->d()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    shl-long/2addr v0, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lh8/d;->d()I

    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    add-long/2addr v0, v2

    .line 15
    return-wide v0
.end method

.method public h(J)J
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1, p2}, Lh8/d;->i(JJ)J

    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public i(JJ)J
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4}, Lh8/e;->c(JJ)V

    .line 4
    .line 5
    sub-long v0, p3, p1

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-lez v4, :cond_3

    .line 12
    neg-long p3, v0

    .line 13
    and-long/2addr p3, v0

    .line 14
    .line 15
    cmp-long p3, p3, v0

    .line 16
    const/4 v4, 0x1

    .line 17
    .line 18
    if-nez p3, :cond_2

    .line 19
    long-to-int p3, v0

    .line 20
    .line 21
    const/16 p4, 0x20

    .line 22
    ushr-long/2addr v0, p4

    .line 23
    long-to-int v0, v0

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v1, 0xffffffffL

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Lh8/e;->d(I)I

    .line 34
    move-result p3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, Lh8/d;->b(I)I

    .line 38
    move-result p3

    .line 39
    :goto_0
    int-to-long p3, p3

    .line 40
    and-long/2addr p3, v1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    if-ne v0, v4, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lh8/d;->d()I

    .line 47
    move-result p3

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {v0}, Lh8/e;->d(I)I

    .line 52
    move-result p3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p3}, Lh8/d;->b(I)I

    .line 56
    move-result p3

    .line 57
    int-to-long v3, p3

    .line 58
    .line 59
    shl-long p3, v3, p4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lh8/d;->d()I

    .line 63
    move-result v0

    .line 64
    int-to-long v3, v0

    .line 65
    .line 66
    and-long v0, v3, v1

    .line 67
    add-long/2addr p3, v0

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lh8/d;->g()J

    .line 72
    move-result-wide p3

    .line 73
    ushr-long/2addr p3, v4

    .line 74
    .line 75
    rem-long v5, p3, v0

    .line 76
    sub-long/2addr p3, v5

    .line 77
    .line 78
    const-wide/16 v7, 0x1

    .line 79
    .line 80
    sub-long v7, v0, v7

    .line 81
    add-long/2addr p3, v7

    .line 82
    .line 83
    cmp-long p3, p3, v2

    .line 84
    .line 85
    if-ltz p3, :cond_2

    .line 86
    move-wide p3, v5

    .line 87
    :goto_1
    add-long/2addr p1, p3

    .line 88
    return-wide p1

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Lh8/d;->g()J

    .line 92
    move-result-wide v0

    .line 93
    .line 94
    cmp-long v2, p1, v0

    .line 95
    .line 96
    if-gtz v2, :cond_3

    .line 97
    .line 98
    cmp-long v2, v0, p3

    .line 99
    .line 100
    if-gez v2, :cond_3

    .line 101
    return-wide v0
.end method
