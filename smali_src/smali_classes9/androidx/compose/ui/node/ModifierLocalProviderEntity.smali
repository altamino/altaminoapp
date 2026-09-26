.class public final Landroidx/compose/ui/node/ModifierLocalProviderEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierLocalProviderEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierLocalProviderEntity.kt\nandroidx/compose/ui/node/ModifierLocalProviderEntity\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,118:1\n1182#2:119\n1161#2,2:120\n460#3,11:122\n460#3,11:133\n460#3,11:144\n460#3,11:155\n460#3,11:166\n*S KotlinDebug\n*F\n+ 1 ModifierLocalProviderEntity.kt\nandroidx/compose/ui/node/ModifierLocalProviderEntity\n*L\n50#1:119\n50#1:120,2\n58#1:122,11\n69#1:133,11\n74#1:144,11\n89#1:155,11\n91#1:166,11\n*E\n"
.end annotation


# instance fields
.field private final consumers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAttached:Z

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/modifier/ModifierLocalProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 20
    .line 21
    const/16 p2, 0x10

    .line 22
    .line 23
    new-array p2, p2, [Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    return-void
.end method

.method private final j(Landroidx/compose/ui/modifier/ModifierLocal;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    move v3, v1

    .line 31
    .line 32
    :cond_1
    aget-object v4, p2, v3

    .line 33
    .line 34
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->g(Landroidx/compose/ui/modifier/ModifierLocal;)V

    .line 38
    add-int/2addr v3, v2

    .line 39
    .line 40
    if-lt v3, v0, :cond_1

    .line 41
    .line 42
    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p1, v2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->j(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 48
    .line 49
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p2, 0x0

    .line 52
    .line 53
    :goto_0
    if-nez p2, :cond_5

    .line 54
    .line 55
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 63
    move-result v0

    .line 64
    .line 65
    if-lez v0, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    :cond_4
    aget-object v3, p2, v1

    .line 72
    .line 73
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->n0()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, p1, v2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->j(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 81
    add-int/2addr v1, v2

    .line 82
    .line 83
    if-lt v1, v0, :cond_4

    .line 84
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->j(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-lez v3, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    :cond_0
    aget-object v4, v1, v2

    .line 28
    .line 29
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->b()V

    .line 33
    add-int/2addr v2, v0

    .line 34
    .line 35
    if-lt v2, v3, :cond_0

    .line 36
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p0}, Landroidx/compose/ui/node/Owner;->b(Le8/a;)V

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-lez v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    :cond_1
    aget-object v4, v1, v3

    .line 30
    .line 31
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->c()V

    .line 35
    add-int/2addr v3, v0

    .line 36
    .line 37
    if-lt v3, v2, :cond_1

    .line 38
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-lez v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    move v3, v0

    .line 17
    .line 18
    :cond_0
    aget-object v4, v1, v3

    .line 19
    .line 20
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->d()V

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    if-lt v3, v2, :cond_0

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1, v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->j(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 37
    return-void
.end method

.method public final d(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalProvider;
    .locals 1
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "local"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->d(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->o0()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->d(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final e()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final f()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/modifier/ModifierLocalProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    return-object v0
.end method

.method public final h()Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->k()V

    .line 4
    .line 5
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 6
    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->j(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public final l(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/ModifierLocalProviderEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    return-void
.end method

.method public final m(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/ModifierLocalProviderEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    return-void
.end method
