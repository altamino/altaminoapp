.class final Landroidx/compose/material/RangeSliderLogic$captureThumb$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/RangeSliderLogic;->b(ZFLandroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/o0;)V
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
    c = "androidx.compose.material.RangeSliderLogic$captureThumb$1"
    f = "Slider.kt"
    l = {
        0x411
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $draggingStart:Z

.field final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field label:I

.field final synthetic this$0:Landroidx/compose/material/RangeSliderLogic;


# direct methods
.method constructor <init>(Landroidx/compose/material/RangeSliderLogic;ZLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/RangeSliderLogic;",
            "Z",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/RangeSliderLogic$captureThumb$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->this$0:Landroidx/compose/material/RangeSliderLogic;

    iput-boolean p2, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->$draggingStart:Z

    iput-object p3, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;

    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->this$0:Landroidx/compose/material/RangeSliderLogic;

    iget-boolean v1, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->$draggingStart:Z

    iget-object v2, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;-><init>(Landroidx/compose/material/RangeSliderLogic;ZLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget v1, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->label:I

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
    iget-object p1, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->this$0:Landroidx/compose/material/RangeSliderLogic;

    .line 29
    .line 30
    iget-boolean v1, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->$draggingStart:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroidx/compose/material/RangeSliderLogic;->a(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 37
    .line 38
    iput v2, p0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;->label:I

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 48
    return-object p1
.end method
