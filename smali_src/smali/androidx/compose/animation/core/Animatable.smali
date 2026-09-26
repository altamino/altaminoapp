.class public final Landroidx/compose/animation/core/Animatable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animatable.kt\nandroidx/compose/animation/core/Animatable\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,463:1\n76#2:464\n102#2,2:465\n76#2:467\n102#2,2:468\n1#3:470\n*S KotlinDebug\n*F\n+ 1 Animatable.kt\nandroidx/compose/animation/core/Animatable\n*L\n82#1:464\n82#1:465,2\n89#1:467\n89#1:468,2\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final defaultSpringSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final internalState:Landroidx/compose/animation/core/AnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isRunning$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lowerBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final negativeInfinityBounds:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final positiveInfinityBounds:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final targetValue$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private upperBound:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private upperBoundVector:Landroidx/compose/animation/core/AnimationVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final visibilityThreshold:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)V
    .locals 12
    .param p2    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "typeConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    iput-object p3, p0, Landroidx/compose/animation/core/Animatable;->visibilityThreshold:Ljava/lang/Object;

    .line 2
    new-instance v0, Landroidx/compose/animation/core/AnimationState;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZILkotlin/jvm/internal/k;)V

    iput-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

    .line 4
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 5
    new-instance p2, Landroidx/compose/animation/core/MutatorMutex;

    invoke-direct {p2}, Landroidx/compose/animation/core/MutatorMutex;-><init>()V

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 6
    new-instance p2, Landroidx/compose/animation/core/SpringSpec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/SpringSpec;-><init>(FFLjava/lang/Object;ILkotlin/jvm/internal/k;)V

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->defaultSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/Animatable;->i(Ljava/lang/Object;F)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->negativeInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 8
    invoke-direct {p0, p1, p3}, Landroidx/compose/animation/core/Animatable;->i(Ljava/lang/Object;F)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->positiveInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->upperBoundVector:Landroidx/compose/animation/core/AnimationVector;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Animatable;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/animation/core/Animatable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/animation/core/Animatable;->j()V

    .line 4
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/animation/core/Animatable;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Animatable;->s(Z)V

    .line 4
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Animatable;->t(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static synthetic f(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x2

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/compose/animation/core/Animatable;->defaultSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 7
    :cond_0
    move-object v2, p2

    .line 8
    .line 9
    and-int/lit8 p2, p6, 0x4

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->o()Ljava/lang/Object;

    .line 15
    move-result-object p3

    .line 16
    :cond_1
    move-object v3, p3

    .line 17
    .line 18
    and-int/lit8 p2, p6, 0x8

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    const/4 p4, 0x0

    .line 22
    :cond_2
    move-object v4, p4

    .line 23
    move-object v0, p0

    .line 24
    move-object v1, p1

    .line 25
    move-object v5, p5

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->e(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/animation/core/Animatable;->negativeInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->upperBoundVector:Landroidx/compose/animation/core/AnimationVector;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/animation/core/Animatable;->positiveInfinityBounds:Landroidx/compose/animation/core/AnimationVector;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroidx/compose/animation/core/TwoWayConverter;->a()Le8/l;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    move v3, v2

    .line 40
    .line 41
    :goto_0
    if-ge v2, v1, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 45
    move-result v4

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/compose/animation/core/Animatable;->lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 51
    move-result v5

    .line 52
    .line 53
    cmpg-float v4, v4, v5

    .line 54
    .line 55
    if-ltz v4, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 59
    move-result v4

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/compose/animation/core/Animatable;->upperBoundVector:Landroidx/compose/animation/core/AnimationVector;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 65
    move-result v5

    .line 66
    .line 67
    cmpl-float v4, v4, v5

    .line 68
    .line 69
    if-lez v4, :cond_2

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 73
    move-result v3

    .line 74
    .line 75
    iget-object v4, p0, Landroidx/compose/animation/core/Animatable;->lowerBoundVector:Landroidx/compose/animation/core/AnimationVector;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 79
    move-result v4

    .line 80
    .line 81
    iget-object v5, p0, Landroidx/compose/animation/core/Animatable;->upperBoundVector:Landroidx/compose/animation/core/AnimationVector;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v2}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 85
    move-result v5

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v4, v5}, Lj8/m;->m(FFF)F

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 93
    const/4 v3, 0x1

    .line 94
    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_3
    if-eqz v3, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Landroidx/compose/animation/core/TwoWayConverter;->b()Le8/l;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    :cond_4
    return-object p1
.end method

.method private final i(Ljava/lang/Object;F)Landroidx/compose/animation/core/AnimationVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TV;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/animation/core/TwoWayConverter;->a()Le8/l;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/animation/core/AnimationVector;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1, p2}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object p1
.end method

.method private final j()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->f()Landroidx/compose/animation/core/AnimationVector;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationVector;->d()V

    .line 10
    .line 11
    const-wide/high16 v1, -0x8000000000000000L

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/compose/animation/core/AnimationState;->l(J)V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/compose/animation/core/Animatable;->s(Z)V

    .line 19
    return-void
.end method

.method private final r(Landroidx/compose/animation/core/Animation;Ljava/lang/Object;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;TT;",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/Animatable<",
            "TT;TV;>;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/animation/core/AnimationResult<",
            "TT;TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    .line 3
    iget-object v0, v8, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->b()J

    .line 7
    move-result-wide v4

    .line 8
    .line 9
    iget-object v9, v8, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 10
    const/4 v10, 0x0

    .line 11
    .line 12
    new-instance v11, Landroidx/compose/animation/core/Animatable$runAnimation$2;

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v0, v11

    .line 15
    move-object v1, p0

    .line 16
    .line 17
    move-object/from16 v2, p2

    .line 18
    .line 19
    move-object/from16 v3, p1

    .line 20
    .line 21
    move-object/from16 v6, p3

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable$runAnimation$2;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;)V

    .line 25
    const/4 v13, 0x1

    .line 26
    const/4 v14, 0x0

    .line 27
    .line 28
    move-object/from16 v12, p4

    .line 29
    .line 30
    .line 31
    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/MutatorMutex;->e(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Le8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private final s(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

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

.method private final t(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;TT;",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/Animatable<",
            "TT;TV;>;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/animation/core/AnimationResult<",
            "TT;TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->n()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v1, v0, p1, p3}, Landroidx/compose/animation/core/AnimationKt;->b(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p3, p4, p5}, Landroidx/compose/animation/core/Animatable;->r(Landroidx/compose/animation/core/Animation;Ljava/lang/Object;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final g()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    return-object v0
.end method

.method public final k()Landroidx/compose/animation/core/AnimationState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    return-object v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->targetValue$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m()Landroidx/compose/animation/core/TwoWayConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    return-object v0
.end method

.method public final n()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/animation/core/TwoWayConverter;->b()Le8/l;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->p()Landroidx/compose/animation/core/AnimationVector;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final p()Landroidx/compose/animation/core/AnimationVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationState;->f()Landroidx/compose/animation/core/AnimationVector;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->isRunning$delegate:Landroidx/compose/runtime/MutableState;

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

.method public final u(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/animation/core/Animatable$snapTo$2;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0, p1, v3}, Landroidx/compose/animation/core/Animatable$snapTo$2;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v3, p2

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/MutatorMutex;->e(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Le8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

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

.method public final v(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-instance v2, Landroidx/compose/animation/core/Animatable$stop$2;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0, v3}, Landroidx/compose/animation/core/Animatable$stop$2;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/d;)V

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v3, p1

    .line 13
    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/MutatorMutex;->e(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Le8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 26
    return-object p1
.end method
