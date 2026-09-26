.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->o(JFZLkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3"
    f = "WindowInsetsConnection.android.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $animationController:Landroid/view/WindowInsetsAnimationController;

.field final synthetic $current:I

.field final synthetic $flingAmount:F

.field final synthetic $target:I

.field final synthetic $targetShown:Z

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;IIFLandroid/view/WindowInsetsAnimationController;ZLkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;",
            "IIF",
            "Landroid/view/WindowInsetsAnimationController;",
            "Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    iput p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$current:I

    iput p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$target:I

    iput p4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$flingAmount:F

    iput-object p5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iput-boolean p6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$targetShown:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;

    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    iget v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$current:I

    iget v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$target:I

    iget v4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$flingAmount:F

    iget-object v5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$animationController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$targetShown:Z

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;IIFLandroid/view/WindowInsetsAnimationController;ZLkotlin/coroutines/d;)V

    iput-object p1, v8, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->L$0:Ljava/lang/Object;

    .line 13
    move-object v0, p1

    .line 14
    .line 15
    check-cast v0, Lkotlinx/coroutines/o0;

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->this$0:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    .line 21
    new-instance v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;

    .line 22
    .line 23
    iget v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$current:I

    .line 24
    .line 25
    iget v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$target:I

    .line 26
    .line 27
    iget v4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$flingAmount:F

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$animationController:Landroid/view/WindowInsetsAnimationController;

    .line 30
    .line 31
    iget-boolean v6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;->$targetShown:Z

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v1, v11

    .line 34
    move-object v7, p1

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;-><init>(IIFLandroid/view/WindowInsetsAnimationController;ZLandroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/d;)V

    .line 38
    const/4 v4, 0x3

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v1, v9

    .line 41
    move-object v2, v10

    .line 42
    move-object v3, v11

    .line 43
    .line 44
    .line 45
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlinx/coroutines/b2;)V

    .line 50
    .line 51
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 52
    return-object p1

    .line 53
    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p1
.end method
