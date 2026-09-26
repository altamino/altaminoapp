.class final Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/vector/VectorPainter;->n(Ljava/lang/String;FFLe8/r;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $content:Le8/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/r<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $tmp0_rcvr:Landroidx/compose/ui/graphics/vector/VectorPainter;

.field final synthetic $viewportHeight:F

.field final synthetic $viewportWidth:F


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/vector/VectorPainter;Ljava/lang/String;FFLe8/r;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;",
            "Ljava/lang/String;",
            "FF",
            "Le8/r<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$tmp0_rcvr:Landroidx/compose/ui/graphics/vector/VectorPainter;

    iput-object p2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$name:Ljava/lang/String;

    iput p3, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$viewportWidth:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$viewportHeight:F

    iput-object p5, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$content:Le8/r;

    iput p6, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 7
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$tmp0_rcvr:Landroidx/compose/ui/graphics/vector/VectorPainter;

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$name:Ljava/lang/String;

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$viewportWidth:F

    iget v3, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$viewportHeight:F

    iget-object v4, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$content:Le8/r;

    iget p2, p0, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->$$changed:I

    or-int/lit8 v6, p2, 0x1

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/VectorPainter;->n(Ljava/lang/String;FFLe8/r;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorPainter$RenderVector$3;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
