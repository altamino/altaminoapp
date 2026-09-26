.class final Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt$focusable$2$5;->a(Landroidx/compose/ui/focus/FocusState;)V
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
    c = "androidx.compose.foundation.FocusableKt$focusable$2$5$1"
    f = "Focusable.kt"
    l = {
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $pinnableParent$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iput-object p2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
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

    new-instance p1, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;

    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 33
    const/4 p1, 0x0

    .line 34
    .line 35
    :try_start_1
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->a(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/PinnableParent;->a()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 45
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    move-object v4, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v1, p1

    .line 53
    .line 54
    :goto_0
    :try_start_2
    iget-object v3, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 55
    .line 56
    iput-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    iput v2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->label:I

    .line 59
    .line 60
    .line 61
    invoke-static {v3, p1, p0, v2, p1}, Landroidx/compose/foundation/relocation/a;->a(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    .line 64
    if-ne p1, v0, :cond_3

    .line 65
    return-object v0

    .line 66
    :cond_3
    move-object v0, v1

    .line 67
    .line 68
    :goto_1
    if-eqz v0, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;->a()V

    .line 72
    .line 73
    :cond_4
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 74
    return-object p1

    .line 75
    :catchall_2
    move-exception p1

    .line 76
    move-object v0, v1

    .line 77
    .line 78
    :goto_2
    if-eqz v0, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;->a()V

    .line 82
    :cond_5
    throw p1
.end method
