.class public final Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyItemScope;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyItemScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyItemScopeImpl.kt\nandroidx/compose/foundation/lazy/LazyItemScopeImpl\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,76:1\n76#2:77\n102#2,2:78\n76#2:80\n102#2,2:81\n89#3:83\n89#3:84\n89#3:85\n89#3:86\n135#4:87\n*S KotlinDebug\n*F\n+ 1 LazyItemScopeImpl.kt\nandroidx/compose/foundation/lazy/LazyItemScopeImpl\n*L\n38#1:77\n38#1:78,2\n39#1:80\n39#1:81,2\n42#1:83\n43#1:84\n47#1:85\n50#1:86\n54#1:87\n*E\n"
.end annotation


# instance fields
.field private final maxHeight$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxWidth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2, v3, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeight$delegate:Landroidx/compose/runtime/MutableState;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeight$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidth$delegate:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    return-void
.end method
