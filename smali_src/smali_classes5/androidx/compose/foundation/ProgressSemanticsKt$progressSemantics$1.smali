.class final Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ProgressSemanticsKt;->b(Landroidx/compose/ui/Modifier;FLj8/e;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $steps:I

.field final synthetic $value:F

.field final synthetic $valueRange:Lj8/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(FLj8/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lj8/e<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->$value:F

    iput-object p2, p0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->$valueRange:Lj8/e;

    iput p3, p0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->$steps:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$semantics"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->$value:F

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->$valueRange:Lj8/e;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lj8/m;->q(Ljava/lang/Comparable;Lj8/e;)Ljava/lang/Comparable;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 25
    move-result v1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->$valueRange:Lj8/e;

    .line 28
    .line 29
    iget v3, p0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->$steps:I

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLj8/e;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->P(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/ProgressBarRangeInfo;)V

    .line 36
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
