.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private final transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/ui/graphics/Canvas;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->e()Landroidx/compose/ui/graphics/Canvas;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public b(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->l(J)V

    .line 10
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->h()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    return-object v0
.end method
