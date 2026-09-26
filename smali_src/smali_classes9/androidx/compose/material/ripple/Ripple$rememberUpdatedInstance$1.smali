.class final Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ripple/Ripple;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/IndicationInstance;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRipple.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ripple.kt\nandroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,355:1\n72#2,3:356\n*S KotlinDebug\n*F\n+ 1 Ripple.kt\nandroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1\n*L\n136#1:356,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1"
    f = "Ripple.kt"
    l = {
        0x164
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $instance:Landroidx/compose/material/ripple/RippleIndicationInstance;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/ripple/RippleIndicationInstance;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/material/ripple/RippleIndicationInstance;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->$instance:Landroidx/compose/material/ripple/RippleIndicationInstance;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
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

    new-instance v0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;

    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->$instance:Landroidx/compose/material/ripple/RippleIndicationInstance;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/ripple/RippleIndicationInstance;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->label:I

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
    iget-object p1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lkotlinx/coroutines/o0;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Landroidx/compose/foundation/interaction/InteractionSource;->c()Lkotlinx/coroutines/flow/g;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->$instance:Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 39
    .line 40
    new-instance v4, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v3, p1}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;-><init>(Landroidx/compose/material/ripple/RippleIndicationInstance;Lkotlinx/coroutines/o0;)V

    .line 44
    .line 45
    iput v2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->label:I

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    return-object v0

    .line 53
    .line 54
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 55
    return-object p1
.end method
