.class final Landroidx/compose/foundation/HoverableKt$hoverable$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/HoverableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

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
    value = "SMAP\nHoverable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Hoverable.kt\nandroidx/compose/foundation/HoverableKt$hoverable$2\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,116:1\n473#2,4:117\n477#2,2:125\n481#2:131\n25#3:121\n25#3:132\n1057#4,3:122\n1060#4,3:128\n1057#4,6:133\n473#5:127\n76#6:139\n102#6,2:140\n*S KotlinDebug\n*F\n+ 1 Hoverable.kt\nandroidx/compose/foundation/HoverableKt$hoverable$2\n*L\n56#1:117,4\n56#1:125,2\n56#1:131\n56#1:121\n57#1:132\n56#1:122,3\n56#1:128,3\n57#1:133,6\n56#1:127\n57#1:139\n57#1:140,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$enabled:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->e(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->f(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->i(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 4
    return-void
.end method

.method private static final e(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 42
    .line 43
    iget-object p1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->g(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    if-nez p2, :cond_4

    .line 67
    .line 68
    new-instance p2, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2}, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;-><init>()V

    .line 72
    .line 73
    iput-object p1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p2, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    iput v3, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitEnter$1;->label:I

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, p2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    if-ne p0, v1, :cond_3

    .line 84
    return-object v1

    .line 85
    :cond_3
    move-object p0, p2

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-static {p1, p0}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->h(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 89
    .line 90
    :cond_4
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 91
    return-object p0
.end method

.method private static final f(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->g(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    new-instance v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, p2}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;-><init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 68
    .line 69
    iput-object p0, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v3, v0, Landroidx/compose/foundation/HoverableKt$hoverable$2$invoke$emitExit$1;->label:I

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    if-ne p1, v1, :cond_3

    .line 78
    return-object v1

    .line 79
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p1}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->h(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 83
    .line 84
    :cond_4
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 85
    return-object p0
.end method

.method private static final g(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/interaction/HoverInteraction$Enter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;)",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 7
    return-object p0
.end method

.method private static final h(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private static final i(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->g(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;-><init>(Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->a(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->h(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/HoverInteraction$Enter;)V

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 6
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
    const p1, 0x4d211471    # 1.68904464E8f

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x2e20b340

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    const p1, -0x1d58f75c

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-ne p3, v1, :cond_0

    .line 36
    .line 37
    sget-object p3, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p2}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 50
    move-object p3, v1

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 54
    .line 55
    check-cast p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x0

    .line 75
    .line 76
    if-ne p1, v0, :cond_1

    .line 77
    const/4 p1, 0x2

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v1, p1, v1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 88
    .line 89
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 92
    .line 93
    new-instance v2, Landroidx/compose/foundation/HoverableKt$hoverable$2$1;

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, p1, v0}, Landroidx/compose/foundation/HoverableKt$hoverable$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 97
    const/4 v3, 0x0

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v2, p2, v3}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 101
    .line 102
    iget-boolean v0, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$enabled:Z

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    new-instance v2, Landroidx/compose/foundation/HoverableKt$hoverable$2$2;

    .line 109
    .line 110
    iget-boolean v4, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$enabled:Z

    .line 111
    .line 112
    iget-object v5, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v4, p1, v5, v1}, Landroidx/compose/foundation/HoverableKt$hoverable$2$2;-><init>(ZLandroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/coroutines/d;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v2, p2, v3}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 119
    .line 120
    iget-boolean v0, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$enabled:Z

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 125
    .line 126
    iget-object v2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 127
    .line 128
    new-instance v3, Landroidx/compose/foundation/HoverableKt$hoverable$2$3;

    .line 129
    .line 130
    .line 131
    invoke-direct {v3, p3, v2, p1, v1}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3;-><init>(Lkotlinx/coroutines/o0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 135
    move-result-object p1

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_2
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 139
    .line 140
    .line 141
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 142
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
