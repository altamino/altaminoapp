.class public final Landroidx/compose/runtime/EffectsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,483:1\n36#2:484\n50#2:491\n49#2:492\n67#2,3:499\n66#2:502\n83#2,3:509\n36#2:518\n50#2:525\n49#2:526\n67#2,3:533\n66#2:536\n83#2,3:543\n25#2:552\n1057#3,6:485\n1057#3,6:493\n1057#3,6:503\n1057#3,6:512\n1057#3,6:519\n1057#3,6:527\n1057#3,6:537\n1057#3,6:546\n1057#3,6:553\n*S KotlinDebug\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/EffectsKt\n*L\n155#1:484\n195#1:491\n195#1:492\n236#1:499,3\n236#1:502\n276#1:509,3\n337#1:518\n360#1:525\n360#1:526\n384#1:533,3\n384#1:536\n407#1:543,3\n476#1:552\n155#1:485,6\n195#1:493,6\n236#1:503,6\n276#1:512,6\n337#1:519,6\n360#1:527,6\n384#1:537,6\n407#1:546,6\n476#1:553,6\n*E\n"
.end annotation


# static fields
.field private static final DisposableEffectNoParamError:Ljava/lang/String; = "DisposableEffect must provide one or more \'key\' parameters that define the identity of the DisposableEffect and determine when its previous effect should be disposed and a new effect started for the new key."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final InternalDisposableEffectScope:Landroidx/compose/runtime/DisposableEffectScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LaunchedEffectNoParamError:Ljava/lang/String; = "LaunchedEffect must provide one or more \'key\' parameters that define the identity of the LaunchedEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/DisposableEffectScope;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/runtime/DisposableEffectScope;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/runtime/EffectsKt;->InternalDisposableEffectScope:Landroidx/compose/runtime/DisposableEffectScope;

    .line 8
    return-void
.end method

.method public static final a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le8/l<",
            "-",
            "Landroidx/compose/runtime/DisposableEffectScope;",
            "+",
            "Landroidx/compose/runtime/DisposableEffectResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p3, "effect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x51c6db9f

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p3, 0x44faf204

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    if-ne p3, p0, :cond_1

    .line 36
    .line 37
    :cond_0
    new-instance p0, Landroidx/compose/runtime/DisposableEffectImpl;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Landroidx/compose/runtime/DisposableEffectImpl;-><init>(Le8/l;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 50
    return-void
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
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
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Le8/l<",
            "-",
            "Landroidx/compose/runtime/DisposableEffectScope;",
            "+",
            "Landroidx/compose/runtime/DisposableEffectResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p4, "effect"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p4, 0x552e4d01

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p4, 0x1e7b2b64

    .line 15
    .line 16
    .line 17
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    or-int/2addr p0, p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    if-ne p1, p0, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance p0, Landroidx/compose/runtime/DisposableEffectImpl;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p2}, Landroidx/compose/runtime/DisposableEffectImpl;-><init>(Le8/l;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 52
    .line 53
    .line 54
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 55
    return-void
.end method

.method public static final c(Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .param p0    # Le8/p;
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
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x3001ab5b

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    and-int/lit8 v0, p2, 0x1

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance v0, Landroidx/compose/runtime/EffectsKt$LaunchedEffect$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/EffectsKt$LaunchedEffect$1;-><init>(Le8/p;I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 41
    :goto_0
    return-void

    .line 42
    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p1, "LaunchedEffect must provide one or more \'key\' parameters that define the identity of the LaunchedEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key."

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
.end method

.method public static final d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p3, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x4648f105

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->y()Lkotlin/coroutines/g;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    .line 18
    const v0, 0x44faf204

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    if-ne v0, p0, :cond_1

    .line 40
    .line 41
    :cond_0
    new-instance p0, Landroidx/compose/runtime/LaunchedEffectImpl;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p3, p1}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/g;Le8/p;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 54
    return-void
.end method

.method public static final e(Ljava/lang/Object;Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p4, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p4, 0x232e5d65

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->y()Lkotlin/coroutines/g;

    .line 15
    move-result-object p4

    .line 16
    .line 17
    .line 18
    const v0, 0x1e7b2b64

    .line 19
    .line 20
    .line 21
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    or-int/2addr p0, p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    if-ne p1, p0, :cond_1

    .line 45
    .line 46
    :cond_0
    new-instance p0, Landroidx/compose/runtime/LaunchedEffectImpl;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p4, p2}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/g;Le8/p;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 59
    return-void
.end method

.method public static final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p5, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p5, -0x339663b

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->y()Lkotlin/coroutines/g;

    .line 15
    move-result-object p5

    .line 16
    .line 17
    .line 18
    const v0, 0x607fb4c4

    .line 19
    .line 20
    .line 21
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    .line 28
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    or-int/2addr p0, p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    or-int/2addr p0, p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    if-ne p1, p0, :cond_1

    .line 50
    .line 51
    :cond_0
    new-instance p0, Landroidx/compose/runtime/LaunchedEffectImpl;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p5, p3}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/g;Le8/p;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 64
    return-void
.end method

.method public static final g([Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p3, "keys"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p3, -0x8518448

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->y()Lkotlin/coroutines/g;

    .line 20
    move-result-object p3

    .line 21
    array-length v0, p0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    const v0, -0x21de6e89

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 32
    array-length v0, p0

    .line 33
    const/4 v1, 0x0

    .line 34
    move v2, v1

    .line 35
    .line 36
    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    .line 38
    aget-object v3, p0, v1

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    or-int/2addr v2, v3

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    if-ne p0, v0, :cond_2

    .line 61
    .line 62
    :cond_1
    new-instance p0, Landroidx/compose/runtime/LaunchedEffectImpl;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p3, p1}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/g;Le8/p;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 75
    return-void
.end method

.method public static final h(Le8/a;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0    # Le8/a;
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
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "effect"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p2, -0x4ccc7149

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->C(Le8/a;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 18
    return-void
.end method

.method public static final synthetic i()Landroidx/compose/runtime/DisposableEffectScope;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/EffectsKt;->InternalDisposableEffectScope:Landroidx/compose/runtime/DisposableEffectScope;

    return-object v0
.end method

.method public static final j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;
    .locals 2
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "coroutineContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "composer"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p0, p1}, Lkotlinx/coroutines/f2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "CoroutineContext supplied to rememberCoroutineScope may not include a parent job"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, p1}, Lkotlinx/coroutines/a0;->a(Ljava/lang/Throwable;)Z

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 38
    move-result-object p0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->y()Lkotlin/coroutines/g;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lkotlinx/coroutines/b2;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlinx/coroutines/f2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 65
    move-result-object p0

    .line 66
    :goto_0
    return-object p0
.end method
