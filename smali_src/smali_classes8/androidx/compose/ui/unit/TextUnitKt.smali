.class public final Landroidx/compose/ui/unit/TextUnitKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextUnit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextUnit.kt\nandroidx/compose/ui/unit/TextUnitKt\n*L\n1#1,383:1\n245#1:384\n*S KotlinDebug\n*F\n+ 1 TextUnit.kt\nandroidx/compose/ui/unit/TextUnitKt\n*L\n259#1:384\n*E\n"
.end annotation


# static fields
.field private static final UNIT_MASK:J = 0xff00000000L

.field private static final UNIT_TYPE_EM:J = 0x200000000L

.field private static final UNIT_TYPE_SP:J = 0x100000000L

.field private static final UNIT_TYPE_UNSPECIFIED:J


# direct methods
.method public static final a(FJ)J
    .locals 0
    .annotation runtime Landroidx/compose/ui/unit/ExperimentalUnitApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/unit/TextUnitKt;->h(JF)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final b(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "Cannot perform operation for Unspecified type."

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public static final c(JJ)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 20
    move-result-wide v2

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v1, "Cannot perform operation for "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 41
    move-result-wide p0

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitType;->i(J)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p0, " and "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 57
    move-result-wide p0

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitType;->i(J)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p1

    .line 79
    .line 80
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string p1, "Cannot perform operation for Unspecified type."

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0
.end method

.method public static final d(D)J
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x100000000L

    .line 6
    double-to-float p0, p0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->h(JF)J

    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static final e(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x100000000L

    .line 6
    int-to-float p0, p0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->h(JF)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final f(J)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->f(J)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p0, p0, v0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static final g(JJF)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->c(JJ)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->f(J)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 11
    move-result p0

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 19
    move-result p0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/unit/TextUnitKt;->h(JF)J

    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method

.method public static final h(JF)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    move-result p2

    .line 5
    int-to-long v0, p2

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v2, 0xffffffffL

    .line 11
    and-long/2addr v0, v2

    .line 12
    or-long/2addr p0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->c(J)J

    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method
