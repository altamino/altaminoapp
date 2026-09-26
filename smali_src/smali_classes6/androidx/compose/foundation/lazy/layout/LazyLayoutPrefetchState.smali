.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutPrefetchState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutPrefetchState.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,61:1\n76#2:62\n102#2,2:63\n*S KotlinDebug\n*F\n+ 1 LazyLayoutPrefetchState.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState\n*L\n32#1:62\n32#1:63,2\n*E\n"
.end annotation


# instance fields
.field private final prefetcher$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetcher$delegate:Landroidx/compose/runtime/MutableState;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetcher$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;

    .line 9
    return-object v0
.end method

.method public final b(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->a()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;->a(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :cond_0
    sget-object p1, Landroidx/compose/foundation/lazy/layout/DummyHandle;->INSTANCE:Landroidx/compose/foundation/lazy/layout/DummyHandle;

    .line 15
    :cond_1
    return-object p1
.end method

.method public final c(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetcher$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method
