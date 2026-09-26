.class public final Landroidx/compose/foundation/interaction/FocusInteractionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusInteraction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusInteraction.kt\nandroidx/compose/foundation/interaction/FocusInteractionKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,79:1\n25#2:80\n1057#3,6:81\n*S KotlinDebug\n*F\n+ 1 FocusInteraction.kt\nandroidx/compose/foundation/interaction/FocusInteractionKt\n*L\n66#1:80\n66#1:81,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .param p0    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
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
    const v0, -0x6b9dfad0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const v0, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    const/4 v1, 0x2

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 44
    .line 45
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    new-instance v1, Landroidx/compose/foundation/interaction/FocusInteractionKt$collectIsFocusedAsState$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, v0, v2}, Landroidx/compose/foundation/interaction/FocusInteractionKt$collectIsFocusedAsState$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 51
    .line 52
    and-int/lit8 p2, p2, 0xe

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v1, p1, p2}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 59
    return-object v0
.end method
