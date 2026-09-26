.class public Landroidx/compose/material/SwipeableState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/SwipeableState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,890:1\n20#2:891\n22#2:895\n50#3:892\n55#3:894\n106#4:893\n76#5:896\n102#5,2:897\n76#5:899\n102#5,2:900\n76#5:902\n102#5,2:903\n76#5:933\n102#5,2:934\n76#5:936\n102#5,2:937\n76#5:939\n102#5,2:940\n2190#6,14:905\n2190#6,14:919\n1#7:942\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState\n*L\n128#1:891\n128#1:895\n128#1:892\n128#1:894\n128#1:893\n91#1:896\n91#1:897,2\n97#1:899\n97#1:900,2\n124#1:902\n124#1:903,2\n195#1:933\n195#1:934,2\n197#1:936\n197#1:937,2\n199#1:939\n199#1:940,2\n174#1:905,14\n180#1:919,14\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material/SwipeableState$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final absoluteOffset:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final anchors$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animationTarget:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final confirmStateChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currentValue$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final draggableState:Landroidx/compose/foundation/gestures/DraggableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxBound:F

.field private minBound:F

.field private final offsetState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final overflowState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resistance$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thresholds$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/SwipeableState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/SwipeableState$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/material/SwipeableState;->Companion:Landroidx/compose/material/SwipeableState$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/l;)V
    .locals 2
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "animationSpec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmStateChange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/material/SwipeableState;->confirmStateChange:Le8/l;

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 2
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    .line 5
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableState;

    .line 6
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 7
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 8
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 9
    new-instance v0, Landroidx/compose/material/SwipeableState$latestNonEmptyAnchorsFlow$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/SwipeableState$latestNonEmptyAnchorsFlow$1;-><init>(Landroidx/compose/material/SwipeableState;)V

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->o(Le8/a;)Lkotlinx/coroutines/flow/g;

    move-result-object v0

    .line 10
    new-instance v1, Landroidx/compose/material/SwipeableState$special$$inlined$filter$1;

    invoke-direct {v1, v0}, Landroidx/compose/material/SwipeableState$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/g;)V

    const/4 v0, 0x1

    .line 11
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/i;->L(Lkotlinx/coroutines/flow/g;I)Lkotlinx/coroutines/flow/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/g;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    sget-object v0, Landroidx/compose/material/SwipeableState$thresholds$2;->INSTANCE:Landroidx/compose/material/SwipeableState$thresholds$2;

    .line 12
    invoke-static {v0, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .line 13
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;

    .line 14
    invoke-static {p2, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 15
    new-instance p1, Landroidx/compose/material/SwipeableState$draggableState$1;

    invoke-direct {p1, p0}, Landroidx/compose/material/SwipeableState$draggableState$1;-><init>(Landroidx/compose/material/SwipeableState;)V

    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Le8/l;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/l;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 16
    sget-object p2, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {p2}, Landroidx/compose/material/SwipeableDefaults;->a()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Landroidx/compose/material/SwipeableState$1;->INSTANCE:Landroidx/compose/material/SwipeableState$1;

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/SwipeableState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/l;)V

    return-void
.end method

.method private final D(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method private final E(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private final I(FLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/material/SwipeableState$snapInternalToOffset$2;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p1, p0, v3}, Landroidx/compose/material/SwipeableState$snapInternalToOffset$2;-><init>(FLandroidx/compose/material/SwipeableState;Lkotlin/coroutines/d;)V

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v3, p2

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/a;->a(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    if-ne p1, p2, :cond_0

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 26
    return-object p1
.end method

.method public static final synthetic a(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/SwipeableState;->i(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/material/SwipeableState;->overflowState:Landroidx/compose/runtime/MutableState;

    .line 3
    return-object p0
.end method

.method public static final synthetic f(Landroidx/compose/material/SwipeableState;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/material/SwipeableState;->D(Z)V

    .line 4
    return-void
.end method

.method public static final synthetic g(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/material/SwipeableState;->E(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/material/SwipeableState;FLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/material/SwipeableState;->I(FLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0, p1, p2, v3}, Landroidx/compose/material/SwipeableState$animateInternalToOffset$2;-><init>(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v3, p3

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/a;->a(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    if-ne p1, p2, :cond_0

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 26
    return-object p1
.end method

.method public static synthetic k(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    if-nez p5, :cond_1

    .line 3
    .line 4
    and-int/lit8 p4, p4, 0x2

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SwipeableState;->j(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    const-string p1, "Super calls with default arguments not supported in this target, function: animateTo"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method


# virtual methods
.method public final A(FLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
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
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/material/SwipeableState$performFling$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Landroidx/compose/material/SwipeableState$performFling$2;-><init>(Landroidx/compose/material/SwipeableState;F)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 21
    return-object p1
.end method

.method public final B(Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
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
    instance-of v0, p3, Landroidx/compose/material/SwipeableState$processNewAnchors$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Landroidx/compose/material/SwipeableState$processNewAnchors$1;-><init>(Landroidx/compose/material/SwipeableState;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    .line 46
    .line 47
    iget-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p2, Ljava/util/Map;

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Landroidx/compose/material/SwipeableState;

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    :catchall_0
    move-exception p3

    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1

    .line 70
    .line 71
    :cond_2
    iget p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    .line 72
    .line 73
    iget-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p2, Ljava/util/Map;

    .line 76
    .line 77
    iget-object v2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Landroidx/compose/material/SwipeableState;

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    goto/16 :goto_5

    .line 85
    :catchall_1
    move-exception p3

    .line 86
    move-object v0, v2

    .line 87
    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 99
    move-result p3

    .line 100
    .line 101
    if-eqz p3, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lkotlin/collections/t;->A0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 116
    move-result p1

    .line 117
    .line 118
    iput p1, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 119
    .line 120
    .line 121
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lkotlin/collections/t;->y0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 133
    move-result p1

    .line 134
    .line 135
    iput p1, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-static {p2, p1}, Landroidx/compose/material/SwipeableKt;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 149
    move-result p1

    .line 150
    .line 151
    iput v5, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1, v0}, Landroidx/compose/material/SwipeableState;->I(FLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    if-ne p1, v1, :cond_5

    .line 158
    return-object v1

    .line 159
    .line 160
    :cond_5
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 161
    return-object p1

    .line 162
    .line 163
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string p2, "The initial value must have an associated anchor."

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    move-result-object p2

    .line 170
    .line 171
    .line 172
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    throw p1

    .line 174
    .line 175
    .line 176
    :cond_7
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    move-result p3

    .line 178
    .line 179
    if-nez p3, :cond_16

    .line 180
    .line 181
    const/high16 p3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 182
    .line 183
    iput p3, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 184
    .line 185
    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 186
    .line 187
    iput p3, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 188
    .line 189
    iget-object p3, p0, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 190
    .line 191
    .line 192
    invoke-interface {p3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 193
    move-result-object p3

    .line 194
    .line 195
    check-cast p3, Ljava/lang/Float;

    .line 196
    const/4 v2, 0x0

    .line 197
    .line 198
    if-eqz p3, :cond_d

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    move-result-object p1

    .line 203
    .line 204
    .line 205
    invoke-static {p2, p1}, Landroidx/compose/material/SwipeableKt;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    if-eqz p1, :cond_8

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 212
    move-result p1

    .line 213
    .line 214
    goto/16 :goto_4

    .line 215
    .line 216
    .line 217
    :cond_8
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object v5

    .line 223
    .line 224
    .line 225
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result p1

    .line 227
    .line 228
    if-nez p1, :cond_9

    .line 229
    goto :goto_2

    .line 230
    .line 231
    .line 232
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    .line 236
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    move-result p1

    .line 238
    .line 239
    if-nez p1, :cond_a

    .line 240
    goto :goto_2

    .line 241
    :cond_a
    move-object p1, v2

    .line 242
    .line 243
    check-cast p1, Ljava/lang/Number;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 247
    move-result p1

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 251
    move-result v6

    .line 252
    sub-float/2addr p1, v6

    .line 253
    .line 254
    .line 255
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 256
    move-result p1

    .line 257
    .line 258
    .line 259
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    move-result-object v6

    .line 261
    move-object v7, v6

    .line 262
    .line 263
    check-cast v7, Ljava/lang/Number;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 267
    move-result v7

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 271
    move-result v8

    .line 272
    sub-float/2addr v7, v8

    .line 273
    .line 274
    .line 275
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 276
    move-result v7

    .line 277
    .line 278
    .line 279
    invoke-static {p1, v7}, Ljava/lang/Float;->compare(FF)I

    .line 280
    move-result v8

    .line 281
    .line 282
    if-lez v8, :cond_c

    .line 283
    move-object v2, v6

    .line 284
    move p1, v7

    .line 285
    .line 286
    .line 287
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    move-result v6

    .line 289
    .line 290
    if-nez v6, :cond_b

    .line 291
    .line 292
    .line 293
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 294
    .line 295
    check-cast v2, Ljava/lang/Number;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 299
    move-result p1

    .line 300
    .line 301
    goto/16 :goto_4

    .line 302
    .line 303
    .line 304
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 305
    move-result-object p3

    .line 306
    .line 307
    .line 308
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 309
    move-result-object p3

    .line 310
    .line 311
    .line 312
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-result-object p1

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 317
    move-result-object p3

    .line 318
    .line 319
    .line 320
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    move-result p3

    .line 322
    .line 323
    if-eqz p3, :cond_e

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 327
    move-result-object p1

    .line 328
    .line 329
    .line 330
    :cond_e
    invoke-static {p2, p1}, Landroidx/compose/material/SwipeableKt;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    .line 331
    move-result-object p1

    .line 332
    .line 333
    if-eqz p1, :cond_f

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 337
    move-result p1

    .line 338
    goto :goto_4

    .line 339
    .line 340
    .line 341
    :cond_f
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 342
    move-result-object p1

    .line 343
    .line 344
    .line 345
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 346
    move-result-object p1

    .line 347
    .line 348
    .line 349
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    move-result p3

    .line 351
    .line 352
    if-nez p3, :cond_10

    .line 353
    goto :goto_3

    .line 354
    .line 355
    .line 356
    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    move-result-object v2

    .line 358
    .line 359
    .line 360
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    move-result p3

    .line 362
    .line 363
    if-nez p3, :cond_11

    .line 364
    goto :goto_3

    .line 365
    :cond_11
    move-object p3, v2

    .line 366
    .line 367
    check-cast p3, Ljava/lang/Number;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 371
    move-result p3

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 375
    move-result-object v5

    .line 376
    .line 377
    .line 378
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 379
    move-result-object v5

    .line 380
    .line 381
    check-cast v5, Ljava/lang/Number;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 385
    move-result v5

    .line 386
    sub-float/2addr p3, v5

    .line 387
    .line 388
    .line 389
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 390
    move-result p3

    .line 391
    .line 392
    .line 393
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    move-result-object v5

    .line 395
    move-object v6, v5

    .line 396
    .line 397
    check-cast v6, Ljava/lang/Number;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 401
    move-result v6

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 405
    move-result-object v7

    .line 406
    .line 407
    .line 408
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 409
    move-result-object v7

    .line 410
    .line 411
    check-cast v7, Ljava/lang/Number;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 415
    move-result v7

    .line 416
    sub-float/2addr v6, v7

    .line 417
    .line 418
    .line 419
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 420
    move-result v6

    .line 421
    .line 422
    .line 423
    invoke-static {p3, v6}, Ljava/lang/Float;->compare(FF)I

    .line 424
    move-result v7

    .line 425
    .line 426
    if-lez v7, :cond_13

    .line 427
    move-object v2, v5

    .line 428
    move p3, v6

    .line 429
    .line 430
    .line 431
    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    move-result v5

    .line 433
    .line 434
    if-nez v5, :cond_12

    .line 435
    .line 436
    .line 437
    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 438
    .line 439
    check-cast v2, Ljava/lang/Number;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 443
    move-result p1

    .line 444
    .line 445
    :goto_4
    :try_start_2
    iget-object p3, p0, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 446
    .line 447
    iput-object p0, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    .line 448
    .line 449
    iput-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    .line 450
    .line 451
    iput p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    .line 452
    .line 453
    iput v4, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    .line 454
    .line 455
    .line 456
    invoke-direct {p0, p1, p3, v0}, Landroidx/compose/material/SwipeableState;->i(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 457
    move-result-object p3
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 458
    .line 459
    if-ne p3, v1, :cond_14

    .line 460
    return-object v1

    .line 461
    :cond_14
    move-object v2, p0

    .line 462
    .line 463
    .line 464
    :goto_5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 465
    move-result-object p1

    .line 466
    .line 467
    .line 468
    invoke-static {p2, p1}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-result-object p1

    .line 470
    .line 471
    .line 472
    invoke-direct {v2, p1}, Landroidx/compose/material/SwipeableState;->E(Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 476
    move-result-object p1

    .line 477
    .line 478
    .line 479
    invoke-static {p1}, Lkotlin/collections/t;->A0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 480
    move-result-object p1

    .line 481
    .line 482
    .line 483
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 487
    move-result p1

    .line 488
    .line 489
    iput p1, v2, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 490
    .line 491
    .line 492
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 493
    move-result-object p1

    .line 494
    .line 495
    .line 496
    invoke-static {p1}, Lkotlin/collections/t;->y0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 497
    move-result-object p1

    .line 498
    .line 499
    .line 500
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 504
    move-result p1

    .line 505
    .line 506
    iput p1, v2, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 507
    goto :goto_8

    .line 508
    :catchall_2
    move-exception p3

    .line 509
    move-object v0, p0

    .line 510
    goto :goto_7

    .line 511
    :catch_0
    move-object v2, p0

    .line 512
    .line 513
    :catch_1
    :try_start_3
    iput-object v2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$0:Ljava/lang/Object;

    .line 514
    .line 515
    iput-object p2, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->L$1:Ljava/lang/Object;

    .line 516
    .line 517
    iput p1, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->F$0:F

    .line 518
    .line 519
    iput v3, v0, Landroidx/compose/material/SwipeableState$processNewAnchors$1;->label:I

    .line 520
    .line 521
    .line 522
    invoke-direct {v2, p1, v0}, Landroidx/compose/material/SwipeableState;->I(FLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 523
    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 524
    .line 525
    if-ne p3, v1, :cond_15

    .line 526
    return-object v1

    .line 527
    :cond_15
    move-object v0, v2

    .line 528
    .line 529
    .line 530
    :goto_6
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 531
    move-result-object p1

    .line 532
    .line 533
    .line 534
    invoke-static {p2, p1}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    move-result-object p1

    .line 536
    .line 537
    .line 538
    invoke-direct {v0, p1}, Landroidx/compose/material/SwipeableState;->E(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 542
    move-result-object p1

    .line 543
    .line 544
    .line 545
    invoke-static {p1}, Lkotlin/collections/t;->A0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 546
    move-result-object p1

    .line 547
    .line 548
    .line 549
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 553
    move-result p1

    .line 554
    .line 555
    iput p1, v0, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 556
    .line 557
    .line 558
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 559
    move-result-object p1

    .line 560
    .line 561
    .line 562
    invoke-static {p1}, Lkotlin/collections/t;->y0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 563
    move-result-object p1

    .line 564
    .line 565
    .line 566
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 570
    move-result p1

    .line 571
    .line 572
    iput p1, v0, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 573
    goto :goto_8

    .line 574
    .line 575
    .line 576
    :goto_7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 577
    move-result-object p1

    .line 578
    .line 579
    .line 580
    invoke-static {p2, p1}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    move-result-object p1

    .line 582
    .line 583
    .line 584
    invoke-direct {v0, p1}, Landroidx/compose/material/SwipeableState;->E(Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 588
    move-result-object p1

    .line 589
    .line 590
    .line 591
    invoke-static {p1}, Lkotlin/collections/t;->A0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 592
    move-result-object p1

    .line 593
    .line 594
    .line 595
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 599
    move-result p1

    .line 600
    .line 601
    iput p1, v0, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 602
    .line 603
    .line 604
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 605
    move-result-object p1

    .line 606
    .line 607
    .line 608
    invoke-static {p1}, Lkotlin/collections/t;->y0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 609
    move-result-object p1

    .line 610
    .line 611
    .line 612
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 616
    move-result p1

    .line 617
    .line 618
    iput p1, v0, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 619
    throw p3

    .line 620
    .line 621
    :cond_16
    :goto_8
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 622
    return-object p1
.end method

.method public final C(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<set-?>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final F(Landroidx/compose/material/ResistanceConfig;)V
    .locals 1
    .param p1    # Landroidx/compose/material/ResistanceConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final G(Le8/p;)V
    .locals 1
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<set-?>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final H(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final j(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
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
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->latestNonEmptyAnchorsFlow:Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/material/SwipeableState$animateTo$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p0, p2}, Landroidx/compose/material/SwipeableState$animateTo$2;-><init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Landroidx/compose/animation/core/AnimationSpec;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, p3}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 21
    return-object p1
.end method

.method public final l(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "newAnchors"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->m()Ljava/util/Map;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroidx/compose/material/SwipeableKt;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v0, "The initial value must have an associated anchor."

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->anchors$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Map;

    .line 9
    return-object v0
.end method

.method public final n()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final o()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->confirmStateChange:Le8/l;

    return-object v0
.end method

.method public final p()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->currentValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final q()Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    return-object v0
.end method

.method public final r()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    return v0
.end method

.method public final s()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    return v0
.end method

.method public final t()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->offsetState:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public final u()Landroidx/compose/material/ResistanceConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->resistance$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/material/ResistanceConfig;

    .line 9
    return-object v0
.end method

.method public final v()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->animationTarget:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v0

    .line 15
    goto :goto_2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->m()Ljava/util/Map;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Landroidx/compose/material/SwipeableKt;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 47
    move-result v0

    .line 48
    :goto_0
    move v2, v0

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->t()Landroidx/compose/runtime/State;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Ljava/lang/Number;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 63
    move-result v0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->m()Ljava/util/Map;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->w()Le8/p;

    .line 76
    move-result-object v4

    .line 77
    const/4 v5, 0x0

    .line 78
    .line 79
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 80
    .line 81
    .line 82
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/SwipeableKt;->a(FFLjava/util/Set;Le8/p;FF)F

    .line 83
    move-result v0

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->m()Ljava/util/Map;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    :cond_2
    return-object v0
.end method

.method public final w()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->thresholds$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Le8/p;

    .line 9
    return-object v0
.end method

.method public final x()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->velocityThreshold$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->isAnimationRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final z(F)F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v0

    .line 13
    add-float/2addr v0, p1

    .line 14
    .line 15
    iget p1, p0, Landroidx/compose/material/SwipeableState;->minBound:F

    .line 16
    .line 17
    iget v1, p0, Landroidx/compose/material/SwipeableState;->maxBound:F

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lj8/m;->m(FFF)F

    .line 21
    move-result p1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->absoluteOffset:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Number;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 33
    move-result v0

    .line 34
    sub-float/2addr p1, v0

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    .line 41
    cmpl-float v0, v0, v1

    .line 42
    .line 43
    if-lez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/compose/material/SwipeableState;->draggableState:Landroidx/compose/foundation/gestures/DraggableState;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/DraggableState;->a(F)V

    .line 49
    :cond_0
    return p1
.end method
