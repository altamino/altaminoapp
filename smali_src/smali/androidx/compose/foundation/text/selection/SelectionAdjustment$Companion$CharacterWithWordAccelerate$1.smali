.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final b(Landroidx/compose/ui/text/TextLayoutResult;I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->B(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eq p2, p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 14
    move-result p1

    .line 15
    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private final c(IIZZ)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    xor-int/2addr p3, p4

    if-eqz p3, :cond_3

    if-ge p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    if-le p1, p2, :cond_2

    :goto_0
    return v1
.end method

.method private final d(Landroidx/compose/ui/text/TextLayoutResult;IIIZZ)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->B(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->p(I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    if-ne v2, p3, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/compose/ui/text/TextLayoutResult;->t(I)I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/TextLayoutResult;->p(I)I

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x2

    .line 33
    .line 34
    if-ne v3, p3, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 38
    move-result p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p3, v0, v4, v1}, Landroidx/compose/ui/text/TextLayoutResult;->o(Landroidx/compose/ui/text/TextLayoutResult;IZILjava/lang/Object;)I

    .line 45
    move-result p1

    .line 46
    .line 47
    :goto_1
    if-ne v2, p4, :cond_2

    .line 48
    return p1

    .line 49
    .line 50
    :cond_2
    if-ne p1, p4, :cond_3

    .line 51
    return v2

    .line 52
    .line 53
    :cond_3
    add-int p3, v2, p1

    .line 54
    div-int/2addr p3, v4

    .line 55
    .line 56
    xor-int p4, p5, p6

    .line 57
    .line 58
    if-eqz p4, :cond_4

    .line 59
    .line 60
    if-gt p2, p3, :cond_5

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_4
    if-lt p2, p3, :cond_6

    .line 64
    :cond_5
    move v2, p1

    .line 65
    :cond_6
    :goto_2
    return v2
.end method

.method private final e(Landroidx/compose/ui/text/TextLayoutResult;IIIIZZ)I
    .locals 7

    .line 1
    .line 2
    if-ne p2, p3, :cond_0

    .line 3
    return p4

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->p(I)I

    .line 7
    move-result v3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p4}, Landroidx/compose/ui/text/TextLayoutResult;->p(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eq v3, v0, :cond_1

    .line 14
    move-object v0, p0

    .line 15
    move-object v1, p1

    .line 16
    move v2, p2

    .line 17
    move v4, p5

    .line 18
    move v5, p6

    .line 19
    move v6, p7

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->d(Landroidx/compose/ui/text/TextLayoutResult;IIIZZ)I

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, p2, p3, p6, p7}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->c(IIZZ)Z

    .line 28
    move-result p3

    .line 29
    .line 30
    if-nez p3, :cond_2

    .line 31
    return p2

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0, p1, p4}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->b(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    .line 35
    move-result p3

    .line 36
    .line 37
    if-nez p3, :cond_3

    .line 38
    return p2

    .line 39
    :cond_3
    move-object v0, p0

    .line 40
    move-object v1, p1

    .line 41
    move v2, p2

    .line 42
    move v4, p5

    .line 43
    move v5, p6

    .line 44
    move v6, p7

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->d(Landroidx/compose/ui/text/TextLayoutResult;IIIZZ)I

    .line 48
    move-result p1

    .line 49
    return p1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J
    .locals 8
    .param p1    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/text/TextRange;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "textLayoutResult"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p6, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->$$INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->g()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 13
    move-result-object v1

    .line 14
    move-object v2, p1

    .line 15
    move-wide v3, p2

    .line 16
    move v5, p4

    .line 17
    move v6, p5

    .line 18
    move-object v7, p6

    .line 19
    .line 20
    .line 21
    invoke-interface/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->a(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J

    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 33
    move-result p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 49
    move-result-wide p3

    .line 50
    .line 51
    .line 52
    invoke-static {p3, p4}, Landroidx/compose/ui/text/TextRange;->m(J)Z

    .line 53
    move-result p3

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1, p5, p3}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->a(IIZZ)J

    .line 57
    move-result-wide p1

    .line 58
    return-wide p1

    .line 59
    .line 60
    :cond_1
    if-eqz p5, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 68
    move-result-wide p5

    .line 69
    .line 70
    .line 71
    invoke-static {p5, p6}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 72
    move-result v4

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x1

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->m(J)Z

    .line 81
    move-result v7

    .line 82
    move-object v0, p0

    .line 83
    move-object v1, p1

    .line 84
    move v3, p4

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->e(Landroidx/compose/ui/text/TextLayoutResult;IIIIZZ)I

    .line 88
    move-result p1

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 92
    move-result p2

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 97
    move-result p5

    .line 98
    .line 99
    .line 100
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 101
    move-result v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 105
    move-result-wide v0

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->i(J)I

    .line 109
    move-result v4

    .line 110
    .line 111
    .line 112
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->n(J)I

    .line 113
    move-result v5

    .line 114
    const/4 v6, 0x0

    .line 115
    .line 116
    .line 117
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->m(J)Z

    .line 118
    move-result v7

    .line 119
    move-object v0, p0

    .line 120
    move-object v1, p1

    .line 121
    move v3, p4

    .line 122
    .line 123
    .line 124
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->e(Landroidx/compose/ui/text/TextLayoutResult;IIIIZZ)I

    .line 125
    move-result p2

    .line 126
    move p1, p5

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 130
    move-result-wide p1

    .line 131
    return-wide p1
.end method
