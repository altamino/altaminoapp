.class final Landroidx/compose/foundation/gestures/DefaultTransformableState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/TransformableState;


# instance fields
.field private final isTransformingState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onTransformation:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/lang/Float;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transformMutex:Landroidx/compose/foundation/MutatorMutex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transformScope:Landroidx/compose/foundation/gestures/TransformScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/q;)V
    .locals 2
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onTransformation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->onTransformation:Le8/q;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/foundation/gestures/DefaultTransformableState$transformScope$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DefaultTransformableState$transformScope$1;-><init>(Landroidx/compose/foundation/gestures/DefaultTransformableState;)V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformScope:Landroidx/compose/foundation/gestures/TransformScope;

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformMutex:Landroidx/compose/foundation/MutatorMutex;

    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x2

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->isTransformingState:Landroidx/compose/runtime/MutableState;

    .line 35
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/foundation/gestures/DefaultTransformableState;)Landroidx/compose/foundation/MutatorMutex;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformMutex:Landroidx/compose/foundation/MutatorMutex;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/foundation/gestures/DefaultTransformableState;)Landroidx/compose/foundation/gestures/TransformScope;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->transformScope:Landroidx/compose/foundation/gestures/TransformScope;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/foundation/gestures/DefaultTransformableState;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->isTransformingState:Landroidx/compose/runtime/MutableState;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/foundation/MutatePriority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
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
            "Landroidx/compose/foundation/MutatePriority;",
            "Le8/p<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformScope;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
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
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultTransformableState$transform$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DefaultTransformableState$transform$2;-><init>(Landroidx/compose/foundation/gestures/DefaultTransformableState;Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p3}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method

.method public final e()Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/q<",
            "Ljava/lang/Float;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DefaultTransformableState;->onTransformation:Le8/q;

    return-object v0
.end method
