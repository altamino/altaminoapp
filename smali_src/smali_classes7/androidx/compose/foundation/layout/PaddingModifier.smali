.class final Landroidx/compose/foundation/layout/PaddingModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPadding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingModifier\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,436:1\n155#2:437\n155#2:438\n155#2:439\n155#2:440\n*S KotlinDebug\n*F\n+ 1 Padding.kt\nandroidx/compose/foundation/layout/PaddingModifier\n*L\n338#1:437\n339#1:438\n340#1:439\n341#1:440\n*E\n"
.end annotation


# instance fields
.field private final bottom:F

.field private final end:F

.field private final rtlAware:Z

.field private final start:F

.field private final top:F


# direct methods
.method private constructor <init>(FFFFZLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFZ",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p6}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingModifier;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingModifier;->end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingModifier;->bottom:F

    iput-boolean p5, p0, Landroidx/compose/foundation/layout/PaddingModifier;->rtlAware:Z

    const/4 p5, 0x0

    cmpl-float p6, p1, p5

    if-gez p6, :cond_0

    .line 3
    sget-object p6, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p6}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result p6

    invoke-static {p1, p6}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    cmpl-float p1, p2, p5

    if-gez p1, :cond_1

    .line 4
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    cmpl-float p1, p3, p5

    if-gez p1, :cond_2

    .line 5
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result p1

    invoke-static {p3, p1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    cmpl-float p1, p4, p5

    if-gez p1, :cond_4

    .line 6
    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result p1

    invoke-static {p4, p1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Padding must be non-negative"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(FFFFZLe8/l;ILkotlin/jvm/internal/k;)V
    .locals 10

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, v1

    .line 8
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    int-to-float v0, v1

    .line 9
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    int-to-float v0, v1

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v0

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p3

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    int-to-float v0, v1

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v0

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, p4

    :goto_3
    const/4 v9, 0x0

    move-object v2, p0

    move v7, p5

    move-object/from16 v8, p6

    .line 12
    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/layout/PaddingModifier;-><init>(FFFFZLe8/l;Lkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(FFFFZLe8/l;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/layout/PaddingModifier;-><init>(FFFFZLe8/l;)V

    return-void
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic K(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->d(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingModifier;->start:F

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->end:F

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 22
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->top:F

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 29
    move-result v1

    .line 30
    .line 31
    iget v2, p0, Landroidx/compose/foundation/layout/PaddingModifier;->bottom:F

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 35
    move-result v2

    .line 36
    add-int/2addr v1, v2

    .line 37
    neg-int v2, v0

    .line 38
    neg-int v3, v1

    .line 39
    .line 40
    .line 41
    invoke-static {p3, p4, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->i(JII)J

    .line 42
    move-result-wide v2

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 50
    move-result v2

    .line 51
    add-int/2addr v2, v0

    .line 52
    .line 53
    .line 54
    invoke-static {p3, p4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    .line 55
    move-result v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    .line 63
    invoke-static {p3, p4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x0

    .line 66
    .line 67
    new-instance v7, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;

    .line 68
    .line 69
    .line 70
    invoke-direct {v7, p0, p2, p1}, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;-><init>(Landroidx/compose/foundation/layout/PaddingModifier;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V

    .line 71
    const/4 v8, 0x4

    .line 72
    const/4 v9, 0x0

    .line 73
    move-object v3, p1

    .line 74
    .line 75
    .line 76
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method public synthetic S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->b(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/PaddingModifier;->rtlAware:Z

    return v0
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingModifier;->start:F

    return v0
.end method

.method public final c()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingModifier;->top:F

    return v0
.end method

.method public synthetic c0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->a(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingModifier;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/foundation/layout/PaddingModifier;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    return v0

    .line 13
    .line 14
    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->start:F

    .line 15
    .line 16
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingModifier;->start:F

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->top:F

    .line 25
    .line 26
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingModifier;->top:F

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->end:F

    .line 35
    .line 36
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingModifier;->end:F

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->bottom:F

    .line 45
    .line 46
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingModifier;->bottom:F

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->rtlAware:Z

    .line 55
    .line 56
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/PaddingModifier;->rtlAware:Z

    .line 57
    .line 58
    if-ne v1, p1, :cond_2

    .line 59
    const/4 v0, 0x1

    .line 60
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingModifier;->start:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->top:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->end:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->bottom:F

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/PaddingModifier;->rtlAware:Z

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public synthetic s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->c(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method
