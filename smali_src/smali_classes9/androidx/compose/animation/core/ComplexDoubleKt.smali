.class public final Landroidx/compose/animation/core/ComplexDoubleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComplexDouble.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDoubleKt\n+ 2 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDouble\n*L\n1#1,112:1\n103#1:113\n107#1:119\n103#1:123\n103#1:134\n35#2,2:114\n72#2,3:116\n66#2,3:120\n35#2,2:124\n72#2,3:126\n35#2,2:129\n66#2,3:131\n35#2,2:135\n54#2,3:137\n*S KotlinDebug\n*F\n+ 1 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDoubleKt\n*L\n86#1:113\n87#1:119\n87#1:123\n107#1:134\n86#1:114,2\n86#1:116,3\n87#1:120,3\n87#1:124,2\n87#1:126,3\n103#1:129,2\n107#1:131,3\n107#1:135,2\n111#1:137,3\n*E\n"
.end annotation


# direct methods
.method public static final a(DDD)Lw7/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD)",
            "Lw7/u<",
            "Landroidx/compose/animation/core/ComplexDouble;",
            "Landroidx/compose/animation/core/ComplexDouble;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    neg-double v0, p2

    .line 2
    mul-double/2addr p2, p2

    .line 3
    .line 4
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 5
    mul-double/2addr v2, p0

    .line 6
    mul-double/2addr v2, p4

    .line 7
    sub-double/2addr p2, v2

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p3}, Landroidx/compose/animation/core/ComplexDoubleKt;->b(D)Landroidx/compose/animation/core/ComplexDouble;

    .line 11
    move-result-object p4

    .line 12
    .line 13
    .line 14
    invoke-static {p4}, Landroidx/compose/animation/core/ComplexDouble;->b(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 15
    move-result-wide v2

    .line 16
    add-double/2addr v2, v0

    .line 17
    .line 18
    .line 19
    invoke-static {p4, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->d(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 20
    .line 21
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 22
    mul-double/2addr p0, v2

    .line 23
    .line 24
    .line 25
    invoke-static {p4}, Landroidx/compose/animation/core/ComplexDouble;->b(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 26
    move-result-wide v2

    .line 27
    div-double/2addr v2, p0

    .line 28
    .line 29
    .line 30
    invoke-static {p4, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->d(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 31
    .line 32
    .line 33
    invoke-static {p4}, Landroidx/compose/animation/core/ComplexDouble;->a(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 34
    move-result-wide v2

    .line 35
    div-double/2addr v2, p0

    .line 36
    .line 37
    .line 38
    invoke-static {p4, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->c(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p3}, Landroidx/compose/animation/core/ComplexDoubleKt;->b(D)Landroidx/compose/animation/core/ComplexDouble;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->b(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 46
    move-result-wide v2

    .line 47
    const/4 p3, -0x1

    .line 48
    int-to-double v4, p3

    .line 49
    mul-double/2addr v2, v4

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->d(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->a(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 56
    move-result-wide v2

    .line 57
    mul-double/2addr v2, v4

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->c(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->b(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 64
    move-result-wide v2

    .line 65
    add-double/2addr v2, v0

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v2, v3}, Landroidx/compose/animation/core/ComplexDouble;->d(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->b(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 72
    move-result-wide v0

    .line 73
    div-double/2addr v0, p0

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->d(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Landroidx/compose/animation/core/ComplexDouble;->a(Landroidx/compose/animation/core/ComplexDouble;)D

    .line 80
    move-result-wide v0

    .line 81
    div-double/2addr v0, p0

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->c(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 85
    .line 86
    .line 87
    invoke-static {p4, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public static final b(D)Landroidx/compose/animation/core/ComplexDouble;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmpg-double v2, p0, v0

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Landroidx/compose/animation/core/ComplexDouble;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 12
    move-result-wide p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 16
    move-result-wide p0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v0, v1, p0, p1}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance v2, Landroidx/compose/animation/core/ComplexDouble;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    move-result-wide p0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, p1, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;-><init>(DD)V

    .line 30
    :goto_0
    return-object v2
.end method
