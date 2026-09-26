.class public final Landroidx/lifecycle/compose/FlowExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowExt.kt\nandroidx/lifecycle/compose/FlowExtKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,180:1\n76#2:181\n76#2:182\n*S KotlinDebug\n*F\n+ 1 FlowExt.kt\nandroidx/lifecycle/compose/FlowExtKt\n*L\n58#1:181\n130#1:182\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/g;Ljava/lang/Object;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 6
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;TT;",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/coroutines/g;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "lifecycle"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x75e27f00

    .line 14
    .line 15
    .line 16
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    and-int/lit8 v0, p7, 0x4

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 23
    :cond_0
    move-object v2, p3

    .line 24
    .line 25
    and-int/lit8 p3, p7, 0x8

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    sget-object p4, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 30
    :cond_1
    move-object v3, p4

    .line 31
    const/4 p3, 0x4

    .line 32
    .line 33
    new-array p3, p3, [Ljava/lang/Object;

    .line 34
    const/4 p4, 0x0

    .line 35
    .line 36
    aput-object p0, p3, p4

    .line 37
    const/4 p4, 0x1

    .line 38
    .line 39
    aput-object p2, p3, p4

    .line 40
    const/4 p4, 0x2

    .line 41
    .line 42
    aput-object v2, p3, p4

    .line 43
    const/4 p4, 0x3

    .line 44
    .line 45
    aput-object v3, p3, p4

    .line 46
    .line 47
    new-instance p7, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1;

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v0, p7

    .line 50
    move-object v1, p2

    .line 51
    move-object v4, p0

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/g;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)V

    .line 55
    .line 56
    shr-int/lit8 p0, p6, 0x3

    .line 57
    .line 58
    and-int/lit8 p2, p0, 0x8

    .line 59
    .line 60
    or-int/lit16 p2, p2, 0x240

    .line 61
    .line 62
    and-int/lit8 p0, p0, 0xe

    .line 63
    or-int/2addr p0, p2

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p3, p7, p5, p0}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;[Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/flow/l0;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p0    # Lkotlinx/coroutines/flow/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            ">(",
            "Lkotlinx/coroutines/flow/l0<",
            "+TT;>;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$State;",
            "Lkotlin/coroutines/g;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x2c4d1498

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 v0, p6, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->i()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 26
    .line 27
    :cond_0
    and-int/lit8 v0, p6, 0x2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 32
    :cond_1
    move-object v3, p2

    .line 33
    .line 34
    and-int/lit8 p2, p6, 0x4

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    sget-object p3, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 39
    :cond_2
    move-object v4, p3

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Lkotlinx/coroutines/flow/l0;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    shl-int/lit8 p1, p5, 0x3

    .line 50
    .line 51
    and-int/lit16 p1, p1, 0x1c00

    .line 52
    .line 53
    .line 54
    const p2, 0x8208

    .line 55
    .line 56
    or-int v6, p1, p2

    .line 57
    const/4 v7, 0x0

    .line 58
    move-object v0, p0

    .line 59
    move-object v5, p4

    .line 60
    .line 61
    .line 62
    invoke-static/range {v0 .. v7}, Landroidx/lifecycle/compose/FlowExtKt;->a(Lkotlinx/coroutines/flow/g;Ljava/lang/Object;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    .line 66
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 67
    return-object p0
.end method
