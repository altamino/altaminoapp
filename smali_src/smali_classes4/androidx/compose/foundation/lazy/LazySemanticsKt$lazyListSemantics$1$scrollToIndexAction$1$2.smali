.class final Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1;->b(I)Ljava/lang/Boolean;
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
    c = "androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2"
    f = "LazySemantics.kt"
    l = {
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "I",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput p2, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->$index:I

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

    new-instance p1, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget v1, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->$index:I

    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->label:I

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
    .line 14
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 29
    .line 30
    iget p1, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->$index:I

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    .line 35
    iput v2, p0, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2;->label:I

    .line 36
    move v2, p1

    .line 37
    move-object v4, p0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListState;->w(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    return-object v0

    .line 45
    .line 46
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 47
    return-object p1
.end method
