.class final Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ProgressIndicatorKt;->h(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $backgroundColor:J

.field final synthetic $color:J

.field final synthetic $progress:F


# direct methods
.method constructor <init>(JFJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$backgroundColor:J

    iput p3, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$progress:F

    iput-wide p4, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$color:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$Canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 13
    move-result v7

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$backgroundColor:J

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, v1, v7}, Landroidx/compose/material/ProgressIndicatorKt;->x(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    iget v4, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$progress:F

    .line 22
    .line 23
    iget-wide v5, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;->$color:J

    .line 24
    move-object v2, p1

    .line 25
    .line 26
    .line 27
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/ProgressIndicatorKt;->w(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V

    .line 28
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
