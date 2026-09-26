.class final Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldKt;->j(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $indicatorBorder:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $strokeWidthDp:F


# direct methods
.method constructor <init>(FLandroidx/compose/foundation/BorderStroke;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;->$strokeWidthDp:F

    iput-object p2, p0, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;->$indicatorBorder:Landroidx/compose/foundation/BorderStroke;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 16
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "$this$drawWithContent"

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 13
    .line 14
    iget v1, v0, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;->$strokeWidthDp:F

    .line 15
    .line 16
    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->a()F

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    iget v1, v0, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;->$strokeWidthDp:F

    .line 30
    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 33
    move-result v3

    .line 34
    .line 35
    mul-float v8, v1, v3

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 39
    move-result-wide v3

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 43
    move-result v1

    .line 44
    const/4 v3, 0x2

    .line 45
    int-to-float v3, v3

    .line 46
    .line 47
    div-float v3, v8, v3

    .line 48
    sub-float/2addr v1, v3

    .line 49
    .line 50
    iget-object v3, v0, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;->$indicatorBorder:Landroidx/compose/foundation/BorderStroke;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Landroidx/compose/foundation/BorderStroke;->a()Landroidx/compose/ui/graphics/Brush;

    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static {v4, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 59
    move-result-wide v4

    .line 60
    .line 61
    .line 62
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 63
    move-result-wide v6

    .line 64
    .line 65
    .line 66
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 67
    move-result v6

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v1}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 71
    move-result-wide v6

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    .line 78
    const/16 v14, 0x1f0

    .line 79
    const/4 v15, 0x0

    .line 80
    .line 81
    move-object/from16 v2, p1

    .line 82
    .line 83
    .line 84
    invoke-static/range {v2 .. v15}, Landroidx/compose/ui/graphics/drawscope/a;->h(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;->a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
