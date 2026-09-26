.class final Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1$2"
    f = "Slider.kt"
    l = {
        0x3ec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $draggingStart:Lkotlin/jvm/internal/k0;

.field final synthetic $finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

.field final synthetic $rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material/RangeSliderLogic;Lkotlin/jvm/internal/k0;Landroidx/compose/foundation/interaction/DragInteraction;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/RangeSliderLogic;",
            "Lkotlin/jvm/internal/k0;",
            "Landroidx/compose/foundation/interaction/DragInteraction;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    iput-object p2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$draggingStart:Lkotlin/jvm/internal/k0;

    iput-object p3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

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

    new-instance p1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;

    iget-object v0, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    iget-object v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$draggingStart:Lkotlin/jvm/internal/k0;

    iget-object v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;-><init>(Landroidx/compose/material/RangeSliderLogic;Lkotlin/jvm/internal/k0;Landroidx/compose/foundation/interaction/DragInteraction;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->label:I

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
    iget-object p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$draggingStart:Lkotlin/jvm/internal/k0;

    .line 31
    .line 32
    iget-boolean v1, v1, Lkotlin/jvm/internal/k0;->element:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroidx/compose/material/RangeSliderLogic;->a(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->$finishInteraction:Landroidx/compose/foundation/interaction/DragInteraction;

    .line 39
    .line 40
    iput v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1$1$2;->label:I

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    return-object p1
.end method
