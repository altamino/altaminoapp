.class public final Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListPinningModifier;->a()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_with:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

.field private final interval:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentPinnedItemsHandle:Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListPinningModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListPinningModifier;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->this$0:Landroidx/compose/foundation/lazy/LazyListPinningModifier;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->$this_with:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->c()Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/PinnableParent;->a()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    .line 21
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->parentPinnedItemsHandle:Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->c()I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->b()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->a(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->interval:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->$this_with:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->interval:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->e(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->parentPinnedItemsHandle:Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;->a()V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->this$0:Landroidx/compose/foundation/lazy/LazyListPinningModifier;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->b(Landroidx/compose/foundation/lazy/LazyListPinningModifier;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->q()Landroidx/compose/ui/layout/Remeasurement;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Landroidx/compose/ui/layout/Remeasurement;->a()V

    .line 30
    :cond_1
    return-void
.end method
