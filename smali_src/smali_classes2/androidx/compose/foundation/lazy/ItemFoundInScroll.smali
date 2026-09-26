.class final Landroidx/compose/foundation/lazy/ItemFoundInScroll;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# instance fields
.field private final item:Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previousAnimation:Landroidx/compose/animation/core/AnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListItemInfo;Landroidx/compose/animation/core/AnimationState;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/LazyListItemInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "previousAnimation"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->item:Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->previousAnimation:Landroidx/compose/animation/core/AnimationState;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/lazy/LazyListItemInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->item:Landroidx/compose/foundation/lazy/LazyListItemInfo;

    return-object v0
.end method

.method public final b()Landroidx/compose/animation/core/AnimationState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->previousAnimation:Landroidx/compose/animation/core/AnimationState;

    return-object v0
.end method
