.class final Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/AlignmentLineKt;->c(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/AlignmentLine;FFLandroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

.field final synthetic $before:F

.field final synthetic $height:I

.field final synthetic $paddingAfter:I

.field final synthetic $paddingBefore:I

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    iput p2, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$before:F

    iput p3, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$paddingBefore:I

    iput p4, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$width:I

    iput p5, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$paddingAfter:I

    iput-object p6, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$height:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$layout"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/foundation/layout/AlignmentLineKt;->b(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    move v4, v1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$before:F

    .line 19
    .line 20
    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$paddingBefore:I

    .line 33
    :goto_0
    move v4, v0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    iget v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$width:I

    .line 37
    .line 38
    iget v2, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$paddingAfter:I

    .line 39
    sub-int/2addr v0, v2

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 45
    move-result v2

    .line 46
    sub-int/2addr v0, v2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :goto_1
    iget-object v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/compose/foundation/layout/AlignmentLineKt;->b(Landroidx/compose/ui/layout/AlignmentLine;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    :goto_2
    move v5, v1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_2
    iget v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$before:F

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 65
    move-result v1

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    iget v1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$paddingBefore:I

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_3
    iget v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$height:I

    .line 77
    .line 78
    iget v1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$paddingAfter:I

    .line 79
    sub-int/2addr v0, v1

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 85
    move-result v1

    .line 86
    .line 87
    sub-int v1, v0, v1

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :goto_3
    iget-object v3, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x4

    .line 93
    const/4 v8, 0x0

    .line 94
    move-object v2, p1

    .line 95
    .line 96
    .line 97
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/AlignmentLineKt$alignmentLineOffsetMeasure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
