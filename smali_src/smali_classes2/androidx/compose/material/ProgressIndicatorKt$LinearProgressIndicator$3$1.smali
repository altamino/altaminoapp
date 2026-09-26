.class final Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ProgressIndicatorKt;->g(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
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

.field final synthetic $firstLineHead$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $firstLineTail$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $secondLineHead$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $secondLineTail$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JJLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$backgroundColor:J

    iput-wide p3, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    iput-object p5, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail$delegate:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9
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
    move-result v0

    .line 14
    .line 15
    iget-wide v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$backgroundColor:J

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1, v2, v0}, Landroidx/compose/material/ProgressIndicatorKt;->x(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead$delegate:Landroidx/compose/runtime/State;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->q(Landroidx/compose/runtime/State;)F

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail$delegate:Landroidx/compose/runtime/State;

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroidx/compose/material/ProgressIndicatorKt;->r(Landroidx/compose/runtime/State;)F

    .line 30
    move-result v2

    .line 31
    sub-float/2addr v1, v2

    .line 32
    const/4 v8, 0x0

    .line 33
    .line 34
    cmpl-float v1, v1, v8

    .line 35
    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineHead$delegate:Landroidx/compose/runtime/State;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->q(Landroidx/compose/runtime/State;)F

    .line 42
    move-result v3

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$firstLineTail$delegate:Landroidx/compose/runtime/State;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->r(Landroidx/compose/runtime/State;)F

    .line 48
    move-result v4

    .line 49
    .line 50
    iget-wide v5, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    .line 51
    move-object v2, p1

    .line 52
    move v7, v0

    .line 53
    .line 54
    .line 55
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/ProgressIndicatorKt;->w(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V

    .line 56
    .line 57
    :cond_0
    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead$delegate:Landroidx/compose/runtime/State;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->s(Landroidx/compose/runtime/State;)F

    .line 61
    move-result v1

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail$delegate:Landroidx/compose/runtime/State;

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Landroidx/compose/material/ProgressIndicatorKt;->t(Landroidx/compose/runtime/State;)F

    .line 67
    move-result v2

    .line 68
    sub-float/2addr v1, v2

    .line 69
    .line 70
    cmpl-float v1, v1, v8

    .line 71
    .line 72
    if-lez v1, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineHead$delegate:Landroidx/compose/runtime/State;

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->s(Landroidx/compose/runtime/State;)F

    .line 78
    move-result v3

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$secondLineTail$delegate:Landroidx/compose/runtime/State;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Landroidx/compose/material/ProgressIndicatorKt;->t(Landroidx/compose/runtime/State;)F

    .line 84
    move-result v4

    .line 85
    .line 86
    iget-wide v5, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->$color:J

    .line 87
    move-object v2, p1

    .line 88
    move v7, v0

    .line 89
    .line 90
    .line 91
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/ProgressIndicatorKt;->w(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V

    .line 92
    :cond_1
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
