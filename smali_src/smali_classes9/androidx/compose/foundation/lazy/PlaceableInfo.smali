.class final Landroidx/compose/foundation/lazy/PlaceableInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/PlaceableInfo\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,442:1\n76#2:443\n102#2,2:444\n*S KotlinDebug\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/PlaceableInfo\n*L\n432#1:443\n432#1:444,2\n*E\n"
.end annotation


# instance fields
.field private final animatedOffset:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I

.field private targetOffset:J


# direct methods
.method private constructor <init>(JI)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->size:I

    .line 3
    new-instance p3, Landroidx/compose/animation/core/Animatable;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->b(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v1

    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->g(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/k;)V

    iput-object p3, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->animatedOffset:Landroidx/compose/animation/core/Animatable;

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->targetOffset:J

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 4
    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->inProgress$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/PlaceableInfo;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/animation/core/Animatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->animatedOffset:Landroidx/compose/animation/core/Animatable;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->inProgress$delegate:Landroidx/compose/runtime/MutableState;

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

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->size:I

    return v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->targetOffset:J

    return-wide v0
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->inProgress$delegate:Landroidx/compose/runtime/MutableState;

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

.method public final f(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->size:I

    return-void
.end method

.method public final g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/PlaceableInfo;->targetOffset:J

    return-void
.end method
