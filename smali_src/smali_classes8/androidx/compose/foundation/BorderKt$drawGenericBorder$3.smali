.class final Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderKt;->k(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt$drawGenericBorder$3\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,459:1\n120#2,4:460\n*S KotlinDebug\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt$drawGenericBorder$3\n*L\n317#1:460,4\n*E\n"
.end annotation


# instance fields
.field final synthetic $cacheImageBitmap:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/ui/graphics/ImageBitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $pathBounds:Landroidx/compose/ui/geometry/Rect;

.field final synthetic $pathBoundsSize:J


# direct methods
.method constructor <init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/p0;JLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/ui/graphics/ImageBitmap;",
            ">;J",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$pathBounds:Landroidx/compose/ui/geometry/Rect;

    iput-object p2, p0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$cacheImageBitmap:Lkotlin/jvm/internal/p0;

    iput-wide p3, p0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$pathBoundsSize:J

    iput-object p5, p0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 20
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "$this$onDrawWithContent"

    .line 7
    .line 8
    move-object/from16 v15, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v15, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$pathBounds:Landroidx/compose/ui/geometry/Rect;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 20
    move-result v14

    .line 21
    .line 22
    iget-object v2, v0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$pathBounds:Landroidx/compose/ui/geometry/Rect;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 26
    move-result v12

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$cacheImageBitmap:Lkotlin/jvm/internal/p0;

    .line 29
    .line 30
    iget-wide v5, v0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$pathBoundsSize:J

    .line 31
    .line 32
    iget-object v13, v0, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 33
    .line 34
    .line 35
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-interface {v3, v14, v12}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b(FF)V

    .line 44
    .line 45
    iget-object v2, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    const-wide/16 v7, 0x0

    .line 52
    .line 53
    const-wide/16 v9, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    move/from16 v18, v12

    .line 59
    .line 60
    move-object/from16 v12, v16

    .line 61
    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    move/from16 v19, v14

    .line 65
    .line 66
    move/from16 v14, v16

    .line 67
    .line 68
    move/from16 v15, v16

    .line 69
    .line 70
    const/16 v16, 0x37a

    .line 71
    .line 72
    const/16 v17, 0x0

    .line 73
    .line 74
    .line 75
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/drawscope/a;->f(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    move/from16 v2, v19

    .line 86
    neg-float v2, v2

    .line 87
    .line 88
    move/from16 v3, v18

    .line 89
    neg-float v3, v3

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b(FF)V

    .line 93
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;->a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
