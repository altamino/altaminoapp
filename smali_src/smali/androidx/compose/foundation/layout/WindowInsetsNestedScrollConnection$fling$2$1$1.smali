.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $animationController:Landroid/view/WindowInsetsAnimationController;

.field final synthetic $endVelocity:Lkotlin/jvm/internal/m0;

.field final synthetic $hidden:I

.field final synthetic $shown:I

.field final synthetic $targetShown:Z

.field final synthetic this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;


# direct methods
.method constructor <init>(IILandroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/jvm/internal/m0;Landroid/view/WindowInsetsAnimationController;Z)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$hidden:I

    iput p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$shown:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    iput-object p4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$endVelocity:Lkotlin/jvm/internal/m0;

    iput-object p5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iput-boolean p6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$targetShown:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$hidden:I

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$shown:I

    .line 6
    int-to-float v1, v1

    .line 7
    .line 8
    cmpg-float v1, p1, v1

    .line 9
    .line 10
    if-gtz v1, :cond_0

    .line 11
    .line 12
    cmpg-float v0, v0, p1

    .line 13
    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->e(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;F)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$endVelocity:Lkotlin/jvm/internal/m0;

    .line 23
    .line 24
    iput p2, p1, Lkotlin/jvm/internal/m0;->element:F

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$animationController:Landroid/view/WindowInsetsAnimationController;

    .line 27
    .line 28
    iget-boolean p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->$targetShown:Z

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/k;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 34
    const/4 p2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->i(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Landroid/view/WindowInsetsAnimationController;)V

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->g(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)Lkotlinx/coroutines/b2;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    const/4 v0, 0x1

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2, v0, p2}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2$1$1;->a(FF)V

    .line 16
    .line 17
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 18
    return-object p1
.end method
