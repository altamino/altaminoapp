.class public final Landroidx/compose/runtime/DynamicProvidableCompositionLocal;
.super Landroidx/compose/runtime/ProvidableCompositionLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/ProvidableCompositionLocal<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompositionLocal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositionLocal.kt\nandroidx/compose/runtime/DynamicProvidableCompositionLocal\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,255:1\n25#2:256\n1057#3,6:257\n*S KotlinDebug\n*F\n+ 1 CompositionLocal.kt\nandroidx/compose/runtime/DynamicProvidableCompositionLocal\n*L\n126#1:256\n126#1:257,6\n*E\n"
.end annotation


# instance fields
.field private final policy:Landroidx/compose/runtime/SnapshotMutationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Le8/a;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/SnapshotMutationPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;",
            "Le8/a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "policy"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "defaultFactory"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Le8/a;)V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 16
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 1
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    .line 3
    const p3, -0x5022614

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    const p3, -0x1d58f75c

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-ne p3, v0, :cond_0

    .line 25
    .line 26
    iget-object p3, p0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 37
    .line 38
    check-cast p3, Landroidx/compose/runtime/MutableState;

    .line 39
    .line 40
    .line 41
    invoke-interface {p3, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    return-object p3
.end method
