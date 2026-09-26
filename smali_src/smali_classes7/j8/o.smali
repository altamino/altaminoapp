.class Lj8/o;
.super Lj8/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1537:1\n1#2:1538\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj8/n;-><init>()V

    return-void
.end method

.method public static c(DD)D
    .locals 1

    .line 1
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static d(FF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static e(II)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static f(JJ)J
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "minimumValue"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    move-object p0, p1

    .line 18
    :cond_0
    return-object p0
.end method

.method public static h(DD)D
    .locals 1

    .line 1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static i(FF)F
    .locals 1

    .line 1
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static j(II)I
    .locals 0

    .line 1
    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static k(JJ)J
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static l(DDD)D
    .locals 1

    .line 1
    .line 2
    cmpl-double v0, p2, p4

    .line 3
    .line 4
    if-gtz v0, :cond_2

    .line 5
    .line 6
    cmpg-double v0, p0, p2

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    return-wide p2

    .line 10
    .line 11
    :cond_0
    cmpl-double p2, p0, p4

    .line 12
    .line 13
    if-lez p2, :cond_1

    .line 14
    return-wide p4

    .line 15
    :cond_1
    return-wide p0

    .line 16
    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v0, "Cannot coerce value to an empty range: maximum "

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p4, " is less than minimum "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const/16 p2, 0x2e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public static m(FFF)F
    .locals 2

    .line 1
    .line 2
    cmpl-float v0, p1, p2

    .line 3
    .line 4
    if-gtz v0, :cond_2

    .line 5
    .line 6
    cmpg-float v0, p0, p1

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    cmpl-float p1, p0, p2

    .line 12
    .line 13
    if-lez p1, :cond_1

    .line 14
    return p2

    .line 15
    :cond_1
    return p0

    .line 16
    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, " is less than minimum "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const/16 p1, 0x2e

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public static n(III)I
    .locals 2

    .line 1
    .line 2
    if-gt p1, p2, :cond_2

    .line 3
    .line 4
    if-ge p0, p1, :cond_0

    .line 5
    return p1

    .line 6
    .line 7
    :cond_0
    if-le p0, p2, :cond_1

    .line 8
    return p2

    .line 9
    :cond_1
    return p0

    .line 10
    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p2, " is less than minimum "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const/16 p1, 0x2e

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
.end method

.method public static o(ILj8/f;)I
    .locals 2
    .param p1    # Lj8/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj8/f<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "range"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lj8/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    check-cast p1, Lj8/e;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Lj8/m;->q(Ljava/lang/Comparable;Lj8/e;)Ljava/lang/Comparable;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    check-cast p0, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {p1}, Lj8/f;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Number;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 42
    move-result v0

    .line 43
    .line 44
    if-ge p0, v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    check-cast p0, Ljava/lang/Number;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 54
    move-result p0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-interface {p1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Ljava/lang/Number;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 65
    move-result v0

    .line 66
    .line 67
    if-le p0, v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    check-cast p0, Ljava/lang/Number;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 77
    move-result p0

    .line 78
    :cond_2
    :goto_0
    return p0

    .line 79
    .line 80
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v1, "Cannot coerce value to an empty range: "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const/16 p1, 0x2e

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0
.end method

.method public static p(JJJ)J
    .locals 1

    .line 1
    .line 2
    cmp-long v0, p2, p4

    .line 3
    .line 4
    if-gtz v0, :cond_2

    .line 5
    .line 6
    cmp-long v0, p0, p2

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    return-wide p2

    .line 10
    .line 11
    :cond_0
    cmp-long p2, p0, p4

    .line 12
    .line 13
    if-lez p2, :cond_1

    .line 14
    return-wide p4

    .line 15
    :cond_1
    return-wide p0

    .line 16
    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v0, "Cannot coerce value to an empty range: maximum "

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p4, " is less than minimum "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const/16 p2, 0x2e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public static q(Ljava/lang/Comparable;Lj8/e;)Ljava/lang/Comparable;
    .locals 2
    .param p0    # Ljava/lang/Comparable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lj8/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;",
            "Lj8/e<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "range"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lj8/e;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p0, v0}, Lj8/e;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0, p0}, Lj8/e;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lj8/f;->getStart()Ljava/lang/Comparable;

    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {p1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0, p0}, Lj8/e;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, p0, v0}, Lj8/e;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Lj8/f;->c()Ljava/lang/Comparable;

    .line 65
    move-result-object p0

    .line 66
    :cond_1
    :goto_0
    return-object p0

    .line 67
    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v1, "Cannot coerce value to an empty range: "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const/16 p1, 0x2e

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0
.end method

.method public static r(II)Lj8/g;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lj8/g;->Companion:Lj8/g$a;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1, v1}, Lj8/g$a;->a(III)Lj8/g;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static s(Lj8/i;Lh8/d;)I
    .locals 1
    .param p0    # Lj8/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lh8/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "random"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p1, p0}, Lh8/e;->e(Lh8/d;Lj8/i;)I

    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    .line 18
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
.end method

.method public static t(Lj8/g;)Lj8/g;
    .locals 3
    .param p0    # Lj8/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lj8/g;->Companion:Lj8/g$a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lj8/g;->f()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lj8/g;->e()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lj8/g;->g()I

    .line 19
    move-result p0

    .line 20
    neg-int p0, p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, p0}, Lj8/g$a;->a(III)Lj8/g;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static u(Lj8/g;I)Lj8/g;
    .locals 3
    .param p0    # Lj8/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lj8/n;->a(ZLjava/lang/Number;)V

    .line 18
    .line 19
    sget-object v0, Lj8/g;->Companion:Lj8/g$a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lj8/g;->e()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lj8/g;->f()I

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lj8/g;->g()I

    .line 31
    move-result p0

    .line 32
    .line 33
    if-lez p0, :cond_1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    neg-int p1, p1

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lj8/g$a;->a(III)Lj8/g;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static v(II)Lj8/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lj8/i;->Companion:Lj8/i$a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lj8/i$a;->a()Lj8/i;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lj8/i;

    .line 14
    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lj8/i;-><init>(II)V

    .line 19
    return-object v0
.end method
