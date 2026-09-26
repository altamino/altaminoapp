.class final Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ListItemKt;->c(FLandroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $offset:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;->$offset:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$Layout"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    .line 23
    const/16 v7, 0xb

    .line 24
    const/4 v8, 0x0

    .line 25
    move-wide v1, p3

    .line 26
    .line 27
    .line 28
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    invoke-interface {p2, v1, v2}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, v1}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 41
    move-result v1

    .line 42
    .line 43
    const/high16 v2, -0x80000000

    .line 44
    .line 45
    if-eq v1, v2, :cond_0

    .line 46
    .line 47
    iget v0, p0, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;->$offset:F

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 51
    move-result v0

    .line 52
    sub-int/2addr v0, v1

    .line 53
    .line 54
    .line 55
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 56
    move-result p3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 60
    move-result p4

    .line 61
    add-int/2addr p4, v0

    .line 62
    .line 63
    .line 64
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result p3

    .line 66
    :goto_0
    move v3, p3

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 71
    move-result p3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 75
    move-result p4

    .line 76
    .line 77
    .line 78
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result p3

    .line 80
    .line 81
    sget-object p4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    sget-object p4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p4}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 91
    move-result-wide v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 95
    move-result p4

    .line 96
    .line 97
    sub-int p4, p3, p4

    .line 98
    .line 99
    .line 100
    invoke-static {v0, p4}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 101
    move-result-wide v4

    .line 102
    .line 103
    .line 104
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 105
    move-result-object v6

    .line 106
    .line 107
    .line 108
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 109
    move-result-wide v0

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 113
    move-result v0

    .line 114
    goto :goto_0

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 118
    move-result v2

    .line 119
    const/4 v4, 0x0

    .line 120
    .line 121
    new-instance v5, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1$measure$1;

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, p2, v0}, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 125
    const/4 v6, 0x4

    .line 126
    const/4 v7, 0x0

    .line 127
    move-object v1, p1

    .line 128
    .line 129
    .line 130
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method

.method public synthetic b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->c(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->d(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->a(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->b(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method
