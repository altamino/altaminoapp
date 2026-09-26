.class public final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1;->a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1\n*L\n1#1,483:1\n652#2,3:484\n*E\n"
.end annotation


# instance fields
.field final synthetic $currentlyVisible$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field final synthetic $rootScope$inlined:Landroidx/compose/animation/AnimatedContentScope;

.field final synthetic $stateForContent$inlined:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Landroidx/compose/animation/AnimatedContentScope;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$currentlyVisible$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$stateForContent$inlined:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$rootScope$inlined:Landroidx/compose/animation/AnimatedContentScope;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public t()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$currentlyVisible$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$stateForContent$inlined:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$rootScope$inlined:Landroidx/compose/animation/AnimatedContentScope;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/animation/AnimatedContentScope;->m()Ljava/util/Map;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$stateForContent$inlined:Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method
