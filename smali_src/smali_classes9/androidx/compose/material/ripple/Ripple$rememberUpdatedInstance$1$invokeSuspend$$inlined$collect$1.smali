.class public final Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h<",
        "Landroidx/compose/foundation/interaction/Interaction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Ripple.kt\nandroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1\n*L\n1#1,134:1\n137#2,7:135\n*E\n"
.end annotation


# instance fields
.field final synthetic $$this$LaunchedEffect$inlined:Lkotlinx/coroutines/o0;

.field final synthetic $instance$inlined:Landroidx/compose/material/ripple/RippleIndicationInstance;


# direct methods
.method public constructor <init>(Landroidx/compose/material/ripple/RippleIndicationInstance;Lkotlinx/coroutines/o0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$instance$inlined:Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$$this$LaunchedEffect$inlined:Lkotlinx/coroutines/o0;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 3
    .line 4
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$instance$inlined:Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$$this$LaunchedEffect$inlined:Lkotlinx/coroutines/o0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ripple/RippleIndicationInstance;->e(Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlinx/coroutines/o0;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$instance$inlined:Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 23
    .line 24
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Release;->a()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/compose/material/ripple/RippleIndicationInstance;->g(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$instance$inlined:Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 39
    .line 40
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->a()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroidx/compose/material/ripple/RippleIndicationInstance;->g(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$instance$inlined:Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1;->$$this$LaunchedEffect$inlined:Lkotlinx/coroutines/o0;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ripple/RippleIndicationInstance;->h(Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/o0;)V

    .line 56
    .line 57
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 58
    return-object p1
.end method
