.class final synthetic Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProduceState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProduceState.kt\nandroidx/compose/runtime/SnapshotStateKt__ProduceStateKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,226:1\n25#2:227\n25#2:234\n25#2:241\n25#2:248\n25#2:255\n1057#3,6:228\n1057#3,6:235\n1057#3,6:242\n1057#3,6:249\n1057#3,6:256\n*S KotlinDebug\n*F\n+ 1 ProduceState.kt\nandroidx/compose/runtime/SnapshotStateKt__ProduceStateKt\n*L\n84#1:227\n117#1:234\n151#1:241\n186#1:248\n219#1:255\n84#1:228,6\n117#1:235,6\n151#1:242,6\n186#1:249,6\n219#1:256,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p5, "producer"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p5, -0x65844c3d

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p5, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 21
    move-result-object p5

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-ne p5, v0, :cond_0

    .line 31
    const/4 p5, 0x2

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v1, p5, v1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 35
    move-result-object p5

    .line 36
    .line 37
    .line 38
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 42
    .line 43
    check-cast p5, Landroidx/compose/runtime/MutableState;

    .line 44
    .line 45
    new-instance p0, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$3;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p3, p5, v1}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$3;-><init>(Le8/p;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 49
    .line 50
    const/16 p3, 0x48

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2, p0, p4, p3}, Landroidx/compose/runtime/EffectsKt;->e(Ljava/lang/Object;Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 57
    return-object p5
.end method

.method public static final b(Ljava/lang/Object;[Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/Object;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p4, "keys"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p4, "producer"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p4, 0x1d372a56

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    .line 19
    const p4, -0x1d58f75c

    .line 20
    .line 21
    .line 22
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 26
    move-result-object p4

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    if-ne p4, v0, :cond_0

    .line 36
    const/4 p4, 0x2

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1, p4, v1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 40
    move-result-object p4

    .line 41
    .line 42
    .line 43
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 47
    .line 48
    check-cast p4, Landroidx/compose/runtime/MutableState;

    .line 49
    array-length p0, p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    new-instance p1, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$5;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2, p4, v1}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$5;-><init>(Le8/p;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 59
    .line 60
    const/16 p2, 0x8

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1, p3, p2}, Landroidx/compose/runtime/EffectsKt;->g([Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 67
    return-object p4
.end method
