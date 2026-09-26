.class public final Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyBeyondBoundsModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyBeyondBoundsModifier.kt\nandroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,149:1\n76#2:150\n83#3,3:151\n1057#4,6:154\n*S KotlinDebug\n*F\n+ 1 LazyBeyondBoundsModifier.kt\nandroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt\n*L\n50#1:150\n51#1:151,3\n51#1:154,6\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a()Ljava/lang/Void;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->c()Ljava/lang/Void;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 5
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p5, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p5, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p5, "beyondBoundsInfo"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const p5, 0x4a439829    # 3204618.2f

    .line 19
    .line 20
    .line 21
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 25
    move-result-object p5

    .line 26
    .line 27
    .line 28
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 29
    move-result-object p5

    .line 30
    .line 31
    check-cast p5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 32
    const/4 v0, 0x4

    .line 33
    .line 34
    new-array v1, v0, [Ljava/lang/Object;

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    aput-object p1, v1, v2

    .line 38
    const/4 v3, 0x1

    .line 39
    .line 40
    aput-object p2, v1, v3

    .line 41
    const/4 v3, 0x2

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    aput-object v4, v1, v3

    .line 48
    const/4 v3, 0x3

    .line 49
    .line 50
    aput-object p5, v1, v3

    .line 51
    .line 52
    .line 53
    const v3, -0x21de6e89

    .line 54
    .line 55
    .line 56
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 57
    move v3, v2

    .line 58
    .line 59
    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    .line 61
    aget-object v4, v1, v2

    .line 62
    .line 63
    .line 64
    invoke-interface {p4, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    or-int/2addr v3, v4

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    if-ne v0, v1, :cond_2

    .line 84
    .line 85
    :cond_1
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, p1, p2, p3, p5}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 95
    .line 96
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 104
    return-object p0
.end method

.method private static final c()Ljava/lang/Void;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "Lazy list does not support beyond bounds layout for the specified direction"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    throw v0
.end method
