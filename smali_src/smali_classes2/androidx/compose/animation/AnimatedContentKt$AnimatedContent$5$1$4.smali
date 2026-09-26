.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/r<",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "TS;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $rootScope:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic $stateForContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/AnimatedContentScope;Ljava/lang/Object;Le8/r;ILandroidx/compose/runtime/snapshots/SnapshotStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;TS;",
            "Le8/r<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$stateForContent:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$content:Le8/r;

    iput p4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$$dirty:I

    iput-object p5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p1    # Landroidx/compose/animation/AnimatedVisibilityScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$AnimatedVisibility"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    and-int/lit8 v0, p3, 0xe

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x2

    .line 19
    :goto_0
    or-int/2addr p3, v0

    .line 20
    .line 21
    :cond_1
    and-int/lit8 v0, p3, 0x5b

    .line 22
    .line 23
    const/16 v1, 0x12

    .line 24
    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_3
    :goto_1
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$currentlyVisible:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$stateForContent:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Landroidx/compose/animation/AnimatedContentScope;)V

    .line 48
    .line 49
    and-int/lit8 p3, p3, 0xe

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0, p2, p3}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/animation/AnimatedContentScope;->m()Ljava/util/Map;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$stateForContent:Ljava/lang/Object;

    .line 61
    move-object v2, p1

    .line 62
    .line 63
    check-cast v2, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;->b()Landroidx/compose/runtime/MutableState;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$content:Le8/r;

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$stateForContent:Ljava/lang/Object;

    .line 75
    .line 76
    iget v2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->$$dirty:I

    .line 77
    .line 78
    shr-int/lit8 v2, v2, 0x9

    .line 79
    .line 80
    and-int/lit16 v2, v2, 0x380

    .line 81
    or-int/2addr p3, v2

    .line 82
    .line 83
    .line 84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, p1, v1, p2, p3}, Le8/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4;->a(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
