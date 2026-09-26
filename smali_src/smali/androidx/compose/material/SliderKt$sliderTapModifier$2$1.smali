.class final Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$sliderTapModifier$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
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
    c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1"
    f = "Slider.kt"
    l = {
        0x372
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $draggableState:Landroidx/compose/foundation/gestures/DraggableState;

.field final synthetic $gestureEndAction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $isRtl:Z

.field final synthetic $maxPx:F

.field final synthetic $pressOffset:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffset:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lkotlinx/coroutines/o0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlinx/coroutines/o0;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlinx/coroutines/o0;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$isRtl:Z

    iput p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$maxPx:F

    iput-object p3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$pressOffset:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$rawOffset:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$scope:Lkotlinx/coroutines/o0;

    iput-object p6, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 10
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

    new-instance v9, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;

    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$isRtl:Z

    iget v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$maxPx:F

    iget-object v3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$pressOffset:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$rawOffset:Landroidx/compose/runtime/State;

    iget-object v5, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$scope:Lkotlinx/coroutines/o0;

    iget-object v6, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    iget-object v7, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;-><init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlinx/coroutines/o0;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    iput-object p1, v9, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->L$0:Ljava/lang/Object;

    return-object v9
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->label:I

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
    iget-object p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->L$0:Ljava/lang/Object;

    .line 29
    move-object v3, p1

    .line 30
    .line 31
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    .line 35
    new-instance p1, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;

    .line 36
    .line 37
    iget-boolean v7, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$isRtl:Z

    .line 38
    .line 39
    iget v8, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$maxPx:F

    .line 40
    .line 41
    iget-object v9, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$pressOffset:Landroidx/compose/runtime/MutableState;

    .line 42
    .line 43
    iget-object v10, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$rawOffset:Landroidx/compose/runtime/State;

    .line 44
    const/4 v11, 0x0

    .line 45
    move-object v6, p1

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v6 .. v11}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1;-><init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 49
    .line 50
    new-instance v7, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$scope:Lkotlinx/coroutines/o0;

    .line 53
    .line 54
    iget-object v6, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 55
    .line 56
    iget-object v8, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 57
    .line 58
    .line 59
    invoke-direct {v7, v1, v6, v8}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$2;-><init>(Lkotlinx/coroutines/o0;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/runtime/State;)V

    .line 60
    const/4 v9, 0x3

    .line 61
    const/4 v10, 0x0

    .line 62
    .line 63
    iput v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1;->label:I

    .line 64
    move-object v6, p1

    .line 65
    move-object v8, p0

    .line 66
    .line 67
    .line 68
    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->k(Landroidx/compose/ui/input/pointer/PointerInputScope;Le8/l;Le8/l;Le8/q;Le8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    if-ne p1, v0, :cond_2

    .line 72
    return-object v0

    .line 73
    .line 74
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 75
    return-object p1
.end method
