.class final Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->a(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2"
    f = "ScrollExtensions.kt"
    l = {
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $previousValue:Lkotlin/jvm/internal/m0;

.field final synthetic $value:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/internal/m0;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/m0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$value:F

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$previousValue:Lkotlin/jvm/internal/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 4
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

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;

    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$value:F

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$previousValue:Lkotlin/jvm/internal/m0;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;-><init>(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/internal/m0;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/foundation/gestures/ScrollScope;
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
            "Landroidx/compose/foundation/gestures/ScrollScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->f(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->label:I

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
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    iget v4, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$value:F

    .line 34
    const/4 v5, 0x0

    .line 35
    .line 36
    iget-object v6, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 37
    .line 38
    new-instance v7, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2$1;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->$previousValue:Lkotlin/jvm/internal/m0;

    .line 41
    .line 42
    .line 43
    invoke-direct {v7, v1, p1}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2$1;-><init>(Lkotlin/jvm/internal/m0;Landroidx/compose/foundation/gestures/ScrollScope;)V

    .line 44
    const/4 v9, 0x4

    .line 45
    const/4 v10, 0x0

    .line 46
    .line 47
    iput v2, p0, Landroidx/compose/foundation/gestures/ScrollExtensionsKt$animateScrollBy$2;->label:I

    .line 48
    move-object v8, p0

    .line 49
    .line 50
    .line 51
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->e(FFFLandroidx/compose/animation/core/AnimationSpec;Le8/p;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    return-object v0

    .line 56
    .line 57
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 58
    return-object p1
.end method
