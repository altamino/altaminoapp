.class public final Landroidx/compose/ui/platform/WindowInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInfo.kt\nandroidx/compose/ui/platform/WindowInfoKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,57:1\n76#2:58\n50#3:59\n49#3:60\n1057#4,6:61\n*S KotlinDebug\n*F\n+ 1 WindowInfo.kt\nandroidx/compose/ui/platform/WindowInfoKt\n*L\n44#1:58\n46#1:59\n46#1:60\n46#1:61,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/l;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0    # Le8/l;
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
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onWindowFocusChanged"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x79e8727

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    and-int/lit8 v0, p2, 0xe

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    or-int/2addr v0, p2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, p2

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v2, v0, 0xb

    .line 32
    .line 33
    if-ne v2, v1, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 44
    goto :goto_3

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->o()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Landroidx/compose/ui/platform/WindowInfo;

    .line 55
    .line 56
    and-int/lit8 v0, v0, 0xe

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    const v2, 0x1e7b2b64

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 74
    move-result v3

    .line 75
    or-int/2addr v2, v3

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    if-nez v2, :cond_4

    .line 82
    .line 83
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    if-ne v3, v2, :cond_5

    .line 90
    .line 91
    :cond_4
    new-instance v3, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;

    .line 92
    const/4 v2, 0x0

    .line 93
    .line 94
    .line 95
    invoke-direct {v3, v1, v0, v2}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;-><init>(Landroidx/compose/ui/platform/WindowInfo;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 102
    .line 103
    check-cast v3, Le8/p;

    .line 104
    const/4 v0, 0x0

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v3, p1, v0}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    if-nez p1, :cond_6

    .line 114
    goto :goto_4

    .line 115
    .line 116
    :cond_6
    new-instance v0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$2;

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$2;-><init>(Le8/l;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 123
    :goto_4
    return-void
.end method
