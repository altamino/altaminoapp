.class final Landroidx/compose/foundation/BorderKt$drawRectBorder$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/BorderKt;->l(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
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
.field final synthetic $brush:Landroidx/compose/ui/graphics/Brush;

.field final synthetic $rectTopLeft:J

.field final synthetic $size:J

.field final synthetic $style:Landroidx/compose/ui/graphics/drawscope/DrawStyle;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    iput-wide p2, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$rectTopLeft:J

    iput-wide p4, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$size:J

    iput-object p6, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$style:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 13
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$onDrawWithContent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->Z()V

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$brush:Landroidx/compose/ui/graphics/Brush;

    .line 11
    .line 12
    iget-wide v3, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$rectTopLeft:J

    .line 13
    .line 14
    iget-wide v5, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$size:J

    .line 15
    const/4 v7, 0x0

    .line 16
    .line 17
    iget-object v8, p0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->$style:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    .line 21
    const/16 v11, 0x68

    .line 22
    const/4 v12, 0x0

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/a;->m(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 27
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;->a(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
