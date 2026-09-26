.class final Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1$gestures$1"
    f = "Toggleable.kt"
    l = {
        0x10e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $delayPressInteraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onClickState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/a<",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $pressedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/a<",
            "Lw7/l0;",
            ">;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$onClickState:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 8
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

    new-instance v7, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;

    iget-boolean v1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    iget-object v2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    iget-object v5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$onClickState:Landroidx/compose/runtime/State;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    iput-object p1, v7, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputScope;
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
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->label:I

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
    iget-object p1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 31
    .line 32
    new-instance v1, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$1;

    .line 33
    .line 34
    iget-boolean v4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    .line 35
    .line 36
    iget-object v5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 37
    .line 38
    iget-object v6, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 39
    .line 40
    iget-object v7, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v3, v1

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 46
    .line 47
    new-instance v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$2;

    .line 48
    .line 49
    iget-boolean v4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    .line 50
    .line 51
    iget-object v5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$onClickState:Landroidx/compose/runtime/State;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4, v5}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$2;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 55
    .line 56
    iput v2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->label:I

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1, v3, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->i(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/q;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    return-object v0

    .line 64
    .line 65
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 66
    return-object p1
.end method
