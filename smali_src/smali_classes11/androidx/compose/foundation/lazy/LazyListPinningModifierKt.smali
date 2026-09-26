.class public final Landroidx/compose/foundation/lazy/LazyListPinningModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListPinningModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListPinningModifier.kt\nandroidx/compose/foundation/lazy/LazyListPinningModifierKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,83:1\n50#2:84\n49#2:85\n1057#3,6:86\n*S KotlinDebug\n*F\n+ 1 LazyListPinningModifier.kt\nandroidx/compose/foundation/lazy/LazyListPinningModifierKt\n*L\n39#1:84\n39#1:85\n39#1:86,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 1
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
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p4, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p4, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p4, "beyondBoundsInfo"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const p4, 0x32f5025d

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 22
    .line 23
    sget p4, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    .line 24
    .line 25
    .line 26
    const p4, 0x1e7b2b64

    .line 27
    .line 28
    .line 29
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 33
    move-result p4

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    or-int/2addr p4, v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-nez p4, :cond_0

    .line 45
    .line 46
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 50
    move-result-object p4

    .line 51
    .line 52
    if-ne v0, p4, :cond_1

    .line 53
    .line 54
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListPinningModifier;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 64
    .line 65
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    .line 72
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 73
    return-object p0
.end method
