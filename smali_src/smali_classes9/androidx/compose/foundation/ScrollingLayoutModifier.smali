.class final Landroidx/compose/foundation/ScrollingLayoutModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field private final isReversed:Z

.field private final isVertical:Z

.field private final overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollerState:Landroidx/compose/foundation/ScrollState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/foundation/OverscrollEffect;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/ScrollState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/OverscrollEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "scrollerState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "overscrollEffect"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    .line 16
    .line 17
    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    .line 18
    .line 19
    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 20
    .line 21
    iput-object p4, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 22
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

.method public K(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 14
    move-result p1

    .line 15
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
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {p3, p4, v0}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 23
    .line 24
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 25
    .line 26
    .line 27
    const v1, 0x7fffffff

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    move v7, v1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 35
    move-result v0

    .line 36
    move v7, v0

    .line 37
    .line 38
    :goto_1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 44
    move-result v1

    .line 45
    :cond_2
    move v5, v1

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v8, 0x5

    .line 49
    const/4 v9, 0x0

    .line 50
    move-wide v2, p3

    .line 51
    .line 52
    .line 53
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 54
    move-result-wide v0

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 62
    move-result v0

    .line 63
    .line 64
    .line 65
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lj8/m;->j(II)I

    .line 70
    move-result v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 78
    move-result p3

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p3}, Lj8/m;->j(II)I

    .line 82
    move-result v4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 86
    move-result p3

    .line 87
    sub-int/2addr p3, v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 91
    move-result p4

    .line 92
    sub-int/2addr p4, v3

    .line 93
    .line 94
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move p3, p4

    .line 99
    .line 100
    :goto_2
    iget-object p4, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 101
    .line 102
    if-eqz p3, :cond_4

    .line 103
    const/4 v0, 0x1

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    const/4 v0, 0x0

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-interface {p4, v0}, Landroidx/compose/foundation/OverscrollEffect;->setEnabled(Z)V

    .line 109
    const/4 v5, 0x0

    .line 110
    .line 111
    new-instance v6, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;

    .line 112
    .line 113
    .line 114
    invoke-direct {v6, p0, p3, p2}, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;-><init>(Landroidx/compose/foundation/ScrollingLayoutModifier;ILandroidx/compose/ui/layout/Placeable;)V

    .line 115
    const/4 v7, 0x4

    .line 116
    const/4 v8, 0x0

    .line 117
    move-object v2, p1

    .line 118
    .line 119
    .line 120
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 121
    move-result-object p1

    .line 122
    return-object p1
.end method

.method public S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Landroidx/compose/foundation/ScrollState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    return-object v0
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    return v0
.end method

.method public c0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 14
    move-result p1

    .line 15
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
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/ScrollingLayoutModifier;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    iget-object v3, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-object p1, p1, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollingLayoutModifier(scrollerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->scrollerState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isReversed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isReversed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->isVertical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overscrollEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
