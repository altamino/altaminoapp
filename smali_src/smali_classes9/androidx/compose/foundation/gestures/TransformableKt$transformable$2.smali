.class final Landroidx/compose/foundation/gestures/TransformableKt$transformable$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt$transformable$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,178:1\n25#2:179\n1057#3,6:180\n*S KotlinDebug\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt$transformable$2\n*L\n69#1:179\n69#1:180,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $lockRotationOnZoomPan:Z

.field final synthetic $state:Landroidx/compose/foundation/gestures/TransformableState;


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x59f6a32d

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2;->$state:Landroidx/compose/foundation/gestures/TransformableState;

    .line 14
    const/4 p3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2;->$lockRotationOnZoomPan:Z

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    const v0, -0x1d58f75c

    .line 32
    .line 33
    .line 34
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-ne v0, v1, :cond_0

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2$block$1$1;

    .line 49
    const/4 v1, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p3, p1, v1}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2$block$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 59
    .line 60
    check-cast v0, Le8/p;

    .line 61
    .line 62
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2;->$enabled:Z

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    sget-object p3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p3, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_1
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 79
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
